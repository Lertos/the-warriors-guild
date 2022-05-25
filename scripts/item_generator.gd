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
	#Basically get parent node. loop thru, check type of each and if lineedit then set text to blank
	#if optionbutton leave alone except if name is rarity set to common
	#if lineedfit and name is buy_price or sell_price, set to -1


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
