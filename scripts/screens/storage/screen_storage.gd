extends MarginContainer

onready var list_node = get_node('parent_vbox/storage/vbox')

var items_per_row = 5


func _ready():
	var buttons = get_node('parent_vbox/types_vbox/types')
	
	buttons.get_node('materials').connect('pressed', self, 'switch_sub_type', ['materials'])
	buttons.get_node('jewelry').connect('pressed', self, 'switch_sub_type', ['jewelry'])
	buttons.get_node('consumables').connect('pressed', self, 'switch_sub_type', ['consumables'])
	buttons.get_node('armor').connect('pressed', self, 'switch_sub_type', ['armor'])
	buttons.get_node('weapons').connect('pressed', self, 'switch_sub_type', ['weapons'])
	
	load_items('materials')


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
