extends MarginContainer

var locked_texture = load('res://assets/icons/icon12.png')

var hero_timers = {}
var spent_points = {}


func _ready():
	load_screen()


func load_screen():
	load_heroes()
	create_hero_timer()
	
	for child in get_node('parent_vbox/vbox/heroes').get_children():
		child.get_node('img').connect('pressed', self, 'select_hero', [int(child.name)])


func select_hero(index: int):
	if index in Global_Player.player['heroes']:
		load_hero_sections(index, Global_Player.player['heroes'][index])
	else:
		open_create_hero_popup(index)


func load_hero_sections(index: int, hero_info):
	load_hero_talents_section(index, hero_info)


func open_create_hero_popup(index: int):
	get_node('create_hero_popup').load_page(index)
	get_node('/root/root').show_root_popup(get_node('create_hero_popup'))


func create_hero_timer():
	var timer = Timer.new()
	timer.connect('timeout', self, 'update_hero_timers') 
	add_child(timer)
	timer.start()


func load_heroes():
	var hero_info = Global_Player.player['heroes']
	var heroes_unlocked = Global_Player.player['heroes_unlocked']
	
	for hero_record in get_node('parent_vbox/vbox/heroes').get_children():
		var index = int(hero_record.name)
		
		if index < len(hero_info):
			load_hero_info(hero_record, hero_info[index], index)
			hero_record.get_node('img').text = ''
		else:
			if index < heroes_unlocked:
				hero_record.get_node('img').text = '+'
			else:
				hero_record.get_node('img').icon = locked_texture
				hero_record.get_node('img').disabled = true
				
	if len(hero_info) > 0:
		load_hero_sections(0, hero_info[0])


func load_hero_info(hero_record, hero_info, index):
	var hero_icon = load('res://assets/avatars/avatar (' + str(hero_info['avatar_index']) + ').png')
	var current_status
	
	print(OS.get_unix_time())
	
	var current_time = OS.get_unix_time()
	var time_done = hero_info['current_activity']['time_done']
	
	if time_done == 0:
		current_status = 'IDLE'
	elif time_done < current_time:
		current_status = 'DONE'
	elif time_done >= current_time:
		var time_difference = time_done - current_time
		
		current_status = Helper.get_time_from_stamp(time_difference)
		hero_timers[index] = {}
		hero_timers[index]['time_left'] = time_difference

	hero_record.get_node('img').icon = hero_icon
	hero_record.get_node('status').text = current_status
	

func update_hero_timers():
	var path = get_node('parent_vbox/vbox/heroes')
	
	if len(hero_timers) == 0:
		return
		
	for hero in hero_timers:
		var new_time = hero_timers[hero]['time_left'] - 1

		if new_time <= 0:
			hero_timers.erase(hero)
			path.get_node(str(hero) + '/status').text = 'DONE'
		else:
			hero_timers[hero]['time_left'] = new_time
			path.get_node(str(hero) + '/status').text = Helper.get_time_from_stamp(new_time)
			
			
func load_hero_talents_section(index, hero_info):
	#TODO: Load available talent points based on hero key for available talents
	var amounts_node = get_node('parent_vbox/margin/talents/vbox/hbox/amounts')
	var buttons_node = get_node('parent_vbox/margin/talents/vbox/hbox/buttons')
	var descriptions_node = get_node('parent_vbox/margin/talents/vbox/hbox/descriptions')
	
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
	var available_points = get_node('parent_vbox/margin/talents/vbox/vbox/talent_points/amount')
	var amounts_node = get_node('parent_vbox/margin/talents/vbox/hbox/amounts')
	
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
	#TODO: Loop through each dict key and subtract those points from the amounts labels, then add points back
	spent_points.clear()
	
	
func reset_total_points():
	pass
