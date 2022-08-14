extends Node

var scene_item_record = preload("res://scenes/record_templates/item_record.tscn")
var locked_texture = load('res://assets/icons/locked.png')

var default_separation = 8
var default_alignment = HBoxContainer.ALIGN_CENTER

var ability_identifiers = ['x', 'y', 'z', 'xx', 'yy', 'zz', 'atk_stat', 'def_stat']


func load_items_into_node(list_node: Node, storage_type: String, items_per_row: int, sub_type:= ''):
	var storage_info = Global_Player.player['storage'][storage_type]
	var unlocked_slots = storage_info['unlocked']
	var max_slots = storage_info['max']
	var items = storage_info['slots']
	
	var needed_rows = ceil(float(max_slots) / items_per_row)

	Helper.clear_list(list_node)
	
	#Check if the item list needs to only show a certain sub-type of a category
	if sub_type != '':
		items = _get_sub_type_items_only(items, sub_type)
	
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

				_update_item_record(inst_item_record, item)
			else:
				#Locked slots
				if (index) >= unlocked_slots:
					Helper.change_button_background_color(inst_item_record.get_node('rarity'), 'locked')
					inst_item_record.get_node('rarity/item').texture = locked_texture


func get_bbcode_ability_list(bbcode_label: RichTextLabel, ability_list: Dictionary):
	bbcode_label.bbcode_text = ''
	
	for key in ability_list:
		var ability = MasterConfig.config['abilities'][key]
		var level = ability_list[key]
		var ability_stats = ability['levels'][level]
		
		bbcode_label.append_bbcode('([color=yellow]' + str(ability_stats['ability_chance']) + '%[/color]) ')
		
		var str_level = Helper.get_roman_numeral(level)
		
		if str_level != '':
			bbcode_label.append_bbcode('[color=#db55ed]' + ability['name'] + ' ' + Helper.get_roman_numeral(level) + '[/color] - ')
		else:
			bbcode_label.append_bbcode('[color=#db55ed]' + ability['name'] + '[/color] - ')
			
		var ability_description = _get_ability_description(ability['description'], ability_stats)
		
		bbcode_label.append_bbcode(ability_description)
		bbcode_label.append_bbcode('\n\n')


func get_bbcode_modifier_list(bbcode_label: RichTextLabel, modifier_key: String):
	var modifier = MasterConfig.config['modifiers'][modifier_key]
	var modifier_display_names = MasterConfig.config['stat_list']['modifiers']
	
	bbcode_label.bbcode_text = '[color=yellow]' + modifier['name'] + '[/color]\n\n'
	
	for key in modifier:
		if key in modifier_display_names:
			var modifier_value = modifier[key] 
			
			bbcode_label.append_bbcode(modifier_display_names[key])
			
			if modifier_value >= 0:
				bbcode_label.append_bbcode(' ([color=green]+' + str(modifier_value) + '%[/color]) ')
			else:
				bbcode_label.append_bbcode(' ([color=red]' + str(modifier_value) + '%[/color]) ')
				
			bbcode_label.append_bbcode('\n')


#Returns the storage category that an item belongs to based on its' type
func get_item_storage_category(item_id: String) -> String:
	var category = ''

	if item_id in Global_Items.items:
		var item = Global_Items.items[item_id]

		if 'type' in item:
			var type = item['type']

			if type == 'armor':
				category = 'armor'
			elif type == 'weapon':
				category = 'weapons'
			elif type == 'consumable':
				category = 'consumables'
			elif type == 'material':
				category = 'materials'
			elif type == 'jewelry':
				category = 'jewelry'
	
	return category


#============================
#
# PRIVATE FUNCTIONS
#
#============================


func _get_sub_type_items_only(item_list: Array, sub_type: String) -> Array:
	var new_list = []
	
	for index in range(item_list.size()):
		var item = Global_Items.items[item_list[index]['item_id']]

		if sub_type in ['helmet','chestplate', 'gloves', 'boots']:
			if 'sub_type' in item:
				if item['sub_type'] == sub_type:
					new_list.append(item_list[index])
		else:
			if item['type'] == sub_type:
				new_list.append(item_list[index])
			
	return new_list


func _update_item_record(item_record, item):
	var item_data = Global_Items.items[item['item_id']]
	
	if 'rarity' in item:
		Helper.change_border_color(item_record.get_node('rarity'), item['rarity'])
	else:
		Helper.change_border_color(item_record.get_node('rarity'), 'unidentified')

	item_record.get_node('rarity/amount').text = str(item['amount'])
	item_record.get_node('rarity/item').texture = load('res://assets/' + item_data['img_path'] + '.png')


func _get_ability_description(raw_description: String, ability_stats: Dictionary) -> String:
	var description = raw_description
	
	for indentifier in ability_identifiers:
		var token = '<' + indentifier + '>'
		if token in description:
			if indentifier in ability_stats:
				description = description.replace('%', '[color=aqua]%[/color]')
				description = description.replace(token, '[color=aqua]' + str(ability_stats[indentifier]) + '[/color]')
				
	return description
