extends Popup

var current_type = 'item'


func _ready():
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


func clear_item_info(type):
	var parent = get_node('container/parent_vbox/vbox')
	
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


func on_type_selected(index):
	var parent = get_node('container/parent_vbox/vbox')
	var type = get_node('container/parent_vbox/vbox/line1/type/type').get_item_text(index)
	
	if current_type != 'item':
		parent.get_node(current_type).visible = false
	
	clear_item_info(current_type)
	parent.get_node(type).visible = true
	current_type = type


func on_potion_type_selected(index):
	var parent = get_node('container/parent_vbox/vbox/consumable/vbox')
	
	if index == 0:
		parent.get_node('effects').visible = true
		parent.get_node('duration').visible = true
		parent.get_node('health').visible = false
		parent.get_node('gold').visible = false
	elif index == 1:
		parent.get_node('effects').visible = false
		parent.get_node('duration').visible = false
		parent.get_node('health').visible = true
		parent.get_node('gold').visible = false
	elif index == 2:
		parent.get_node('effects').visible = false
		parent.get_node('duration').visible = false
		parent.get_node('health').visible = false
		parent.get_node('gold').visible = true


func on_clear_pressed():
	clear_item_info(current_type)


func on_save_pressed():
	var parent = get_node('container/parent_vbox/vbox')
	var type_node = parent.get_node('line1/type/type')
	
	var type = type_node.get_item_text(type_node.get_selected_id())
	
	if default_fields_have_incorrect_values():
		return
		
	if type_fields_have_incorrect_values(type):
		return
	
	print('SAVED ITEM!')
	get_node('/root/root').save_data('items')
	
	
func default_fields_have_incorrect_values():
	var parent = get_node('container/parent_vbox/vbox')
	
	var regex = RegEx.new()
	regex.compile("\\d")
	
	var id = parent.get_node('line1/id/id').text
	var name = parent.get_node('line2/name/name').text
	var img_path = parent.get_node('line4/img_path/img_path').text
	
	if regex.search(id) or regex.search(name) or regex.search(img_path):
		print('==ERROR: The id, name, or img_path field has a number in it')
		return true
	
	var desc = parent.get_node('description/description').text
	var buy_price = parent.get_node('line3/buy_price/buy_price').text
	var sell_price = parent.get_node('line3/sell_price/sell_price').text
	
	if id == '' or name == '' or img_path == '' or desc == '' or buy_price == '' or sell_price == '':
		print('==ERROR: A default field has no value')
		return true

	if !buy_price.is_valid_float() or !sell_price.is_valid_float():
		print('==ERROR: Buy Price or Sell Price has an incorrect value')
		return true

	return false


func type_fields_have_incorrect_values(type):
	pass
