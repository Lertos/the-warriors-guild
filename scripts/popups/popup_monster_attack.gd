extends Node

onready var parent_node = get_node('margin/panel/vbox')


func load_monster_info(region_name: String, monster_index: int, selected_hero_index: int):
	var monster_info = Global_Enemies.enemies[region_name][monster_index].duplicate(true)
	var hero_info = Global_Player.player['heroes'][selected_hero_index]
	
	update_hero_info(hero_info)
	update_enemy_info(monster_info)
	
	#Assign the hero and monster info to the attack button
	parent_node.get_node('buttons/hbox/attack').disconnect('pressed', self, 'start_fight')
	parent_node.get_node('buttons/hbox/attack').connect('pressed', self, 'start_fight', [hero_info, monster_info])


func update_hero_info(hero_info):
	var hero_node = parent_node.get_node('stats/left_panel')
	var hero_total_stats = Helper.get_hero_total_stats(hero_info)
	var hero_main_stat = Helper.get_hero_main_stat(hero_info)
	
	hero_node.get_node('hero/img').icon = load('res://assets/avatars/avatar (' + str(hero_info['avatar_index']) + ').png')
	hero_node.get_node('hero/name').text = hero_info['name']
	hero_node.get_node('hero/hbox/current_health').text = str(hero_info['current_health'])
	
	for stat_key in hero_total_stats:
		hero_node.get_node(stat_key).text = str(hero_total_stats[stat_key])
	
	hero_node.get_node(hero_main_stat).add_color_override('font_color', Global_Colors.colors['stat_highlight'])


func update_enemy_info(monster_info):
	var enemy_node = parent_node.get_node('stats/right_panel')
	
	enemy_node.get_node('enemy/img').icon = get_monster_animated_texture(monster_info)
	enemy_node.get_node('enemy/name').text = monster_info['name']
	enemy_node.get_node('enemy/hbox/current_health').text = str(monster_info['stats']['health'])
	
	parent_node.get_node('info/xp_given/xp_given').text = str(monster_info['xp_given'])
	parent_node.get_node('info/travel_time/travel_time').text = str(monster_info['travel_time'])
	parent_node.get_node('info/food_cost/food_cost').text = str(monster_info['food_cost'])
	
	for stat_key in monster_info['stats']:
		enemy_node.get_node(stat_key).text = str(monster_info['stats'][stat_key])
	
	enemy_node.get_node(monster_info['main_stat']).add_color_override('font_color', Global_Colors.colors['stat_highlight'])
	

func get_monster_animated_texture(monster_info) -> AnimatedTexture:
	var animated_tex = AnimatedTexture.new()
	
	animated_tex.frames = 2
	animated_tex.fps = 2
	animated_tex.set_frame_texture(0, load('res://assets/monsters/' + monster_info['id'] + ' (1).png'))
	animated_tex.set_frame_texture(1, load('res://assets/monsters/' + monster_info['id'] + ' (2).png'))
	
	return animated_tex


#TODO: This will instead be "set hero on adventure" rather than an instant fight - move this logic to hero screen
#	after testing and then when a hero is "DONE", they will click the hero button and then the attack will happen
func start_fight(hero_info, monster_info):
	if hero_info['current_health'] <= 0:
		get_node('/root/root').show_message_popup('That heroes health is too low to fight')
		return
	
	get_node('/root/root/combat_manager').start_combat(hero_info, monster_info)


func close_monster_attack_popup():
	emit_signal('popup_hide')
