extends MarginContainer

var scene_item_record = preload("res://scenes/record_templates/item_record.tscn")
var locked_texture = load('res://assets/icons/locked.png')

var items_per_row = 4


func _ready():
	var buttons = get_node('parent_vbox/types_vbox/types')
	
	buttons.get_node('material').connect('pressed', self, 'switch_sub_type', ['material'])
	buttons.get_node('jewelry').connect('pressed', self, 'switch_sub_type', ['jewelry'])
	buttons.get_node('consumable').connect('pressed', self, 'switch_sub_type', ['consumable'])
	buttons.get_node('gear').connect('pressed', self, 'switch_sub_type', ['gear'])
	buttons.get_node('food').connect('pressed', self, 'switch_sub_type', ['food'])
	
	load_items('material')


func load_items(storage_type):
	clear_item_slots()
	
	var storage_info = Global_Player.player['storage'][storage_type]
	var unlocked_slots = storage_info['unlocked']
	var max_slots = storage_info['max']
	var items = storage_info['slots']
	
	var needed_rows = ceil(float(max_slots) / items_per_row)
	
	var list_node = get_node('parent_vbox/storage/vbox')
	
	#Create the HBOX row
	for row in range(0, needed_rows):
		var hbox = create_hbox()
		list_node.add_child(hbox)
		
		#Create the items inside the HBOX
		for col in range(0, items_per_row):
			var index = (items_per_row * row) + col
			var inst_item_record = scene_item_record.instance()
			inst_item_record.name = str(index)
			
			hbox.add_child(inst_item_record)

			#Create the item slot
			if range(items.size()).has(index):
				var item = items[index]
				inst_item_record.set_meta('item', item)

				update_item_record(inst_item_record, item)
			else:
				#Locked slots
				if (index) >= unlocked_slots:
					Helper.change_button_background_color(inst_item_record.get_node('rarity'), 'locked')
					inst_item_record.get_node('rarity/item').texture = locked_texture

	add_selected_border(storage_type)


func add_selected_border(storage_type):
	var type_buttons = get_node('parent_vbox/types_vbox/types')
	
	#Remove all coloring from each button to reset the selected button
	for node in type_buttons.get_children():
		Helper.reset_button_custom_colors(node)
	
	#Change the border color to show which section is selected
	Helper.change_border_color(type_buttons.get_node(storage_type), 'selected')


func create_hbox():
	var hbox = HBoxContainer.new()
	
	hbox.set_alignment(hbox.ALIGN_CENTER)
	hbox.set('custom_constants/separation', 8)
	
	return hbox


func update_item_record(item_record, item):
	var item_data = Global_Items.items[item['item_id']]
	
	Helper.change_border_color(item_record.get_node('rarity'), item['rarity'])

	item_record.get_node('rarity/amount').text = str(item['amount'])
	item_record.get_node('rarity/item').texture = load('res://assets/' + item_data['img_path'] + '.png')

	
func switch_sub_type(type_name):
	#Reset scrollbar to initial spot 
	get_node('parent_vbox/storage').scroll_vertical = 0
	
	load_items(type_name)
	
	
func clear_item_slots():
	var item_list = get_node('parent_vbox/storage/vbox')
	
	for child in item_list.get_children():
		item_list.remove_child(child)
		child.queue_free()
