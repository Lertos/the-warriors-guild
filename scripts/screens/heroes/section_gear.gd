extends ScrollContainer

var scene_item_record = preload("res://scenes/record_templates/item_record.tscn")
var locked_texture = load('res://assets/icons/locked.png')

onready var list_node = get_node('hbox/vbox/items/vbox')
onready var item_info_parent = get_node('hbox/vbox/hbox')
onready var label_list = item_info_parent.get_node('stats/hbox/labels')
onready var value_list = item_info_parent.get_node('stats/hbox/values')
onready var ability_list = item_info_parent.get_node('base_info/hbox/labels/abilities')

var items_per_row = 4


func _ready():
	var buttons = get_node('hbox/gear_slots/vbox')
	
	buttons.get_node('potion').connect('pressed', self, 'switch_sub_type', ['consumable', 'potion'])
	buttons.get_node('weapon').connect('pressed', self, 'switch_sub_type', ['gear', 'weapon'])
	buttons.get_node('helmet').connect('pressed', self, 'switch_sub_type', ['gear', 'helmet'])
	buttons.get_node('chestplate').connect('pressed', self, 'switch_sub_type', ['gear', 'chestplate'])
	buttons.get_node('gloves').connect('pressed', self, 'switch_sub_type', ['gear', 'gloves'])
	buttons.get_node('boots').connect('pressed', self, 'switch_sub_type', ['gear', 'boots'])
	buttons.get_node('necklace').connect('pressed', self, 'switch_sub_type', ['jewelry', 'necklace'])
	buttons.get_node('ring').connect('pressed', self, 'switch_sub_type', ['jewelry', 'ring'])


func load_items(storage_type: String, sub_type: String):
	ItemHelper.load_items_into_node(list_node, storage_type, items_per_row, sub_type)
	add_selected_border(sub_type)
	
	for hbox in list_node.get_children():
		for item_slot in hbox.get_children():
			if item_slot.has_meta('item'):
				item_slot.get_child(0).connect('pressed', self, 'load_item_info', [item_slot])
			#No more items to check as they are all empty slots
			else:
				break


func load_item_info(item_button: Node):
	var item_meta = item_button.get_meta('item')
	
	if 'item_id' in item_meta:
		var item = Global_Items.items[item_meta['item_id']]
		
		reset_info_panel()
		
		item_info_parent.get_node('base_info/hbox/labels/item_name').text = item['name']
		
		load_item_abilities(item_meta)
		load_item_stats(item)


func load_item_abilities(item_meta: Dictionary):
	var label_template = ability_list.get_node('base_label')
	
	var abilities = Helper.get_pretty_abilities(item_meta)
	
	for index in range(abilities.size()):
		var new = label_template.duplicate(true)
		
		new.visible = true
		new.text = abilities[index]
		
		ability_list.add_child(new)
		

func load_item_stats(item_info: Dictionary):
	if 'atk_stab' in item_info:
		label_list.get_node('atk_spacer').visible = true
		value_list.get_node('atk_spacer').visible = true
	
	if 'def_stab' in item_info:
		label_list.get_node('def_spacer').visible = true
		value_list.get_node('def_spacer').visible = true
	
	for child in value_list.get_children():
		var stat_key = child.name
		
		if !('spacer' in stat_key):
			if stat_key in item_info:
				child.text = str(item_info[stat_key])
				child.visible = true
				
				label_list.get_node(stat_key).visible = true


func reset_info_panel():
	var nodes = [label_list, value_list, ability_list]
	
	for node_list in nodes:
		for child in node_list.get_children():
			child.visible = false
			
	item_info_parent.get_node('base_info/hbox/labels/item_name').text = ''


func add_selected_border(slot_type):
	var buttons = get_node('hbox/gear_slots/vbox')
	
	#Remove all coloring from each button to reset the selected button
	for node in buttons.get_children():
		Helper.reset_button_custom_colors(node)
	
	#Change the border color to show which section is selected
	Helper.change_border_color(buttons.get_node(slot_type), 'selected')

	
func switch_sub_type(storage_type: String, sub_type: String):
	#Reset scrollbar to initial spot 
	get_node('hbox/vbox/items').scroll_vertical = 0
	
	reset_info_panel()
	
	load_items(storage_type, sub_type)
