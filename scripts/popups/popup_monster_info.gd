extends Node


func load_monster_info(region_name, monster_index):
	var parent_node = get_node('margin/panel')
	var monster_info = Global_Enemies.enemies[region_name][monster_index].duplicate(true)
	
	#Add Header Info
	var header = parent_node.get_node('vbox/header')
	header.get_node('vbox/name').text = monster_info['name']
	header.get_node('vbox/hbox/level').text = str(monster_info['level'])
	
	#Add Stat Info
	var stats = parent_node.get_node('vbox/stats')
	
	var left_panel = stats.get_node('left_panel/values')
	
	left_panel.get_node('atk_stab').text = str(monster_info['stats']['atk_stab'])
	left_panel.get_node('atk_slash').text = str(monster_info['stats']['atk_slash'])
	left_panel.get_node('atk_crush').text = str(monster_info['stats']['atk_crush'])
	
	left_panel.get_node('health').text = str(monster_info['stats']['health'])
	left_panel.get_node('atk_speed').text = str(monster_info['stats']['atk_speed']) + 's'
	left_panel.get_node('dmg_reduc').text = str(monster_info['stats']['dmg_reduc']) + '%'
	
	var right_panel = stats.get_node('right_panel/values')
	
	right_panel.get_node('def_stab').text = str(monster_info['stats']['def_stab'])
	right_panel.get_node('def_slash').text = str(monster_info['stats']['def_slash'])
	right_panel.get_node('def_crush').text = str(monster_info['stats']['def_crush'])
	
	right_panel.get_node('min_hit').text = str(monster_info['stats']['min_hit'])
	right_panel.get_node('max_hit').text = str(monster_info['stats']['max_hit'])
	
	#Abilities
	var abilities = parent_node.get_node('vbox/bottom_panel/abilities/abilities')
	
	abilities.bbcode_text = ''
	
	for ability in monster_info['abilities']:
		var current_ability = monster_info['abilities'][ability]

		abilities.bbcode_text += '([color=yellow]' + str(current_ability['chance']) + '%[/color]) '
		abilities.bbcode_text += '[color=red]' + str(current_ability['name']) + '[/color] '
		abilities.bbcode_text += str(current_ability['description'])
		
		abilities.bbcode_text += '\n\n'
	
	#Add Texture
	var monster_image = parent_node.get_node('vbox/header/monster')
	var animated_tex = AnimatedTexture.new()
	animated_tex.frames = 2
	animated_tex.fps = 2
	animated_tex.set_frame_texture(0, load('res://assets/monsters/' + monster_info['id'] + ' (1).png'))
	animated_tex.set_frame_texture(1, load('res://assets/monsters/' + monster_info['id'] + ' (2).png'))
	
	monster_image.texture = animated_tex


func close_monster_info_popup():
	emit_signal('popup_hide')
