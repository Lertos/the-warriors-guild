extends Popup

onready var parent = get_node('container/parent_vbox/vbox')

var current_type = 'item'
var number_regex = RegEx.new()
	

func _ready():
	number_regex.compile("\\d")
	
	clear_item_info(current_type)
	
	#TODO - Load from item global config
	var type_dropdown = get_node('container/parent_vbox/vbox/line1/type/type')
	
	type_dropdown.add_item('item', 0)
	type_dropdown.add_item('food', 1)
	type_dropdown.add_item('weapon', 2)
	type_dropdown.add_item('armor', 3)
	type_dropdown.add_item('consumable', 4)
	type_dropdown.add_item('jewelry', 5)
	type_dropdown.add_item('mount', 6)
	
	#TODO - Load from rarity global config
	var rarity_dropdown = get_node('container/parent_vbox/vbox/line2/rarity/rarity')
	
	rarity_dropdown.add_item('common', 0)
	rarity_dropdown.add_item('uncommon', 1)
	rarity_dropdown.add_item('rare', 2)
	rarity_dropdown.add_item('legendary', 3)
	rarity_dropdown.add_item('mythic', 4)
	
	#TODO - Load from ability global config
	var ability_list = get_node('container/parent_vbox/vbox/weapon/vbox/abilities/abilities')
	
	ability_list.add_item('placeholder1')
	ability_list.add_item('placeholder2')
	ability_list.add_item('placeholder3')
	ability_list.add_item('placeholder4')
	ability_list.add_item('placeholder5')
	ability_list.add_item('placeholder6')
	ability_list.add_item('placeholder7')
	ability_list.add_item('placeholder8')
	ability_list.add_item('placeholder9')
	ability_list.add_item('placeholder10')
	
	ability_list.sort_items_by_text()
	
	var potion_types = get_node('container/parent_vbox/vbox/consumable/vbox/type/type')
	
	potion_types.add_item('Lasts X Fights')
	potion_types.add_item('Restore Health')
	potion_types.add_item('Receive Gold')
	
	var effect_list = get_node('container/parent_vbox/vbox/consumable/vbox/effects/effects')
	
	effect_list.add_item('Effect1 I')
	effect_list.add_item('Effect1 II')
	effect_list.add_item('Effect1 III')
	effect_list.add_item('Effect2 I')
	effect_list.add_item('Effect2 II')
	effect_list.add_item('Effect3 I')
	effect_list.add_item('Effect4 I')
	
	effect_list.sort_items_by_text()


func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed:
			#Save the record
			if event.scancode == KEY_F5:
				print('save')
			#Search for the item
			elif event.scancode == KEY_F6:
				print('search')
			#Delete the current item_id
			elif event.scancode == KEY_F7:
				print('delete')


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
	
	clear_item_info(type)
	
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


func on_save_pressed():
	var type_node = parent.get_node('line1/type/type')
	var type = type_node.get_item_text(type_node.get_selected_id())
	
	var item_id = parent.get_node('line1/id/id').text
	var item_dict = {}

	if item_id in Global_Items.items[type]:
		print('==ERROR: The id you entered already exists')
		return
	
	add_base_fields(item_dict)
	
	if type != 'item':
		add_type_fields(item_dict, type)
	
	if are_fields_incorrect(item_dict):
		return
	
	Global_Items.items[type][item_id] = item_dict
	get_node('/root/root').save_data('items')


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
