extends TextEdit


func _input(event):
	if event.is_action_pressed("ui_focus_next") and !event.shift and has_focus():
		get_parent().get_parent().get_node('line3/buy_price/buy_price').grab_focus()
		get_tree().set_input_as_handled()
	elif event.is_action_pressed("ui_focus_next") and event.shift and has_focus():
		get_parent().get_parent().get_node('line2/rarity/rarity').grab_focus()
		get_tree().set_input_as_handled()

