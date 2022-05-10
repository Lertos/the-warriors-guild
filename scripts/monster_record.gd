extends Node

func _ready():
	pass

func show_info_popup():
	get_node('/root/root/PopupBlackout').visible = true
	
	#TODO need to create popup from instance and not have the popup already at the root level
	var popup = get_node('/root/root/Popup')
	popup.popup_centered()
