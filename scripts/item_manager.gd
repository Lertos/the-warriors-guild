extends Node

const MAX_REROLL_ATTEMPTS = 6

var categories = ['weapon', 'armor', 'jewelry']

var abilities = {}
var modifiers = {}

var rng = RandomNumberGenerator.new()


func _ready():
	rng.randomize()
	
	create_drop_rate_lists()
	
	fill_list_and_get_total(MasterConfig.config['abilities'], abilities)
	fill_list_and_get_total(MasterConfig.config['modifiers'], modifiers)
	
	#DEBUGGING PURPOSES
	debug_output('abilities', 'jewelry', 3, 5)
	debug_output('modifiers', 'jewelry', 3, 5)


func debug_output(type: String, gear_type: String, amount: int, times_to_roll: int):
	var list
	
	for _i in range(0, times_to_roll):
		if type == 'abilities':
			list = roll_for_abilities(gear_type, amount)
		elif type == 'modifiers':
			list = roll_for_modifiers(gear_type, amount)
		
		for index in range(0, list.size()):
			print(get_display_name(list[index]))
	
		print('\n')


func create_drop_rate_lists():
	var drop_rate_lists = [abilities, modifiers]
	
	for list in drop_rate_lists:
		for category in categories:
			list[category] = {}
			
			list[category]['drop_rates'] = []
			list[category]['keys'] = []
			list[category]['levels'] = []
			list[category]['total_drop_weight'] = 0


func fill_list_and_get_total(config_list: Dictionary, local_list: Dictionary):
	for category in categories:
		for key in config_list:
			if config_list[key]['gear_types'].has(category):
				add_item_to_list(local_list[category], config_list[key], key)


func add_item_to_list(local_list: Dictionary, list_item: Dictionary, key: String):
	var drop_weight
	
	if 'levels' in list_item:
		for level in list_item['levels']:
			if !can_get_natural(list_item['levels'][level]):
				continue
			
			drop_weight = list_item['levels'][level]['drop_weight']
			
			append_drop_weight_and_name(local_list, drop_weight, key, level)
	else:
		if !can_get_natural(list_item):
			return
				
		drop_weight = list_item['drop_weight']
		
		append_drop_weight_and_name(local_list, drop_weight, key)


func can_get_natural(dict: Dictionary) -> bool:
	if 'can_get_natural' in dict:
		return dict['can_get_natural']
	return true


func append_drop_weight_and_name(local_list: Dictionary, drop_weight: int, key: String, level := -1):
	local_list['total_drop_weight'] += int(drop_weight)
	
	local_list['drop_rates'].append(local_list['total_drop_weight'])
	local_list['keys'].append(key)
	
	if level != -1:
		local_list['levels'].append(level)
	
	
func roll_for_abilities(gear_type: String, amount: int):
	var list_to_roll_in = abilities[gear_type]
	var ability_list = []
	
	for _i in range(0, amount):
		var ability = roll_the_list(list_to_roll_in, ability_list)
		
		if ability != []:
			ability_list.append(ability)
			
	return ability_list
	

func roll_for_modifiers(gear_type: String, amount: int):
	var list_to_roll_in = modifiers[gear_type]
	var modifier_list = []
	
	for _i in range(0, amount):
		var modifier = roll_the_list(list_to_roll_in, modifier_list)
		
		if modifier != []:
			modifier_list.append(modifier)
			
	return modifier_list


func roll_the_list(list: Dictionary, current_list: Array):
	var drop_rates = list['drop_rates']
	var keys = list['keys']
	var levels = list['levels']
	var total_drop_weight = list['total_drop_weight']
	
	for _roll in range(0, MAX_REROLL_ATTEMPTS):
		var rand_int = rng.randi_range(0, total_drop_weight)
		
		for index in range(0, drop_rates.size()):
			if rand_int <= drop_rates[index]:
				if list_has_key(current_list, keys[index]):
					continue
				
				if levels.size() > 0:
					return [ keys[index], levels[index] ]
				else:
					return [ keys[index], -1 ]


func list_has_key(list, key):
	for index in range(0, list.size()):
		if list[index][0] == key:
			return true
	return false
	
	
func get_display_name(tuple: Array):
	var name = ''
	
	if tuple.size() == 2:
		name += Helper.get_header_text(tuple[0])
		
		var roman_numeral = Helper.get_roman_numeral(tuple[1])
		
		if roman_numeral != '':
			name += ' ' + roman_numeral
			
	return name


func roll_for_item(item_drops: Dictionary, hero_info: Dictionary, times_killed: int) -> Dictionary:
	var items = {}
	var drop_table = create_drop_table_with_weights(item_drops)
	var drop_rates = drop_table['drop_rates']
	var total_drop_weight = drop_table['total_drop_weight']
	
	#print('---DROP TABLE---\n')
	#print(drop_table)
	
	#TODO: Get hero info so you can check talents stats to get extra bonuses for drops etc
	
	for _i in range(0, times_killed):
		var rand_int = rng.randi_range(0, total_drop_weight)
		
		for index in range(0, drop_rates.size()):
			if rand_int <= drop_rates[index]:
				var item_id = drop_table['item_ids'][index]
				
				if item_id in items:
					items[item_id] += int(drop_table['amounts'][index])
				else:
					items[item_id] = int(drop_table['amounts'][index])
					
				break
	
	return items


func create_drop_table_with_weights(item_drops: Dictionary) -> Dictionary:
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


func identify_item(item_id: String) -> Dictionary:
	#Run func to see if player has inv space to receive identified object
	#Figure out rarity first
	#Get the total abilities / chances
	#Get the abilities using above methods
	#Get the modifiers using above methods
	#Save to player inventory
	
	return {}
