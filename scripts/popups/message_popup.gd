extends AcceptDialog

const SIDE_MARGIN_WIDTH = 32

func _ready():
	self.rect_min_size.x = get_viewport().size.x - SIDE_MARGIN_WIDTH


func set_text(text):
	self.dialog_text = text
