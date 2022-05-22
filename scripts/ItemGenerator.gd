extends Popup

var current_type = 'item'


func _ready():
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
			elif event.scancode == KEY_TAB:
				print('tab')


#TODO
func clear_info():
	#Basically get parent node. loop thru, check type of each and if lineedit then set text to blank
	#if optionbutton leave alone except if name is rarity set to common
	#if lineedfit and name is buy_price or sell_price, set to -1
	get_node('/root/root/PopupBlackout').visible = false
	
	var popup_container = get_node('/root/root/Popup/container/parent_vbox/placeholder')
	
	for child in popup_container.get_children():
		popup_container.remove_child(child)
		child.queue_free()
		
	self.visible = false


func on_type_selected(index):
	var parent = get_node('container/parent_vbox/vbox')
	var type = get_node('container/parent_vbox/vbox/line1/type/type').get_item_text(index)
	
	if current_type != 'item':
		parent.get_node(current_type).visible = false
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


func _on_description_text_changed():
	pass # Replace with function body.
