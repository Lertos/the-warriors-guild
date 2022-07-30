extends MarginContainer

onready var list_node = get_node('parent_vbox/storage/vbox')

var items_per_row = 5


func _ready():
	var buttons = get_node('parent_vbox/types_vbox/types')
	
	buttons.get_node('material').connect('pressed', self, 'switch_sub_type', ['material'])
	buttons.get_node('jewelry').connect('pressed', self, 'switch_sub_type', ['jewelry'])
	buttons.get_node('consumable').connect('pressed', self, 'switch_sub_type', ['consumable'])
	buttons.get_node('gear').connect('pressed', self, 'switch_sub_type', ['gear'])
	buttons.get_node('food').connect('pressed', self, 'switch_sub_type', ['food'])
	
	load_items('material')


func load_items(storage_type):
	get_node('parent_vbox/header').text = Helper.get_header_text(storage_type)
	
	ItemHelper.load_items_into_node(list_node, storage_type, items_per_row)
	add_selected_border(storage_type)


func add_selected_border(storage_type):
	var type_buttons = get_node('parent_vbox/types_vbox/types')
	
	#Remove all coloring from each button to reset the selected button
	for node in type_buttons.get_children():
		Helper.reset_button_custom_colors(node)
	
	#Change the border color to show which section is selected
	Helper.change_border_color(type_buttons.get_node(storage_type), 'selected')

	
func switch_sub_type(type_name):
	#Reset scrollbar to initial spot 
	get_node('parent_vbox/storage').scroll_vertical = 0
	
	load_items(type_name)
