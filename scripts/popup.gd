extends Node

func close_popup():
	get_node('/root/root/PopupBlackout').visible = false
	
	var popup_container = get_node('/root/root/Popup/container/parent_vbox')
	
	for child in popup_container.get_children():
		if child.name != 'bottom':
			popup_container.remove_child(child)
			child.queue_free()
		
	self.visible = false
