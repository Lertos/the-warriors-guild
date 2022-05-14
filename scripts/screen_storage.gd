extends MarginContainer

var scene_item_record = preload("res://scenes/item_record.tscn")
var locked_texture = load('res://assets/icons/icon12.png')
var frame_common_texture = load('res://assets/frames/frame_normal.png')

var items_per_row = 4


func _ready():
	load_items('material')


func load_items(storage_type):
	var storage_info = Global_Player.player['storage'][storage_type]
	var unlocked_slots = storage_info['unlocked']
	var max_slots = storage_info['max']
	var items = storage_info['slots']
	
	var needed_rows = ceil(max_slots / items_per_row)
	
	var list_node = get_node('parent_vbox/storage/vbox')
	
	#Create the HBOX row
	for row in range(0, needed_rows):
		var hbox = HBoxContainer.new()
		hbox.ALIGN_CENTER
		hbox.SIZE_EXPAND_FILL
		
		list_node.add_child(hbox)
		
		#Create the items inside the HBOX
		for col in range(0, items_per_row):
			var index = (items_per_row * row) + col
			var inst_item_record = scene_item_record.instance()
			inst_item_record.name = str(index)
			
			hbox.add_child(inst_item_record)
			
			if items.has(index):
				var item = items[index]
				inst_item_record.set_meta('item', item)

				update_item_record(inst_item_record, item)
			else:
				if (index) < unlocked_slots:
					inst_item_record.get_node('rarity').icon = frame_common_texture
				else:
					inst_item_record.get_node('rarity').icon = locked_texture


func update_item_record(item_record, item):
	item_record.get_node('rarity').icon = load('res://assets/frames/frame_' + item['rarity'] + '.png')
	item_record.get_node('amount').text = str(item['amount'])
	
	var item_data = Global_Items.items[item['item_id']]
	
	item_record.get_node('item').texture = load('res://assets/' + item_data['img'] + '.png')
