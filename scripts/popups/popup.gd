extends Popup


func close_popup():
	get_node('/root/root/popup_blackout').visible = false
	
	var popup_container = get_node('/root/root/root_popup/container/parent_vbox/placeholder')
	
	for child in popup_container.get_children():
		popup_container.remove_child(child)
		child.queue_free()
		
	self.visible = false
