extends Node

const MAX_REROLL_ATTEMPTS = 6

var categories = ['weapon', 'armor']

var abilities = {}
var modifiers = {}

var rng = RandomNumberGenerator.new()


func _ready():
	rng.randomize()
	
	_create_drop_rate_lists()
	
	_fill_list_and_get_total(MasterConfig.config['abilities'], abilities)
	_fill_list_and_get_total(MasterConfig.config['modifiers'], modifiers)
	
	
func roll_for_abilities(gear_type: String, amount: int) -> Array:
	var list_to_roll_in = abilities[gear_type]
	var ability_list = []
	
	for _i in amount:
		var ability = _roll_the_list(list_to_roll_in, ability_list)
		
		if ability != []:
			ability_list.append(ability)
			
	return ability_list
	

func roll_for_modifier(gear_type: String) -> String:
	var list_to_roll_in = modifiers[gear_type]
	var modifier = _roll_the_list(list_to_roll_in, [])
	
	return modifier[0]


func roll_for_item(item_drops: Dictionary, hero_info: Dictionary, times_killed: int) -> Dictionary:
	var items = {}
	var drop_table = _create_drop_table_with_weights(item_drops)
	var drop_rates = drop_table['drop_rates']
	var total_drop_weight = drop_table['total_drop_weight']

	#TODO: Get hero info so you can check talents stats to get extra bonuses for drops etc
	
	for _i in times_killed:
		var rand_int = rng.randi_range(0, total_drop_weight)
		
		for index in drop_rates.size():
			if rand_int <= drop_rates[index]:
				var item_id = drop_table['item_ids'][index]
				
				if item_id in items:
					items[item_id] += int(drop_table['amounts'][index])
				else:
					items[item_id] = int(drop_table['amounts'][index])
					
				break
	
	return items


func identify_item(item_id: String) -> Dictionary:
	var item_type = Global_Items.items[item_id]['type']
	var item_info = {}
	var rarity_key = _roll_for_item_rarity()
	var rarity = MasterConfig.config['rarities'][rarity_key]
	
	item_info['item_id'] = item_id
	item_info['identified'] = true
	item_info['amount'] = 1
	item_info['rarity'] = rarity_key
	
	#Check if the item category storage is full as identifying always takes a new spot
	if !(has_empty_storage_slot(item_id)):
		return {}
	
	#Add the abilities
	_add_abilities_to_item(item_info, rarity, item_type)
	
	#Add the modifier
	item_info['modifier'] = roll_for_modifier(item_type)
	
	remove_item_from_inventory(item_id, 1)
	add_item_to_inventory(item_id, 1, item_info)
	
	return item_info


#If item_info is filled in, then it's a custom item and should be it's own stack in storage
func add_item_to_inventory(item_id: String, amount: int, item_info: = {}) -> bool:
	var storage = _get_storage_info_of_item(item_id)
	var storage_slots = storage['slots']
	var item_to_add = null
	
	if item_info == {}:
		var index = _get_existing_item_index(storage_slots, item_id)
		
		if index != -1:
			item_to_add = _create_new_item(item_id, amount)
		else:
			storage_slots[index]['amount'] += amount
	else:
		item_to_add = item_info
	
	#Check if the item can even be added - if not return false
	if item_to_add != null:
		if !(has_empty_storage_slot(item_id)):
			return false
	
	storage_slots.append(item_to_add)
	get_node('/root/root').save_data('player')
	
	return true


func remove_item_from_inventory(item_id: String, amount: int, index: = -1):
	var storage = _get_storage_info_of_item(item_id)
	var storage_slots = storage['slots']
	var actual_index = index
	
	if index == -1:
		actual_index = _get_unidentified_item_index(storage_slots, item_id)

	var slot = storage_slots[actual_index]
	
	if slot['item_id'] == item_id:
		var current_amount = int(slot['amount'])
		
		if current_amount == amount:
			storage_slots.remove(actual_index)
		else:
			slot['amount'] = current_amount - amount
	
	get_node('/root/root').save_data('player')


func has_empty_storage_slot(item_id: String) -> bool:
	var storage = _get_storage_info_of_item(item_id)
	var unlocked_slots = int(storage['unlocked'])
	var used_slots = storage['slots'].size()
	
	if used_slots < unlocked_slots:
		return true
			
	return false


#============================
#
# PRIVATE FUNCTIONS
#
#============================


func _create_drop_rate_lists():
	var drop_rate_lists = [abilities, modifiers]
	
	for list in drop_rate_lists:
		for category in categories:
			list[category] = {}
			
			list[category]['drop_rates'] = []
			list[category]['keys'] = []
			list[category]['levels'] = []
			list[category]['total_drop_weight'] = 0


func _fill_list_and_get_total(config_list: Dictionary, local_list: Dictionary):
	for category in categories:
		for key in config_list:
			if config_list[key]['gear_types'].has(category):
				_add_item_to_list(local_list[category], config_list[key], key)


