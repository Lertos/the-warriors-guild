extends Popup

onready var parent = get_node('container/parent_vbox/vbox/vbox')


func _ready():
	clear_item_info()
	
	#Making all the fields align vertically
	for child in parent.get_children():
		if child.get_child_count() > 0:
			if child.get_child(0) is Label:
				child.get_child(0).rect_min_size.x = 120
	
	fill_region_dropdown()
	fill_main_stat_list()
	fill_ability_item_list()


func clear_item_info():
	for child in get_node('container/parent_vbox/vbox/vbox').get_children():
		if child.get_child_count() > 0:
			if child.get_child(0) is HBoxContainer:
				for child_hbox in child.get_children():
					clear_field_info(child_hbox)
		else:
			clear_field_info(child)


func clear_field_info(parent: Node):
	for child_node in parent.get_children():
		if child_node is Label:
			continue
		
		if child_node is LineEdit:
				child_node.text = ''
		elif child_node is ItemList:
			child_node.unselect_all()
		elif child_node is OptionButton:
			if child_node.get_item_count() > 0:
				child_node.select(0)


func on_clear_pressed():
	clear_item_info()


func on_search_pressed():
	get_node('container/parent_vbox/vbox').visible = false
	get_node('container/parent_vbox/buttons').visible = false
	get_node('container/parent_vbox/search_list').visible = true

	clear_search_list_items()
	create_item_records()


func on_delete_pressed():
	var region_node = parent.get_node('line3/region/region')
	var region_name = region_node.get_item_text(region_node.get_selected_id())
	
	var monster_id = parent.get_node('line1/id/id').text
	
	if monster_id != '':
		for index in Global_Enemies.enemies[region_name]:
			if monster_id == Global_Enemies.enemies[region_name][index]['id']:
				Global_Enemies.enemies[region_name].erase(index)
		
		get_node('/root/root').save_data('enemies')
		clear_item_info()


func create_item_records():
	var tree = get_node('container/parent_vbox/search_list/vbox/tree')
	var root = tree.create_item()
	
	tree.set_hide_root(true)
	
	for region_name in Global_Enemies.enemies:
		var region_tree = tree.create_item(root)
		region_tree.set_text(0, region_name)
		region_tree.set_collapsed(true)
		
		for index in Global_Enemies.enemies[region_name]:
			var monster_id = Global_Enemies.enemies[region_name][index]['id']
			var monster = tree.create_item(region_tree)
			
			monster.set_text(0, monster_id)


func on_monster_double_clicked():
	var tree = get_node('container/parent_vbox/search_list/vbox/tree')
	
	var selected = tree.get_selected()
	var region_name = tree.get_selected().get_parent().get_text(0)
	var monster_id = tree.get_selected().get_text(0)
	
	#If clicked one of the region headers, return
	if region_name == '':
		return
	
	load_monster_info(region_name, monster_id)


func load_monster_info(region_name, monster_id):
	var monster_info = get_monster_info(region_name, monster_id)

	on_close_pressed()
	load_fields(monster_info)
	
	var region_node = parent.get_node('line3/region/region')
	
	for index in range(0, region_node.get_item_count()):
		if region_name == region_node.get_item_text(index):
			region_node.select(index)
			
	#TODO: Load main stat, region, and abilities


func get_monster_info(region_name, monster_id):
	var monster_info = {}
	var monsters = Global_Enemies.enemies[region_name]
	
	for index in monsters:
		if monsters[index]['id'] == monster_id:
			monster_info = monsters[index]
			monster_info['index'] = index
	
	return monster_info


func load_fields(monster_info):
	parent.get_node('line1/id/id').text = monster_info['id']
	parent.get_node('line1/name/name').text = monster_info['name']
	parent.get_node('line2/xp_given/xp_given').text = str(monster_info['xp_given'])
	parent.get_node('line2/travel_time/travel_time').text = str(monster_info['travel_time'])
	parent.get_node('line3/index/index').text = str(monster_info['index'])
	
	var main_stat_node = parent.get_node('main_stat/main_stat')
	
	for index in range(0, main_stat_node.get_item_count()):
		if monster_info['main_stat'] == main_stat_node.get_item_text(index):
			main_stat_node.select(index)
	
	for stat_key in monster_info['stats']:
		parent.get_node(stat_key + '/' + stat_key).text = str(monster_info['stats'][stat_key])

	#TODO: Add abilities


