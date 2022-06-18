extends AcceptDialog

const SIDE_MARGIN_WIDTH = 32

func _ready():
	self.rect_min_size.x = get_viewport().size.x - SIDE_MARGIN_WIDTH
	
	#Expand and fill the button
	self.get_ok().set_h_size_flags(3)
	
	#Center the text
	self.get_child(1).align = HALIGN_CENTER


func set_text(text):
	self.dialog_text = text
