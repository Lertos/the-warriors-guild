extends ScrollContainer

var scene_item_record = preload("res://scenes/record_templates/item_record.tscn")
var locked_texture = load('res://assets/icons/locked.png')

onready var list_node = get_node('vbox/inventory/items/items/vbox')
onready var item_info_parent = get_node('vbox/inventory/item_info/vbox')
onready var ability_list = item_info_parent.get_node('base_info/abilities')

onready var buttons_node = get_node('vbox/gear_slots/buttons')

var items_per_row = 2


func _ready():
	buttons_node.get_node('potion').connect('pressed', self, 'switch_sub_type', ['consumables', 'potion'])
	buttons_node.get_node('weapon').connect('pressed', self, 'switch_sub_type', ['weapons', 'weapon'])
	buttons_node.get_node('helmet').connect('pressed', self, 'switch_sub_type', ['armor', 'helmet'])
	buttons_node.get_node('chestplate').connect('pressed', self, 'switch_sub_type', ['armor', 'chestplate'])
	buttons_node.get_node('gloves').connect('pressed', self, 'switch_sub_type', ['armor', 'gloves'])
	buttons_node.get_node('boots').connect('pressed', self, 'switch_sub_type', ['armor', 'boots'])


func load_hero_gear_section():
	switch_sub_type('consumables', 'potion')


func load_items(storage_type: String, sub_type: String):
	ItemHelper.load_items_into_node(list_node, storage_type, items_per_row, sub_type)
	
	add_selected_border(sub_type)
	
	item_info_parent.get_node('base_info/rarity').visible = false
	item_info_parent.get_node('base_info/modifier').visible = false
	item_info_parent.get_node('buttons').visible = false
	
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
		
		item_info_parent.get_node('base_info/rarity').visible = true
		item_info_parent.get_node('buttons').visible = true
		
		item_info_parent.get_node('base_info/item_name').text = item['name']
		
		if 'main_stat' in item:
			item_info_parent.get_node('stat_module').build(item, item['main_stat'])
		else:
			item_info_parent.get_node('stat_module').build(item)
		
		load_item_rarity(item_meta)
		load_abilities_and_modifiers(item_meta)


func open_item_info_popup(item_meta: Dictionary):
	var popup = get_parent().get_parent().get_parent().get_parent().get_node('item_info_popup')
	
	popup.load_page(item_meta)
	get_node('/root/root').show_root_popup(popup)


func load_item_rarity(item_meta: Dictionary):
	var rarity_label = item_info_parent.get_node('base_info/rarity')
		
	if 'rarity' in item_meta:
		rarity_label.text = Helper.get_header_text(item_meta['rarity'])
		Helper.change_label_font_color(rarity_label, item_meta['rarity'])
	else:
		rarity_label.text = Helper.get_header_text('UNIDENTIFIED')
		Helper.change_label_font_color(rarity_label, 'unidentified')


func load_abilities_and_modifiers(item_meta: Dictionary):
	if 'identified' in item_meta:
		if item_meta['identified']:
			update_ability_labels(item_meta)
			item_info_parent.get_node('buttons/info').visible = true
			
			if item_info_parent.get_node('buttons/info').is_connected('pressed', self, 'open_item_info_popup'):
				item_info_parent.get_node('buttons/info').disconnect('pressed', self, 'open_item_info_popup')
			item_info_parent.get_node('buttons/info').connect('pressed', self, 'open_item_info_popup', [item_meta])
		else:
			item_info_parent.get_node('buttons/info').visible = false
	
		if 'modifier' in item_meta:
			if item_meta['modifier'] != '':
				var modifier_name = MasterConfig.config['modifiers'][item_meta['modifier']]['name']
				
				item_info_parent.get_node('base_info/modifier/modifier').text = modifier_name
				item_info_parent.get_node('base_info/modifier').visible = true


func update_ability_labels(item_meta: Dictionary):
	var label_template = ability_list.get_node('base_label')
	
	var abilities = Helper.get_pretty_abilities(item_meta)
	
	for index in range(abilities.size()):
		var new = label_template.duplicate(true)
		
		new.visible = true
		new.text = abilities[index]
		
		ability_list.add_child(new)


func reset_info_panel():
	var nodes = [ability_list]
	
	for node_list in nodes:
		for child in node_list.get_children():
			if child.name != 'spacer':
				child.visible = false
			
	item_info_parent.get_node('base_info/item_name').text = ''
	
	item_info_parent.get_node('base_info/modifier').visible = false
	item_info_parent.get_node('stat_module').visible = false


func add_selected_border(slot_type):
	#Remove all coloring from each button to reset the selected button
	for node in buttons_node.get_children():
		Helper.reset_button_custom_colors(node)
	
	#Change the border color to show which section is selected
	for node in buttons_node.get_children():
		if node.name == slot_type:
			Helper.change_border_color(node, 'selected')

	
func switch_sub_type(storage_type: String, sub_type: String):
	#Reset scrollbar to initial spot 
	get_node('vbox/inventory/items/items').scroll_vertical = 0
	
	reset_info_panel()
	
	load_items(storage_type, sub_type)
