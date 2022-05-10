extends Node

func close_popup():
	get_node('/root/root/PopupBlackout').visible = false
	self.visible = false
