extends Popup

var scene_item_id_record = preload("res://scenes/record_templates/item_id_record.tscn")

onready var parent = get_node('container/parent_vbox/vbox')

const MIN_SEARCH_TEXT_LEN = 3

var current_type = 'item'
var number_regex = RegEx.new()

var types = ['item', 'food', 'weapon', 'armor', 'consumable', 'jewelry', 'mount']


func _ready():
	number_regex.compile("\\d")
	
	clear_item_info(current_type)
	
	fill_type_dropdown()
	fill_rarity_dropdown()
	
	fill_ability_item_list()
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
	parent.get_node('line2/name/name').text = ''
	parent.get_node('line2/rarity/rarity').select(0)
	parent.get_node('description/description').text = ''
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
	
	if index == 0:
		node.get_node('effects').visible = true
		node.get_node('duration').visible = true
		node.get_node('health').visible = false
		node.get_node('gold').visible = false
	elif index == 1:
		node.get_node('effects').visible = false
		node.get_node('duration').visible = false
		node.get_node('health').visible = true
		node.get_node('gold').visible = false
	elif index == 2:
		node.get_node('effects').visible = false
		node.get_node('duration').visible = false
		node.get_node('health').visible = false
		node.get_node('gold').visible = true


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
	parent.get_node('line2/name/name').text = item_dict['name']
	parent.get_node('line4/img_path/img_path').text = item_dict['img_path']
	parent.get_node('description/description').text = item_dict['desc']
	parent.get_node('line3/buy_price/buy_price').text = item_dict['buy_price']
	parent.get_node('line3/sell_price/sell_price').text = item_dict['sell_price']


func load_type_fields(item_dict, type):
	var node = parent.get_node(type + '/vbox')
	
	for key in item_dict:
		if key == 'name' or key == 'img_path' or key == 'desc' or key == 'buy_price' or key == 'sell_price' or key == 'type' or key == '':
			continue
		else:
			node.get_node(key + '/' + key).text = item_dict[key]


func clear_search_list_items():
	var search_list_items = get_node('container/parent_vbox/search_list/vbox/vbox')
	
	for child in search_list_items.get_children():
		search_list_items.remove_child(child)
		child.queue_free()


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
	item_dict['name'] = parent.get_node('line2/name/name').text
	item_dict['img_path'] = parent.get_node('line4/img_path/img_path').text
	item_dict['desc'] = parent.get_node('description/description').text
	item_dict['buy_price'] = parent.get_node('line3/buy_price/buy_price').text
	item_dict['sell_price'] = parent.get_node('line3/sell_price/sell_price').text


func add_type_fields(item_dict, type):
	var node = parent.get_node(type + '/vbox')

	if type == 'weapon':
		item_dict['health'] = node.get_node('health/health').text
		item_dict['atk_speed'] = node.get_node('atk_speed/atk_speed').text
		item_dict['min_hit'] = node.get_node('min_hit/min_hit').text
		item_dict['max_hit'] = node.get_node('max_hit/max_hit').text
		item_dict['dmg_reduc'] = node.get_node('dmg_reduc/dmg_reduc').text
	if type == 'weapon' or type == 'armor' or type == 'jewelry':
		item_dict['stab_atk'] = node.get_node('stab_atk/stab_atk').text
		item_dict['slash_atk'] = node.get_node('slash_atk/slash_atk').text
		item_dict['crush_atk'] = node.get_node('crush_atk/crush_atk').text
	if type == 'armor' or type == 'jewelry' or type == 'mount':
		item_dict['health'] = node.get_node('health/health').text
		item_dict['stab_def'] = node.get_node('stab_def/stab_def').text
		item_dict['slash_def'] = node.get_node('slash_def/slash_def').text
		item_dict['crush_def'] = node.get_node('crush_def/crush_def').text
		item_dict['dmg_reduc'] = node.get_node('dmg_reduc/dmg_reduc').text
	if type == 'mount':
		item_dict['travel_time'] = node.get_node('travel_time/travel_time').text
		item_dict['food_cost'] = node.get_node('food_cost/food_cost').text
		item_dict['gold_bonus'] = node.get_node('gold_bonus/gold_bonus').text
	if type == 'consumable':
		var type_index = node.get_node('type/type').get_selected_id()
		
		if type_index == 0:
			item_dict['duration'] = node.get_node('duration/duration').text
		elif type_index == 1:
			item_dict['health'] = node.get_node('health/health').text
		elif type_index == 2:
			item_dict['gold'] = node.get_node('gold/gold').text
	if type == 'food':
		item_dict['ration_amt'] = node.get_node('ration_amt/ration_amt').text
	
	
func are_fields_incorrect(item_dict):
	for key in item_dict:
		#Check for empty values
		if item_dict[key] == '':
			print('==ERROR: The ' + key + ' field is empty')
			return true
		
		#Check for numbers in pure alpha fields
		if (key == 'name' or key == 'img_path'):
			if number_regex.search(item_dict[key]):
				print('==ERROR: The ' + key + ' field has a number in it')
				return true
		#Check for fields that should be only integers
		else:
			if key != 'desc' and !item_dict[key].is_valid_integer():
				print('==ERROR: The ' + key + ' field is not a valid integer')
				return true
			
	return false


func fill_type_dropdown():
	var type_dropdown = get_node('container/parent_vbox/vbox/line1/type/type')
	
	for i in range(0, len(types)):
		type_dropdown.add_item(types[i], i)


func fill_rarity_dropdown():
	var rarity_dropdown = get_node('container/parent_vbox/vbox/line2/rarity/rarity')
	
	for key in MasterConfig.config['rarities']:
		rarity_dropdown.add_item(key, MasterConfig.config['rarities'][key]['order'])
	

func fill_ability_item_list():
	var item_list = get_node('container/parent_vbox/vbox/weapon/vbox/abilities/abilities')
	var ability_dict = MasterConfig.config['abilities']
	var current_index = 0
	
	for key in ability_dict:
		var ability = ability_dict[key]
		
		for level_key in ability['levels']:
			if level_key == 0:
				item_list.add_item(ability_dict[key]['name'])
			else:
				item_list.add_item(ability_dict[key]['name'] + ' ' + Helper.get_roman_numeral(level_key))
				
			item_list.set_item_metadata(current_index, {'id': key})
			current_index += 1
	
	item_list.sort_items_by_text()


func fill_potion_types_item_list():
	var potion_types = get_node('container/parent_vbox/vbox/consumable/vbox/type/type')
	
	potion_types.add_item('Lasts X Fights')
	potion_types.add_item('Restore Health')
	potion_types.add_item('Receive Gold')


func fill_potion_effect_item_list():
	var effect_list = get_node('container/parent_vbox/vbox/consumable/vbox/effects/effects')
	
	effect_list.add_item('Effect1 I')
	effect_list.add_item('Effect1 II')
	effect_list.add_item('Effect1 III')
	effect_list.add_item('Effect2 I')
	effect_list.add_item('Effect2 II')
	effect_list.add_item('Effect3 I')
	effect_list.add_item('Effect4 I')
	
	effect_list.sort_items_by_text()
