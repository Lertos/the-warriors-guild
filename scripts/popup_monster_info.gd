extends Node


func _ready():
	var monster = self.get_meta('monster')
	
	#Add Header Info
	var header = get_node('vbox/header')
	header.get_node('vbox/name').text = monster['name']
	header.get_node('vbox/hbox/level').text = str(monster['level'])
	
	#Add Stat Info
	var stats = get_node('vbox/stats')
	
	var left_panel = stats.get_node('left_panel/values')
	
	left_panel.get_node('atk_stab').text = str(monster['stats']['atk_stab'])
	left_panel.get_node('atk_slash').text = str(monster['stats']['atk_slash'])
	left_panel.get_node('atk_crush').text = str(monster['stats']['atk_crush'])
	
	left_panel.get_node('health').text = str(monster['stats']['health'])
	left_panel.get_node('atk_speed').text = str(monster['stats']['atk_speed']) + 's'
	left_panel.get_node('dmg_reduc').text = str(monster['stats']['dmg_reduc']) + '%'
	
	var right_panel = stats.get_node('right_panel/values')
	
	right_panel.get_node('def_stab').text = str(monster['stats']['def_stab'])
	right_panel.get_node('def_slash').text = str(monster['stats']['def_slash'])
	right_panel.get_node('def_crush').text = str(monster['stats']['def_crush'])
	
	right_panel.get_node('min_hit').text = str(monster['stats']['min_hit'])
	right_panel.get_node('max_hit').text = str(monster['stats']['max_hit'])
	
	#Abilities
	var abilities = get_node('vbox/bottom_panel/abilities/abilities')
	
	for ability in monster['stats']['abilities']:
		var current_ability = monster['stats']['abilities'][ability]

		abilities.bbcode_text += '([color=yellow]' + str(current_ability['chance']) + '%[/color]) '
		abilities.bbcode_text += '[color=red]' + str(current_ability['name']) + '[/color] '
		abilities.bbcode_text += str(current_ability['description'])
		
		abilities.bbcode_text += '\n\n'
	
	#Add Texture
	var monster_image = get_node('vbox/header/monster')
	var animated_tex = AnimatedTexture.new()
	animated_tex.frames = 2
	animated_tex.fps = 2
	animated_tex.set_frame_texture(0, load('res://assets/monsters/' + monster['id'] + ' (1).png'))
	animated_tex.set_frame_texture(1, load('res://assets/monsters/' + monster['id'] + ' (2).png'))
	
	monster_image.texture = animated_tex
