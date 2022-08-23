extends MarginContainer

var locked_texture = load('res://assets/icons/locked.png')

onready var tab_buttons = get_node('parent_vbox/margin')

var hero_timers = {}


func _ready():
	initial_setup()


func initial_setup():
	load_screen()
	
	if len(Global_Player.player['heroes']) > 0:
		for index in range(tab_buttons.get_tab_count()):
			tab_buttons.set_tab_title(index, Helper.get_header_text(tab_buttons.get_tab_title(index)))
			
			tab_buttons.visible = true
			get_node('parent_vbox/no_heroes_msg').visible = false
	#If there are no heroes, hide the sections and let them know they need to hire a hero
	else:
		tab_buttons.visible = false
		get_node('parent_vbox/no_heroes_msg').visible = true


func load_screen():
	load_heroes()
	create_hero_timer()
	connect_section_buttons()
	
	for child in get_node('parent_vbox/vbox/heroes').get_children():
		child.connect('pressed', self, 'select_hero', [int(child.name)])


func select_hero(index: int):
	if index in Global_Player.player['heroes']:
		load_hero_sections(index, Global_Player.player['heroes'][index])
	else:
		open_create_hero_popup(index)


func load_hero_sections(index: int, hero_info):
	var hero_buttons = get_node('parent_vbox/vbox/heroes')
	
	#Remove all coloring from each button to reset the selected button
	for node in hero_buttons.get_children():
		Helper.reset_button_custom_colors(node)
	
	#Change the border color to show which hero is selected
	Helper.change_border_color(hero_buttons.get_node(str(index)), 'selected')
	
	get_node('parent_vbox/margin/stats/stats').load_hero_stats_section(hero_info)
	get_node('parent_vbox/margin/gear/gear').load_hero_gear_section()
	
	switch_sections(0)


func connect_section_buttons():
	for _index in range(tab_buttons.get_tab_count()):
		if !(tab_buttons.is_connected('tab_changed', self, 'switch_sections')):
			tab_buttons.connect('tab_changed', self, 'switch_sections')
	

func switch_sections(tab_index: int):
	var key = tab_buttons.get_tab_title(tab_index).to_lower()

	tab_buttons.current_tab = tab_index

	#Reset scrollbar to initial spot 
	get_node('parent_vbox/margin/' + key + '/' + key).scroll_vertical = 0


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
			hero_record.text = ''
		else:
			if index < heroes_unlocked:
				hero_record.text = '+'
			else:
				hero_record.icon = locked_texture
				hero_record.disabled = true
				
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

	hero_record.icon = hero_icon
	#hero_record.get_node('status').text = current_status
	

func update_hero_timers():
	var path = get_node('parent_vbox/vbox/heroes')
	
	if len(hero_timers) == 0:
		return
		
	for hero in hero_timers:
		var new_time = hero_timers[hero]['time_left'] - 1

		if new_time <= 0:
			hero_timers.erase(hero)
			#path.get_node(str(hero) + '/status').text = 'DONE'
		else:
			hero_timers[hero]['time_left'] = new_time
			#path.get_node(str(hero) + '/status').text = Helper.get_time_from_stamp(new_time)
