extends Popup

var scene_item_id_record = preload("res://scenes/record_templates/item_id_record.tscn")

onready var parent = get_node('container/parent_vbox/vbox')

const MIN_SEARCH_TEXT_LEN = 3

var current_type = 'item'
var number_regex = RegEx.new()

var types = ['item', 'food', 'weapon', 'armor', 'consumable', 'jewelry', 'companion']
var all_stats = [
	'atk_speed', 'min_hit', 'max_hit', 
	'atk_stab', 'atk_slash', 'atk_crush', 'def_stab', 'def_slash', 'def_crush', 
	'health', 'dmg_reduc', 
	'travel_time', 'food_cost', 'gold_bonus', 
	'ration_amt'
]

onready var weapon_abilities = get_node('container/parent_vbox/vbox/weapon/vbox/abilities/abilities')
onready var armor_abilities = get_node('container/parent_vbox/vbox/armor/vbox/abilities/abilities')
onready var jewelry_abilities = get_node('container/parent_vbox/vbox/jewelry/vbox/abilities/abilities')

onready var effect_list = get_node('container/parent_vbox/vbox/consumable/vbox/effects/effects')


func _ready():
	number_regex.compile("\\d")
	
	clear_item_info(current_type)
	
	fill_type_dropdown()
	
	fill_main_stat_list()
	
	fill_ability_item_list(weapon_abilities, 'weapon')
	fill_ability_item_list(armor_abilities, 'armor')
	fill_ability_item_list(jewelry_abilities, 'jewelry')
	
	fill_potion_types_item_list()
	fill_potion_effect_item_list()


func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed:
			#Save the record
			if event.scancode == KEY_F5:
				if get_node('container/parent_vbox/search_list').visible:
					on_close_pressed()
				else:
					on_save_pressed()
			#Search for the item
			elif event.scancode == KEY_F6:
				on_search_pressed()
			#Delete the current item_id
			elif event.scancode == KEY_F7:
				on_delete_pressed()


func clear_item_info(type: String):
	#Clear shared item info
	parent.get_node('line1/id/id').text = ''
	parent.get_node('line2/line2/name/name').text = ''
	parent.get_node('line2/line2/description/description').text = ''
	parent.get_node('line2/img').icon = null
	parent.get_node('line3/buy_price/buy_price').text = '-1'
	parent.get_node('line3/sell_price/sell_price').text = '-1'
	parent.get_node('line4/img_path/img_path').text = ''
	
	if type != 'item':
		var type_node = parent.get_node(type).get_child(0)
		
		for child in type_node.get_children():
			var child_node = child.get_child(1)
			if child_node is LineEdit:
				child_node.text = ''
			elif child_node is ItemList:
				child_node.unselect_all()
			elif child_node is OptionButton:
				child_node.select(0)


func on_type_selected(index: int):
	var type = get_node('container/parent_vbox/vbox/line1/type/type').get_item_text(index)
	
	if current_type != 'item':
		parent.get_node(current_type).visible = false
	
	clear_item_info(current_type)
	
	if type != 'item':
		parent.get_node(type).visible = true
		
	current_type = type


func on_potion_type_selected(index: int):
	var node = get_node('container/parent_vbox/vbox/consumable/vbox')
	var type_dropdown = node.get_node('type/type')
	
	type_dropdown.select(index)
	
	if index == 0:
		node.get_node('effects').visible = true
		node.get_node('duration').visible = true
		node.get_node('hp_given').visible = false
	elif index == 1:
		node.get_node('effects').visible = false
		node.get_node('duration').visible = false
		node.get_node('hp_given').visible = true


func on_clear_pressed():
	clear_item_info(current_type)


func on_search_bar_text_changed(new_text):
	if len(new_text) > MIN_SEARCH_TEXT_LEN:
		on_search_pressed()
	else:
		on_close_pressed()


func on_search_pressed():
	get_node('container/parent_vbox/vbox').visible = false
	get_node('container/parent_vbox/bottom').visible = false
	get_node('container/parent_vbox/search_list').visible = true
	
	var search_bar = get_node('container/parent_vbox/top/search_bar')
	var searched_text = search_bar.text

	search_bar.grab_focus()
	
	clear_search_list_items()
	create_item_records(searched_text)


func on_show_all_pressed():
	get_node('container/parent_vbox/top/search_bar').text = ''
	
	on_search_pressed()


func on_delete_pressed():
	var item_id = parent.get_node('line1/id/id').text
	
	if item_id != '' and item_id in Global_Items.items:
		Global_Items.items.erase(item_id)
		
		get_node('/root/root').save_data('items')
		clear_item_info(current_type)


func create_item_records(searched_text):
	var node = get_node('container/parent_vbox/search_list/vbox/vbox')
	
	for item_id in Global_Items.items:
		if searched_text in item_id or searched_text == '':
			var inst = scene_item_id_record.instance()
			
			inst.get_node('button').connect('pressed', self, 'load_item_info', [item_id])
			inst.get_node('button').name = item_id
			inst.get_node('id').text = item_id
			node.add_child(inst)


