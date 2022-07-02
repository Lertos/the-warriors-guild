extends Node

onready var parent_node = get_node('margin/panel')


func load_monster_info(region_name, monster_index):
	var monster_info = Global_Enemies.enemies[region_name][monster_index].duplicate(true)
	
	add_header_info(monster_info)
	add_stat_info(monster_info)
	add_ability_info(monster_info)
	add_monster_img(monster_info['id'])


func add_header_info(monster_info):
	var header = parent_node.get_node('vbox/header')
	
	header.get_node('vbox/name').text = monster_info['name']
	header.get_node('vbox/hbox/level').text = str(monster_info['level'])


func add_stat_info(monster_info):
	var stats_panel = parent_node.get_node('vbox/stats/stats_panel/values')
	
	for key in monster_info['stats']:
		stats_panel.get_node(key).text = str(monster_info['stats'][key])

	#Add coloring for main stat
	stats_panel.get_node(monster_info['main_stat']).add_color_override("font_color", Global_Colors.colors['stat_highlight'])


func add_ability_info(monster_info):
	var abilities = parent_node.get_node('vbox/bottom_panel/abilities/abilities')
	
	abilities.bbcode_text = ''
	
	for ability in monster_info['abilities']:
		var current_ability = monster_info['abilities'][ability]

		abilities.bbcode_text += '([color=yellow]' + str(current_ability['chance']) + '%[/color]) '
		abilities.bbcode_text += '[color=red]' + str(current_ability['name']) + '[/color] '
		abilities.bbcode_text += str(current_ability['description'])
		
		abilities.bbcode_text += '\n\n'


func add_monster_img(monster_id):
	var monster_image = parent_node.get_node('vbox/header/monster')
	var animated_tex = AnimatedTexture.new()
	
	animated_tex.frames = 2
	animated_tex.fps = 2
	animated_tex.set_frame_texture(0, load('res://assets/monsters/' + monster_id + ' (1).png'))
	animated_tex.set_frame_texture(1, load('res://assets/monsters/' + monster_id + ' (2).png'))
	
	monster_image.texture = animated_tex


func close_monster_info_popup():
	emit_signal('popup_hide')
