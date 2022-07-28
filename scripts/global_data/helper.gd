extends Node

func get_time_from_stamp(time_in_seconds: int):
	var hours = 0
	var minutes = 0
	var seconds = 0
	var remaining_time
	
	hours = time_in_seconds / 3600
	remaining_time = time_in_seconds - (hours * 3600)
	
	minutes = remaining_time / 60
	remaining_time = remaining_time - (minutes * 60)
	
	seconds = remaining_time
	
	if hours != 0:
		return str(hours) + ':%02d:%02d' % [minutes, seconds]
	elif minutes != 0:
		return '%02d:%02d' % [minutes, seconds]
	elif seconds != 0:
		return '%02d' % [seconds]
	

func change_border_color(node, color_key):
	var color = Global_Colors.colors[color_key]
	var temp_stylebox_normal = node.get_theme().get_stylebox('normal', 'Button').duplicate()
	var temp_stylebox_hover = node.get_theme().get_stylebox('hover', 'Button').duplicate()
	var temp_stylebox_pressed = node.get_theme().get_stylebox('pressed', 'Button').duplicate()
	
	temp_stylebox_normal.border_color = color
	temp_stylebox_hover.border_color = color
	temp_stylebox_pressed.border_color = color
	
	node.add_stylebox_override('normal',temp_stylebox_normal)
	node.add_stylebox_override('hover',temp_stylebox_hover)
	node.add_stylebox_override('pressed',temp_stylebox_pressed)


func change_button_background_color(node, color_key):
	var color = Global_Colors.colors[color_key]
	var temp_stylebox_normal = node.get_theme().get_stylebox('normal', 'Button').duplicate()
	var temp_stylebox_hover = node.get_theme().get_stylebox('hover', 'Button').duplicate()
	var temp_stylebox_pressed = node.get_theme().get_stylebox('pressed', 'Button').duplicate()
	
	temp_stylebox_normal.bg_color = color
	temp_stylebox_hover.bg_color = color
	temp_stylebox_pressed.bg_color = color
	
	node.add_stylebox_override('normal',temp_stylebox_normal)
	node.add_stylebox_override('hover',temp_stylebox_hover)
	node.add_stylebox_override('pressed',temp_stylebox_pressed)


func reset_button_custom_colors(node):
	node.add_stylebox_override('normal', null)
	node.add_stylebox_override('hover', null)
	node.add_stylebox_override('pressed', null)


func change_panel_border_color(node, color_key):
	var color = Global_Colors.colors[color_key]
	var temp_stylebox_panel = node.get_stylebox('panel').duplicate()

	temp_stylebox_panel.border_color = color
	
	node.add_stylebox_override('panel',temp_stylebox_panel)


func change_panel_background_color(node, color_key):
	var color = Global_Colors.colors[color_key]
	var temp_stylebox_panel = node.get_stylebox('panel').duplicate()

	temp_stylebox_panel.bg_color = color
	
	node.add_stylebox_override('panel',temp_stylebox_panel)


func reset_panel_custom_colors(node):
	node.add_stylebox_override('panel', null)
	
	
func get_blackened_image(given_image) -> ImageTexture:
	var image = given_image.get_data()

	image.lock()

	for row in image.get_height():
		for column in image.get_width():
			if image.get_pixel(column, row).a != 0:
				image.set_pixel(column, row, ColorN("black"))

	image.unlock()

	var texture = ImageTexture.new()
	
	texture.create_from_image(image, 0) #keeps the image pixelated; it's the image flags
	
	return texture


#Takes text such as "stats" and turns it into "Stats", or "hero_gear" -> "Hero Gear"
func get_header_text(text: String) -> String:
	var header = text
	var index_of_underscore = text.find('_')
	
	#TODO: Find each underscore, and change it to capital and then replace ALL _ with spaces
	header[0] = header[0].to_upper()
	header[index_of_underscore + 1] = header[index_of_underscore + 1].to_upper()

	header = header.replace('_', ' ')
	
	return header


func get_hero_main_stat(hero_info: Dictionary) -> String:
	if hero_info['gear']['weapon'] != '':
		return Global_Items.items[hero_info['gear']['weapon']]['main_stat']
	else:
		return MasterConfig.config['default_attack_style']


func get_hero_total_stats(hero_info: Dictionary) -> Dictionary:
	var stats = {}
	
	stats = Global_Player.player['base_stats'].duplicate(true)
	
	stats = get_hero_total_gear_stats(stats, hero_info)
	stats = get_hero_total_talent_stats(stats, hero_info)
	
	return stats
	
	
func get_hero_total_gear_stats(stats, hero_info: Dictionary) -> Dictionary:
	for gear_type in hero_info['gear']:
		var item_id = hero_info['gear'][gear_type]
		
		if item_id == '':
			continue
		if !(item_id in Global_Items.items):
			continue
		
		var item_info = Global_Items.items[item_id]
		
		for stat in Global_Player.player['base_stats']:
			if stat in item_info:
				if stat == 'atk_speed':
					stats[stat] = float(item_info[stat])
				elif item_info[stat].is_valid_integer():
					stats[stat] += int(item_info[stat])
				elif item_info[stat].is_valid_float():
					stats[stat] += float(item_info[stat])
			
	return stats


func get_hero_total_talent_stats(stats, hero_info: Dictionary) -> Dictionary:
	#TODO: Actually calculate the talent stats
	return stats
	

func get_monster_abilities(monster_info: Dictionary) -> Array:
	var item_list = []
	
	for ability_key in monster_info['abilities']:
		var display_name = MasterConfig.config['abilities'][ability_key]['name']
		var ability_level = monster_info['abilities'][ability_key]
		
		if ability_level == 0:
			item_list.append(display_name)
		else:
			item_list.append(display_name + ' ' + get_roman_numeral(ability_level))
	
	item_list.sort()
	
	return item_list


func get_roman_numeral(level: int):
	if level == 1:
		return 'I'
	elif level == 2:
		return 'II'
	elif level == 3:
		return 'III'
	elif level == 4:
		return 'IV'
	elif level == 5:
		return 'V'