func load_item_info(item_id):
	var item_dict = Global_Items.items[item_id]
	var type = item_dict['type']
	
	on_close_pressed()
	
	var type_node = get_node('container/parent_vbox/vbox/line1/type/type')
	var index = types.find(type)
	type_node.select(index)
	type_node.emit_signal("item_selected", index)
	
	parent.get_node('line1/id/id').text = item_id
	
	load_base_fields(item_dict)
	
	if type != 'item':
		load_type_fields(item_dict, type)


func load_base_fields(item_dict):
	parent.get_node('line2/line2/name/name').text = item_dict['name']
	parent.get_node('line4/img_path/img_path').text = item_dict['img_path']
	parent.get_node('line2/line2/description/description').text = item_dict['desc']
	parent.get_node('line3/buy_price/buy_price').text = item_dict['buy_price']
	parent.get_node('line3/sell_price/sell_price').text = item_dict['sell_price']
	
	load_item_img(item_dict['img_path'])


func load_item_img(img_path: String):
	var path = 'res://assets/' + img_path + '.png'
	
	if ResourceLoader.exists(path):
		parent.get_node('line2/img').icon = load('res://assets/' + img_path + '.png')
	else:
		parent.get_node('line2/img').icon = null


func load_type_fields(item_dict, type):
	var node = parent.get_node(type + '/vbox')
	
	for key in item_dict:
		if key == 'name' or key == 'img_path' or key == 'desc' or key == 'buy_price' or key == 'sell_price' or key == 'type' or key == '':
			continue

		elif key == 'abilities':
			if node.get_node('abilities/abilities') != null:
				var ability_list = node.get_node('abilities/abilities')
				var abilities = item_dict['abilities']
				
				for list_index in range(0, ability_list.get_item_count()):
					var item_meta = ability_list.get_item_metadata(list_index)
					
					if item_meta['id'] in abilities:
						if item_meta['level'] == abilities[item_meta['id']]:
							ability_list.select(list_index, false)

		elif key == 'potion_effects':
			if node.get_node('effects/effects') != null:
				var effect_list = node.get_node('effects/effects')
				var effects = item_dict['potion_effects']
				
				for list_index in range(0, effect_list.get_item_count()):
					var item_meta = effect_list.get_item_metadata(list_index)
					
					if 'hp_given' in effects:
						node.get_node('hp_given/hp_given').text = str(effects['hp_given'])
						
						on_potion_type_selected(1)
					
					elif item_meta['id'] in effects:
						if item_meta['level'] == effects[item_meta['id']]['level']:
							effect_list.select(list_index, false)
							node.get_node('duration/duration').text = str(effects[item_meta['id']]['duration'])
							
							on_potion_type_selected(0)

		else:
			node.get_node(key + '/' + key).text = item_dict[key]


func clear_search_list_items():
	var search_list_items = get_node('container/parent_vbox/search_list/vbox/vbox')
	
	Helper.clear_list(search_list_items)


func on_close_pressed():
	get_node('container/parent_vbox/search_list').visible = false
	get_node('container/parent_vbox/vbox').visible = true
	get_node('container/parent_vbox/bottom').visible = true

	clear_search_list_items()


func on_update_pressed():
	on_save_pressed(true)


func on_save_pressed(update = false):
	var type_node = parent.get_node('line1/type/type')
	var type = type_node.get_item_text(type_node.get_selected_id())
	
	var item_id = parent.get_node('line1/id/id').text
	var item_dict = {}

	if item_id in Global_Items.items and !update:
		print('==ERROR: The id you entered already exists')
		return
	
	add_base_fields(item_dict)
	
	if type != 'item':
		add_type_fields(item_dict, type)
	
	if are_fields_incorrect(item_dict):
		return
	
	item_dict['type'] = type
	
	Global_Items.items[item_id] = item_dict
	
	get_node('/root/root').save_data('items')
	clear_item_info(current_type)


func add_base_fields(item_dict):
	item_dict['name'] = parent.get_node('line2/line2/name/name').text
	item_dict['img_path'] = parent.get_node('line4/img_path/img_path').text
	item_dict['desc'] = parent.get_node('line2/line2/description/description').text
	item_dict['buy_price'] = parent.get_node('line3/buy_price/buy_price').text
	item_dict['sell_price'] = parent.get_node('line3/sell_price/sell_price').text


func add_type_fields(item_dict, type):
	var node = parent.get_node(type + '/vbox')

	for stat_key in all_stats:
		add_field_to_dict(node, item_dict, stat_key)

	add_main_stat_to_dict(node, item_dict)
	add_abilities_to_dict(node, item_dict)
	
	if type == 'consumable':
		add_effects_to_dict(node, item_dict)


