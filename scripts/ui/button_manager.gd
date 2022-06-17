extends HBoxContainer

signal button_switch_screen(button_name)


func home_pressed():
	emit_signal('button_switch_screen', 'home')
