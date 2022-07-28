extends MarginContainer

var scene_monster_record = preload("res://scenes/record_templates/monster_record.tscn")
var scene_hero_record = preload("res://scenes/record_templates/hero_record.tscn")
var unlocked_bg_color = preload("res://themes/record_box.tres")
var filler_bg_color = preload("res://themes/background_box.tres")
var locked_texture = load('res://assets/icons/locked.png')

onready var record_list_node = get_node('monster_vbox/monsters/vbox')
onready var hero_list_node = get_node('hero_vbox/heroes/vbox')

var selected_hero_index = null


func _ready():
	load_heroes()
	

func load_heroes():
	var hero_list = Global_Player.player['heroes']
	
	#Show the message to players when they have no heroes hired
	if len(hero_list) == 0:
		get_node('hero_vbox/no_heroes_msg').visible = true
	
	#Load each hero regardless of status
	for key in hero_list:
		var inst_hero_record = scene_hero_record.instance()
		
		hero_list_node.add_child(inst_hero_record)
		
		inst_hero_record.name = str(key)
		inst_hero_record.update_hero_info(hero_list[key])
		
		inst_hero_record.get_node('margin/hbox/choose').connect('pressed', self, 'load_map_for_hero', [int(key)])


func load_map_for_hero(hero_index: int):
	var hero_info = Global_Player.player['heroes'][hero_index]

	for region_row in get_node('monster_vbox/region_vbox').get_children():
		for region_button in region_row.get_children():
			if hero_info['regions'][region_button.name] == 0:
				region_button.icon = locked_texture
			else:
				region_button.connect('pressed', self, 'load_monsters', [hero_index, region_button.name])
	
	selected_hero_index = hero_index
	
	switch_views()
	load_monsters(hero_index, 'verdant_valley')


func load_monsters(hero_index: int, region_name: String):
	var unlocked_enemy_count = Global_Player.player['heroes'][hero_index]['regions'][region_name]
	var monster_list = Global_Enemies.enemies[region_name]

	get_node('monster_vbox/header').text = Helper.get_header_text(region_name)
	
	update_selected_region_button(region_name)
	clear_list()
	
	#Reset scrollbar to initial spot 
	get_node('monster_vbox/monsters').scroll_vertical = 0
	
	for index in range(0, len(monster_list)):
		var inst_monster_record = scene_monster_record.instance()
		
		record_list_node.add_child(inst_monster_record)
		
		#Check if player has unlocked the enemy yet
		if index >= unlocked_enemy_count:
			inst_monster_record.get_node('margin/inner_box/hbox/monster').disabled = true
			
			if index == unlocked_enemy_count:
				inst_monster_record.set_meta('previous_monster', monster_list[index-1]['name'])
		
		inst_monster_record.set_meta('region_name', region_name)
		inst_monster_record.set_meta('index', index)
		
		inst_monster_record.set('custom_styles/panel', unlocked_bg_color)
		inst_monster_record.get_node('margin/inner_box').set('custom_styles/panel', unlocked_bg_color)
		
		Helper.change_panel_background_color(inst_monster_record, 'theme_border')
		Helper.change_panel_background_color(inst_monster_record.get_node('margin/inner_box'), region_name)

		if index == len(monster_list) - 1:
			update_monster_record(region_name, index, inst_monster_record.name, true)
		else:
			update_monster_record(region_name, index, inst_monster_record.name, false)


func switch_views():
	if get_node('monster_vbox').visible:
		get_node('monster_vbox').visible = false
		get_node('hero_vbox').visible = true
	else:
		get_node('monster_vbox').visible = true
		get_node('hero_vbox').visible = false


func update_selected_region_button(region_name):
	for region_hbox in get_node('monster_vbox/region_vbox').get_children():
		for region_button in region_hbox.get_children():
			if region_button.name == region_name:
				Helper.change_border_color(region_button, 'selected')
			else:
				Helper.reset_button_custom_colors(region_button)


func update_monster_record(region_name, monster_index, monster_node_name, is_boss: bool):
	var path = record_list_node.get_node(monster_node_name)
	var parent_node = path.get_node('margin/inner_box/hbox/vbox')
	var monster_info = Global_Enemies.enemies[region_name][monster_index]
	
	var monster_button = parent_node.get_parent().get_node('monster')

	monster_button.connect('pressed', self, 'open_monster_attack_popup', [region_name, monster_index])

	if monster_button.disabled == false:
		monster_button.icon = create_animated_texture(monster_info['id'], 'unlocked')
		
		if is_boss:
			parent_node.get_node('hbox/boss').visible = true

		parent_node.get_node('hbox/name').text = monster_info['name']
		parent_node.get_node('info/hbox/health/health').text = str(monster_info['stats']['health'])
		parent_node.get_node('info/hbox/travel_time/travel_time').text = str(monster_info['travel_time'])
		parent_node.get_node('info/hbox/food_cost/food_cost').text = str(monster_info['food_cost'])
	else:
		monster_button.icon = create_animated_texture(monster_info['id'], 'locked')
		
		parent_node.get_node('hbox/name').visible = false
		parent_node.get_node('info/hbox/health').visible = false
		parent_node.get_node('info/hbox/travel_time').visible = false
		parent_node.get_node('info/hbox/food_cost').visible = false
		
		if path.has_meta('previous_monster'):
			parent_node.get_node('hbox/kill_message').visible = true
			parent_node.get_node('hbox/kill_message').text = 'Unlocked by killing the ' + path.get_meta('previous_monster')


func open_monster_attack_popup(region_name, monster_index):
	get_node('monster_attack_popup').load_monster_info(region_name, monster_index, selected_hero_index)
	get_node('/root/root').show_root_popup(get_node('monster_attack_popup'))


func create_animated_texture(monster_id, is_locked: String):
	var animated_tex = AnimatedTexture.new()
	
	animated_tex.frames = 2
	animated_tex.fps = 2
	
	var frame1 = load('res://assets/monsters/' + monster_id + ' (1).png')
	var frame2 = load('res://assets/monsters/' + monster_id + ' (2).png')

	if is_locked == 'locked':
		animated_tex.set_frame_texture(0, Helper.get_blackened_image(frame1))
		animated_tex.set_frame_texture(1, Helper.get_blackened_image(frame2))
	elif is_locked == 'unlocked':
		animated_tex.set_frame_texture(0, frame1)
		animated_tex.set_frame_texture(1, frame2)
	
	return animated_tex
	

func clear_list():
	for child in record_list_node.get_children():
		record_list_node.remove_child(child)
		child.queue_free()
