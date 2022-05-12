extends Control


func show_popup(node):
	self.get_node('Popup/container/parent_vbox/placeholder').add_child(node)
	get_node('Popup').popup_centered_minsize()
