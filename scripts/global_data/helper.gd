extends Node

func get_time_from_stamp(time_in_seconds: int):
	var hours = 0
	var minutes = 0
	var seconds = 0
	var remaining_time
	
	hours = time_in_seconds / 3600
	remaining_time = time_in_seconds - (hours * 3600)
	
	minutes = remaining_time / 60
	remaining_time = remaining_time - (minutes * 60)
	
	seconds = remaining_time
	
	if hours != 0:
		return str(hours) + ':%02d:%02d' % [minutes, seconds]
	elif minutes != 0:
		return '%02d:%02d' % [minutes, seconds]
	elif seconds != 0:
		return '%02d' % [seconds]
	

func change_border_color(node, color_key):
	var temp_stylebox_normal = node.get_theme().get_stylebox('normal', 'Button').duplicate()
	var temp_stylebox_hover = node.get_theme().get_stylebox('hover', 'Button').duplicate()
	var temp_stylebox_pressed = node.get_theme().get_stylebox('pressed', 'Button').duplicate()
	
	var color = Global_Colors.colors[color_key]

	temp_stylebox_normal.border_color = color
	temp_stylebox_hover.border_color = color
	temp_stylebox_pressed.border_color = color
	
	node.add_stylebox_override('normal',temp_stylebox_normal)
	node.add_stylebox_override('hover',temp_stylebox_hover)
	node.add_stylebox_override('pressed',temp_stylebox_pressed)


func change_background_color(node, color_key):
	var temp_stylebox_normal = node.get_theme().get_stylebox('normal', 'Button').duplicate()
	var temp_stylebox_hover = node.get_theme().get_stylebox('hover', 'Button').duplicate()
	var temp_stylebox_pressed = node.get_theme().get_stylebox('pressed', 'Button').duplicate()
	
	var color = Global_Colors.colors[color_key]

	temp_stylebox_normal.bg_color = color
	temp_stylebox_hover.bg_color = color
	temp_stylebox_pressed.bg_color = color
	
	node.add_stylebox_override('normal',temp_stylebox_normal)
	node.add_stylebox_override('hover',temp_stylebox_hover)
	node.add_stylebox_override('pressed',temp_stylebox_pressed)
