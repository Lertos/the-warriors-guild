extends Node

var scene_item_record = preload("res://scenes/record_templates/item_record.tscn")
var locked_texture = load('res://assets/icons/locked.png')

var default_separation = 8
var default_alignment = HBoxContainer.ALIGN_CENTER


func load_items_into_node(list_node: Node, storage_type: String, items_per_row: int, sub_type:= ''):
	var storage_info = Global_Player.player['storage'][storage_type]
	var unlocked_slots = storage_info['unlocked']
	var max_slots = storage_info['max']
	var items = storage_info['slots']
	
	var needed_rows = ceil(float(max_slots) / items_per_row)

	Helper.clear_list(list_node)
	
	#Check if the item list needs to only show a certain sub-type of a category
	if sub_type != '':
		items = get_sub_type_items_only(items, sub_type)
	
	#Create the HBOX row
	for row in range(0, needed_rows):
		var hbox = Helper.create_hbox(default_separation, default_alignment)
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


func get_sub_type_items_only(item_list: Array, sub_type: String) -> Array:
	var new_list = []
	
	for index in range(item_list.size()):
		var item = Global_Items.items[item_list[index]['item_id']]

		if item['type'] == sub_type:
			new_list.append(item_list[index])
			
	return new_list


func update_item_record(item_record, item):
	var item_data = Global_Items.items[item['item_id']]
	
	if 'rarity' in item:
		Helper.change_border_color(item_record.get_node('rarity'), item['rarity'])
	else:
		Helper.change_border_color(item_record.get_node('rarity'), 'unidentified')

	item_record.get_node('rarity/amount').text = str(item['amount'])
	item_record.get_node('rarity/item').texture = load('res://assets/' + item_data['img_path'] + '.png')
