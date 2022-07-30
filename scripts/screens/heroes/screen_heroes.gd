extends MarginContainer

var locked_texture = load('res://assets/icons/locked.png')

var hero_timers = {}


func _ready():
	load_screen()


func load_screen():
	load_heroes()
	create_hero_timer()
	connect_section_buttons()
	
	for child in get_node('parent_vbox/vbox/heroes').get_children():
		child.get_node('img').connect('pressed', self, 'select_hero', [int(child.name)])


func select_hero(index: int):
	if index in Global_Player.player['heroes']:
		load_hero_sections(index, Global_Player.player['heroes'][index])
	else:
		open_create_hero_popup(index)


func load_hero_sections(index: int, hero_info):
	var hero_buttons = get_node('parent_vbox/vbox/heroes')
	
	#Remove all coloring from each button to reset the selected button
	for node in hero_buttons.get_children():
		Helper.reset_button_custom_colors(node.get_node('img'))
	
	#Change the border color to show which hero is selected
	Helper.change_border_color(hero_buttons.get_node(str(index) + '/img'), 'selected')
	
	get_node('parent_vbox/margin/stats').load_hero_stats_section(index, hero_info)
	get_node('parent_vbox/margin/talents').load_hero_talents_section(index, hero_info)
	
	switch_sections('stats')


func connect_section_buttons():
	for node in get_node('parent_vbox/buttons').get_children():
		node.connect('pressed', self, 'switch_sections', [node.name])
	

func switch_sections(key: String):
	var section_buttons = get_node('parent_vbox/buttons')
	
	get_node('parent_vbox/header').text = Helper.get_header_text(key)
	
	#Remove all coloring from each button to reset the selected button
	for node in section_buttons.get_children():
		Helper.reset_button_custom_colors(node)
	
	#Change the border color to show which section is selected
	Helper.change_border_color(section_buttons.get_node(key), 'selected')
	
	#Reset scrollbar to initial spot 
	get_node('parent_vbox/margin/' + key).scroll_vertical = 0
	
	for node in get_node('parent_vbox/margin').get_children():
		if node.name == key:
			node.visible = true
		else:
			node.visible = false


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
	var hero_icon = Helper.get_avatar_texture(hero_info['avatar_index'])
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
