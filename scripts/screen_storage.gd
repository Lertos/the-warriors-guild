extends MarginContainer

var scene_item_record = preload("res://scenes/item_record.tscn")
var locked_texture = load('res://assets/icons/icon12.png')

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
					change_background_color(inst_item_record.get_node('rarity'), 'locked')
					inst_item_record.get_node('rarity/item').texture = locked_texture


func create_hbox():
	var hbox = HBoxContainer.new()
	
	hbox.set_alignment(hbox.ALIGN_CENTER)
	hbox.set('custom_constants/separation', 8)
	
	return hbox


func update_item_record(item_record, item):
	var item_data = Global_Items.items[item['item_id']]
	
	change_border_color(item_record.get_node('rarity'), item['rarity'])

	item_record.get_node('rarity/amount').text = str(item['amount'])
	item_record.get_node('rarity/item').texture = load('res://assets/' + item_data['img'] + '.png')


func change_border_color(node, rarity):
	var temp_stylebox_normal = node.get_theme().get_stylebox('normal', 'Button').duplicate()
	var temp_stylebox_hover = node.get_theme().get_stylebox('hover', 'Button').duplicate()
	var temp_stylebox_pressed = node.get_theme().get_stylebox('pressed', 'Button').duplicate()
	
	var color = Global_Colors.colors[rarity]

	temp_stylebox_normal.border_color = color
	temp_stylebox_hover.border_color = color
	temp_stylebox_pressed.border_color = color
	
	node.add_stylebox_override('normal',temp_stylebox_normal)
	node.add_stylebox_override('hover',temp_stylebox_hover)
	node.add_stylebox_override('pressed',temp_stylebox_pressed)


func change_background_color(node, color_key):
	var temp_stylebox_normal = node.get_theme().get_stylebox('normal', 'Button').duplicate()
	var temp_stylebox_hover = node.get_theme().get_stylebox('hover', 'Button').duplicate()
	var temp_stylebox_pressed = node.get_theme().get_stylebox('pressed', 'Button').duplicate()
	
	var color = Global_Colors.colors[color_key]

	temp_stylebox_normal.bg_color = color
	temp_stylebox_hover.bg_color = color
	temp_stylebox_pressed.bg_color = color
	
	node.add_stylebox_override('normal',temp_stylebox_normal)
	node.add_stylebox_override('hover',temp_stylebox_hover)
	node.add_stylebox_override('pressed',temp_stylebox_pressed)

	
func switch_sub_type(type_name):
	load_items(type_name)
	
	
func clear_item_slots():
	var item_list = get_node('parent_vbox/storage/vbox')
	
	for child in item_list.get_children():
		item_list.remove_child(child)
		child.queue_free()
