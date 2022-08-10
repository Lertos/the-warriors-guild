extends Node

onready var parent_node = get_node('margin/panel/vbox')
onready var section_buttons = parent_node.get_node('buttons/hbox')


func load_monster_info(region_name: String, monster_index: int, selected_hero_index: int):
	var monster_info = Global_Enemies.enemies[region_name][monster_index].duplicate(true)
	var hero_info = Global_Player.player['heroes'][selected_hero_index]
	
	load_all_sections(hero_info, monster_info)
	
	#Assign the hero and monster info to the attack button
	section_buttons.get_node('attack').disconnect('pressed', self, 'start_fight')
	section_buttons.get_node('attack').connect('pressed', self, 'start_fight', [hero_info, monster_info])
	
	#Assign the monster info to the stats and drops buttons
	section_buttons.get_node('stats').disconnect('pressed', self, 'switch_sections')
	section_buttons.get_node('stats').connect('pressed', self, 'switch_sections', ['stats'])
	
	section_buttons.get_node('drops').disconnect('pressed', self, 'switch_sections')
	section_buttons.get_node('drops').connect('pressed', self, 'switch_sections', ['drops'])


func load_all_sections(hero_info: Dictionary, monster_info: Dictionary):
	clear_section_button_borders()
	hide_all_sections()
	
	update_hero_base_info(hero_info)
	update_enemy_base_info(monster_info)
	
	#Stats section
	var hero_total_stats = Helper.get_hero_total_stats(hero_info)
	var hero_main_stat = Helper.get_hero_main_stat(hero_info)
	
	parent_node.get_node('stats_section/stat_module_player').build(hero_total_stats, hero_main_stat)
	parent_node.get_node('stats_section/stat_module_enemy').build(monster_info['stats'], monster_info['main_stat'])
	
	update_enemy_drops_section(hero_info, monster_info)


func clear_section_button_borders():
	for node in section_buttons.get_children():
		Helper.reset_button_custom_colors(node)


func switch_sections(key: String):
	clear_section_button_borders()
	hide_all_sections()

	parent_node.get_node('header/label').text = 'MONSTER ' + str(key.to_upper())
	parent_node.get_node('header').visible = true
	
	#Change the border color to show which section is selected
	Helper.change_border_color(section_buttons.get_node(key), 'selected')
	
	for node in parent_node.get_children():
		if key + '_section' == node.name:
			parent_node.get_node(key + '_section').visible = true


func hide_all_sections():
	parent_node.get_node('header/label').text = ''
	parent_node.get_node('header').visible = false
	
	for node in parent_node.get_children():
		if '_section' in node.name:
			node.visible = false


func update_hero_base_info(hero_info):
	var hero_node = parent_node.get_node('base_info/left_panel')
	
	hero_node.get_node('hero/img').icon = Helper.get_avatar_texture(hero_info['avatar_index'])
	hero_node.get_node('hero/name').text = hero_info['name']
	hero_node.get_node('hero/hbox/current_health').text = str(hero_info['current_health'])


func update_enemy_base_info(monster_info):
	var enemy_node = parent_node.get_node('base_info/right_panel')
	
	enemy_node.get_node('enemy/img').icon = get_monster_animated_texture(monster_info)
	enemy_node.get_node('enemy/name').text = monster_info['name']
	enemy_node.get_node('enemy/hbox/current_health').text = str(monster_info['stats']['health'])
	
	parent_node.get_node('info/xp_given/xp_given').text = str(monster_info['xp_given'])
	parent_node.get_node('info/travel_time/travel_time').text = str(monster_info['travel_time'])
	parent_node.get_node('info/food_cost/food_cost').text = str(monster_info['food_cost'])


func update_enemy_drops_section(hero_info, monster_info):
	pass


func get_monster_animated_texture(monster_info) -> AnimatedTexture:
	var animated_tex = AnimatedTexture.new()
	
	animated_tex.frames = 2
	animated_tex.fps = 2
	animated_tex.set_frame_texture(0, load('res://assets/monsters/' + monster_info['id'] + ' (1).png'))
	animated_tex.set_frame_texture(1, load('res://assets/monsters/' + monster_info['id'] + ' (2).png'))
	
	return animated_tex


func close_monster_attack_popup():
	emit_signal('popup_hide')
	

#TODO: This will instead be "set hero on adventure" rather than an instant fight - move this logic to hero screen
#	after testing and then when a hero is "DONE", they will click the hero button and then the attack will happen
func start_fight(hero_info, monster_info):
	if hero_info['current_health'] <= 0:
		get_node('/root/root').show_message_popup('That heroes health is too low to fight')
		return
	
	get_node('/root/root/combat_manager').start_combat(hero_info, monster_info)
