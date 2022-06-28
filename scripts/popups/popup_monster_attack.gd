extends Node

onready var parent_node = get_node('margin/panel/vbox')


func load_monster_info(monster_info):
	var hero_list = get_hero_list()
	var hero_list_length = len(hero_list)
	
	populate_hero_list(hero_list)
	
	#Populate the hero panel
	if hero_list_length > 0:
		var first_hero_index = get_first_hero_in_line(hero_list)
		change_current_hero(first_hero_index)
	
	#Populate the monster panel
	change_current_enemy(monster_info)


func get_hero_list() -> Dictionary:
	var filtered_heroes = {}
	var hero_list = Global_Player.player['heroes']
	
	for key in hero_list:
		if hero_list[key]['current_activity']['event_key'] == '':
			filtered_heroes[key] = {}
			filtered_heroes[key] = hero_list[key]

	return filtered_heroes


func populate_hero_list(hero_list: Dictionary):
	var hero_list_node = parent_node.get_node('heroes')
	
	if len(hero_list) == 0:
		hero_list_node.get_node('no_heroes_msg').visible = true
	else:
		for key in hero_list:
			print(key)
			print(hero_list)
			print(hero_list[0])
			update_hero_node(hero_list_node.get_node(str(key)), hero_list[key])


func change_current_hero(index: String):
	var hero_info = Global_Player.player['heroes'][int(index)]
	var hero_node = parent_node.get_node('stats/left_panel')
	
	update_hero_node(hero_node.get_node('hero'), hero_info)
	
	#TODO: Replace with stat grab from helper script with for loop on returned dict for all stats
	hero_node.get_node('atk_stab').text = '1'
	hero_node.get_node('atk_slash').text = '2'
	hero_node.get_node('atk_crush').text = '3'
	

func get_first_hero_in_line(hero_list) -> String:
	var hero_name = ''
	
	for hero in parent_node.get_node('heroes').get_children():
		if hero.name in hero_list:
			hero_name = hero.name
	
	return hero_name


func update_hero_node(node, hero_info):
	node.get_node('img').icon = load('res://assets/avatars/avatar (' + str(hero_info['avatar_index']) + ').png')
	node.get_node('name').text = hero_info['name']
	node.get_node('hbox/level').text = str(hero_info['level'])
	
	#TODO: Add signal for when pressed to run a func to update hero info
	if node.name != 'hero':
		node.get_node('img').connect('pressed', self, 'change_current_hero', [str(node.name)])
		node.visible = true


func change_current_enemy(monster_info):
	var enemy_node = parent_node.get_node('stats/right_panel')
	
	enemy_node.get_node('enemy/img').icon = get_monster_animated_texture(monster_info)
	enemy_node.get_node('enemy/name').text = monster_info['name']
	enemy_node.get_node('enemy/hbox/level').text = str(monster_info['level'])
	
	#TODO: Replace with stat grab from helper script with for loop on returned dict for all stats
	enemy_node.get_node('atk_stab').text = '1'
	enemy_node.get_node('atk_slash').text = '2'
	enemy_node.get_node('atk_crush').text = '3'
	

func get_monster_animated_texture(monster_info) -> AnimatedTexture:
	var animated_tex = AnimatedTexture.new()
	
	animated_tex.frames = 2
	animated_tex.fps = 2
	animated_tex.set_frame_texture(0, load('res://assets/monsters/' + monster_info['id'] + ' (1).png'))
	animated_tex.set_frame_texture(1, load('res://assets/monsters/' + monster_info['id'] + ' (2).png'))
	
	return animated_tex


func close_monster_attack_popup():
	emit_signal('popup_hide')