func add_field_to_dict(node: Node, item_dict: Dictionary, stat_key: String):
	if node.get_node(stat_key + '/' + stat_key) != null:
		item_dict[stat_key] = node.get_node(stat_key + '/' + stat_key).text


func add_main_stat_to_dict(node: Node, item_dict: Dictionary):
	if node.get_node('main_stat/main_stat') != null:
		var main_stat_index = node.get_node('main_stat/main_stat').get_selected_id()
		var main_stat = node.get_node('main_stat/main_stat').get_item_text(main_stat_index)
		
		item_dict['main_stat'] = main_stat


func add_abilities_to_dict(node: Node, item_dict: Dictionary):
	if node.get_node('abilities/abilities') != null:
		var ability_list = node.get_node('abilities/abilities')
		var abilities = {}
		
		for list_index in ability_list.get_selected_items():
			var item_meta = ability_list.get_item_metadata(list_index)
			
			abilities[item_meta['id']] = int(item_meta['level'])
			
		item_dict['abilities'] = abilities
		

func add_effects_to_dict(node: Node, item_dict: Dictionary):
	var effects = {}
	
	if node.get_node('effects/effects') != null:
		#If the consumable gives potion effects
		if node.get_node('duration').visible:
			var effect_list = node.get_node('effects/effects')
			
			for list_index in effect_list.get_selected_items():
				var item_meta = effect_list.get_item_metadata(list_index)
				var effect_key = item_meta['id']
				
				effects[effect_key] = {}
				effects[effect_key]['level'] = int(item_meta['level'])
				effects[effect_key]['duration'] = int(node.get_node('duration/duration').text)
	
		#If the consumable just heals the hero
		elif node.get_node('hp_given').visible:
			effects['hp_given'] = int(node.get_node('hp_given/hp_given').text)
	
	if effects != {}:
		item_dict['potion_effects'] = effects

	
func are_fields_incorrect(item_dict):
	for key in item_dict:
		#Do not check dictionaries
		if typeof(item_dict[key]) == TYPE_DICTIONARY:
			continue
			
		#Check for empty values
		if item_dict[key] == '':
			print('==ERROR: The ' + key + ' field is empty')
			return true
		
		#Check for numbers in pure alpha fields
		if key == 'name':
			if number_regex.search(item_dict[key]):
				print('==ERROR: The ' + key + ' field has a number in it')
				return true
		#Check for fields that should be floats
		elif key == 'atk_speed' or key == 'dmg_reduc':
			if !item_dict[key].is_valid_float():
				print('==ERROR: The ' + key + ' field is not a valid float')
				return true
		#Check for fields that should be integers
		else:
			if key != 'desc' and key != 'img_path' and key != 'main_stat' and !item_dict[key].is_valid_integer():
				print('==ERROR: The ' + key + ' field is not a valid integer')
				return true
			
	return false


func fill_type_dropdown():
	var type_dropdown = get_node('container/parent_vbox/vbox/line1/type/type')
	
	for i in range(0, len(types)):
		type_dropdown.add_item(types[i], i)


func fill_main_stat_list():
	var main_stat_dropdown = get_node('container/parent_vbox/vbox/weapon/vbox/main_stat/main_stat')
	
	main_stat_dropdown.add_item('atk_stab')
	main_stat_dropdown.add_item('atk_slash')
	main_stat_dropdown.add_item('atk_crush')


func fill_ability_item_list(ability_list, gear_type: String):
	var ability_dict = MasterConfig.config['abilities']
	var current_index = 0
	
	for key in ability_dict:
		var ability = ability_dict[key]
		
		if gear_type in ability['gear_types']:
			for level_key in ability['levels']:
				if level_key == 0:
					ability_list.add_item(ability_dict[key]['name'])
				else:
					ability_list.add_item(ability_dict[key]['name'] + ' ' + Helper.get_roman_numeral(level_key))
					
				ability_list.set_item_metadata(current_index, {'id': key, 'level': level_key})
				current_index += 1
	
	ability_list.sort_items_by_text()


func fill_potion_types_item_list():
	var potion_types = get_node('container/parent_vbox/vbox/consumable/vbox/type/type')
	
	potion_types.add_item('Lasts X Fights')
	potion_types.add_item('Restore Health')


func fill_potion_effect_item_list():
	var effect_dict = MasterConfig.config['potion_effects']
	var current_index = 0
	
	for key in effect_dict:
		var effect = effect_dict[key]
		
		for level_key in effect:
			if level_key == 0:
				effect_list.add_item(Helper.get_header_text(key))
			else:
				effect_list.add_item(Helper.get_header_text(key) + ' ' + Helper.get_roman_numeral(level_key))
				
			effect_list.set_item_metadata(current_index, {'id': key, 'level': level_key})
			current_index += 1
	
	effect_list.sort_items_by_text()


func on_img_path_focus_exited():
	load_item_img(parent.get_node('line4/img_path/img_path').text)