func _add_item_to_list(local_list: Dictionary, list_item: Dictionary, key: String):
	var drop_weight
	
	if 'levels' in list_item:
		for level in list_item['levels']:
			if !_can_get_natural(list_item['levels'][level]):
				continue
			
			drop_weight = list_item['levels'][level]['drop_weight']
			
			_append_drop_weight_and_name(local_list, drop_weight, key, level)
	else:
		if !_can_get_natural(list_item):
			return
				
		drop_weight = list_item['drop_weight']
		
		_append_drop_weight_and_name(local_list, drop_weight, key)


func _can_get_natural(dict: Dictionary) -> bool:
	if 'can_get_natural' in dict:
		return dict['can_get_natural']
	return true


func _append_drop_weight_and_name(local_list: Dictionary, drop_weight: int, key: String, level := -1):
	local_list['total_drop_weight'] += int(drop_weight)
	
	local_list['drop_rates'].append(local_list['total_drop_weight'])
	local_list['keys'].append(key)
	
	if level != -1:
		local_list['levels'].append(level)


func _get_storage_info_of_item(item_id: String) -> Dictionary:
	var category = ItemHelper.get_item_storage_category(item_id)
	var storage_info = Global_Player.player['storage'][category]
	
	return storage_info


#Returns the string key for the rarity, found in the Master Config
func _roll_for_item_rarity() -> String:
	var rarity_key = ''
	var rarities = MasterConfig.config['rarities']
	var total_drop_weight = 0
	
	var rarity_keys = []
	var rarity_weights = []
	
	#Get the total drop weight of all rarities and their chances
	for rarity in rarities:
		total_drop_weight += rarities[rarity]['drop_weight']
		
		rarity_keys.append(rarity)
		rarity_weights.append(total_drop_weight)
	
	var rand_int = rng.randi_range(0, total_drop_weight)
	
	#Roll for the rarity
	for index in rarity_keys.size():
		if rand_int <= rarity_weights[index]:
			return rarity_keys[index]
	
	return rarity_key


func _add_abilities_to_item(item_info: Dictionary, rarity: Dictionary, item_type: String):
	var max_abilities = int(rarity['max_item_abilities'])
	var chance_for_each_ability = int(rarity['chance_of_each_ability'])
	var actual_ability_count = 0
	
	#Get the amount of abilities to generate
	for index in max_abilities:
		var rand_int = rng.randi_range(0, 100)
		
		if rand_int < chance_for_each_ability:
			actual_ability_count += 1
	
	item_info['abilities'] = {}
	
	if actual_ability_count != 0:
		var abilities = roll_for_abilities(item_type, actual_ability_count)
		
		for index in abilities.size():
			var ability_info = abilities[index]
			var key = ability_info[0]
			var level = ability_info[1]
			
			item_info['abilities'][str(key)] = int(level)


func _roll_the_list(list: Dictionary, current_list: Array) -> Array:
	var drop_rates = list['drop_rates']
	var keys = list['keys']
	var levels = list['levels']
	var total_drop_weight = list['total_drop_weight']
	
	for _roll in MAX_REROLL_ATTEMPTS:
		var rand_int = rng.randi_range(0, total_drop_weight)
		
		for index in drop_rates.size():
			if rand_int <= drop_rates[index]:
				if _list_has_key(current_list, keys[index]):
					continue
				
				if levels.size() > 0:
					return [ keys[index], levels[index] ]
				else:
					return [ keys[index], -1 ]
	
	return []


func _list_has_key(list, key):
	for index in list.size():
		if list[index][0] == key:
			return true
	return false


func _create_drop_table_with_weights(item_drops: Dictionary) -> Dictionary:
	var drop_table = {}
	
	drop_table['drop_rates'] = []
	drop_table['item_ids'] = []
	drop_table['amounts'] = []
	drop_table['total_drop_weight'] = 0
	
	for key in item_drops:
		var drop = item_drops[key]
		
		drop_table['total_drop_weight'] += int(drop['weight'])
		
		drop_table['drop_rates'].append(drop_table['total_drop_weight'])
		drop_table['item_ids'].append(drop['item_id'])
		drop_table['amounts'].append(int(drop['amount']))
		
	return drop_table


func _create_new_item(item_id: String, amount: int) -> Dictionary:
	var item_type = Global_Items.items[item_id]['type']
	var item_info = {}
	
	item_info['item_id'] = item_id
	item_info['amount'] = 1
	
	if item_type in ['weapon', 'armor']:
		item_info['identified'] = false
	
	return item_info


func _get_unidentified_item_index(storage_slots: Array, item_id: String) -> int:
	for index in storage_slots.size():
		if storage_slots[index]['item_id'] == item_id:
			if storage_slots[index]['identified'] == false:
				return index
	return -1
	

func _get_existing_item_index(storage_slots: Array, item_id: String) -> int:
	for index in storage_slots.size():
		if storage_slots[index]['item_id'] == item_id:
			return index
	return -1
