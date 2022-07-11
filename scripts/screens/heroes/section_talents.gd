extends Node

var spent_points = {}


func load_hero_talents_section(index, hero_info):
	#TODO: Load available talent points based on hero key for available talents
	var amounts_node = get_node('vbox/hbox/amounts')
	var buttons_node = get_node('vbox/hbox/buttons')
	var descriptions_node = get_node('vbox/hbox/descriptions')
	
	var descriptions = MasterConfig.config['talent_bonuses']
	
	undo_spent_points()
	reload_all_talent_values(amounts_node, buttons_node, descriptions_node)
	
	for talent in hero_info['talent_bonuses']:
		var current_bonus = hero_info['talent_bonuses'][talent]
		var description = descriptions[talent]
		
		var new_amount = amounts_node.get_node('default').duplicate()
		var new_button = buttons_node.get_node('default').duplicate()
		var new_description = descriptions_node.get_node('default').duplicate()
		
		amounts_node.add_child(new_amount)
		buttons_node.add_child(new_button)
		descriptions_node.add_child(new_description)
		
		new_amount.visible = true
		new_button.visible = true
		new_description.visible = true
		
		if talent.substr(0,1) == 'n':
			new_amount.text = str(current_bonus)
		else:
			new_amount.text = str(current_bonus) + '%'
		
		new_amount.name = talent
		new_button.connect('pressed', self, 'increase_talent', [int(index), talent])
		new_description.text = description


func reload_all_talent_values(amounts, buttons, descriptions):
	for node in [amounts, buttons, descriptions]:
		for child in node.get_children():
			if child.name != 'default':
				node.remove_child(child)
				child.queue_free()


func increase_talent(index: int, talent):
	var available_points = get_node('vbox/vbox/talent_points/amount')
	var amounts_node = get_node('vbox/hbox/amounts')
	
	if !available_points.text.is_valid_integer():
		get_node('/root/root').show_message_popup('The amount for the available points is not an integer')
		return
	if int(available_points.text) <= 0:
		get_node('/root/root').show_message_popup('You do not have enough available points')
		return
		
	available_points.text = str(int(available_points.text) - 1)
	
	for child in amounts_node.get_children():
		if child.name == talent:
			#TODO: Get this value from the talent master config "increase per level"
			child.text = str(int(child.text) + 1)
			
			if !(talent in spent_points):
				spent_points[talent] = 0
				
			spent_points[talent] = spent_points[talent] + 1


func confirm_spent_points():
	pass


func undo_spent_points():
	var amounts_node = get_node('vbox/hbox/amounts')
	var total_spent = 0
	
	for key in spent_points:
		var node = amounts_node.get_node(key)
		var points_to_subtract = int(spent_points[key])
		
		total_spent += points_to_subtract
		
		if node != null:
			node.text = str(int(node.text) - points_to_subtract)

	var available_points = get_node('vbox/vbox/talent_points/amount')
	var current_points = int(available_points.text)
	
	available_points.text = str(current_points + total_spent)
	spent_points.clear()
	
	
func reset_total_points():
	pass