func clear_search_list_items():
	get_node('container/parent_vbox/search_list/vbox/tree').clear()


func on_close_pressed():
	get_node('container/parent_vbox/search_list').visible = false
	get_node('container/parent_vbox/vbox').visible = true
	get_node('container/parent_vbox/buttons').visible = true

	clear_search_list_items()


func on_update_pressed():
	on_save_pressed(true)


func on_save_pressed(update = false):
	var region_node = parent.get_node('line3/region/region')
	var region_name = region_node.get_item_text(region_node.get_selected_id())
	
	var monster_id = parent.get_node('line1/id/id').text
	var monster_dict = {}
	
	var region_monsters = Global_Enemies.enemies[region_name]

	if !update:
		for index in region_monsters:
			if region_monsters[str(index)]['id'] == monster_id:
				get_node('/root/root').show_message_popup('That monster id already exists')
				return

	add_fields(monster_dict)
	
	if are_fields_empty(monster_dict) or are_fields_empty(monster_dict['stats']):
		return
	
	save_monster(region_name, monster_dict, update)


func save_monster(region_name: String, monster_dict: Dictionary, update: bool):
	var index = str(parent.get_node('line3/index/index').text)
	
	if index in Global_Enemies.enemies[region_name]:
		if !update:
			get_node('/root/root').show_message_popup('That monster index already exists')
			return
	else:
		if update:
			get_node('/root/root').show_message_popup('Cannot update as the monster ID does not exist')
			return
	
	if index.is_valid_integer() and int(index) >= 0:
		for i in int(index):
			if !(str(i) in Global_Enemies.enemies[region_name]):
				get_node('/root/root').show_message_popup('You are using an index where a previous sequential index is missing')
				return
	else:
		get_node('/root/root').show_message_popup('The supplied index is the incorrect format. Must be a positive number')
		return
				
	Global_Enemies.enemies[region_name][str(index)] = monster_dict
	
	get_node('/root/root').save_data('enemies')
	clear_item_info()


func add_fields(monster_dict):
	monster_dict['id'] = parent.get_node('line1/id/id').text
	monster_dict['name'] = parent.get_node('line1/name/name').text
	monster_dict['xp_given'] = parent.get_node('line2/xp_given/xp_given').text
	monster_dict['travel_time'] = parent.get_node('line2/travel_time/travel_time').text
	
	var main_stat_node = parent.get_node('main_stat/main_stat')
	var main_stat = main_stat_node.get_item_text(main_stat_node.get_selected_id())

	monster_dict['main_stat'] = main_stat
	
	monster_dict['stats'] = {}
	
	for stat_key in Global_Player.player['base_stats']:
		monster_dict['stats'][stat_key] = parent.get_node(stat_key + '/' + stat_key).text
	
	#TODO: Add logic to actually save abilities
	monster_dict['abilities'] = {}
	monster_dict['drops'] = {}


func are_fields_empty(dict):
	for key in dict:
		if dict[key] is Dictionary:
			if dict[key] == {}:
				get_node('/root/root').show_message_popup('The ' + key + ' dict is empty')
				return
		elif dict[key] == '':
			get_node('/root/root').show_message_popup('The ' + key + ' field is empty')
			return
			
	return false


func fill_region_dropdown():
	var region_dropdown = get_node('container/parent_vbox/vbox/vbox/line3/region/region')
	
	for region_key in Global_Enemies.enemies:
		region_dropdown.add_item(region_key)


func fill_main_stat_list():
	var main_stat_dropdown = get_node('container/parent_vbox/vbox/vbox/main_stat/main_stat')
	
	main_stat_dropdown.add_item('atk_stab')
	main_stat_dropdown.add_item('atk_slash')
	main_stat_dropdown.add_item('atk_crush')


func fill_ability_item_list():
	var item_list = get_node('container/parent_vbox/vbox/vbox/abilities/abilities')
	var ability_dict = MasterConfig.config['abilities']
	var current_index = 0
	
	for key in ability_dict:
		var ability = ability_dict[key]
		
		for level_key in ability['levels']:
			if level_key == 0:
				item_list.add_item(ability_dict[key]['name'])
			else:
				item_list.add_item(ability_dict[key]['name'] + ' ' + Helper.get_roman_numeral(level_key))
				
			item_list.set_item_metadata(current_index, {'id': key})
			current_index += 1
	
	item_list.sort_items_by_text()
