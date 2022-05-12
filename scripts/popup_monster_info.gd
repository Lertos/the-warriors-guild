extends Node


func _ready():
	var monster = self.get_meta('monster')
	var parent_node = get_node('vbox/header')
	
	parent_node.get_node('vbox/name').text = monster['name']
	parent_node.get_node('vbox/hbox/level').text = str(monster['level'])
	
	var animated_tex = AnimatedTexture.new()
	animated_tex.frames = 2
	animated_tex.fps = 2
	animated_tex.set_frame_texture(0, load('res://assets/monsters/' + monster['id'] + ' (1).png'))
	animated_tex.set_frame_texture(1, load('res://assets/monsters/' + monster['id'] + ' (2).png'))
	
	parent_node.get_node('monster').texture = animated_tex
