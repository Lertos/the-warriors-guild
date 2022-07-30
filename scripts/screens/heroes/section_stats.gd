extends Node

onready var parent_node = get_node('stats/vbox')


func load_hero_stats_section(index: int, hero_info: Dictionary):
	var total_stats = Helper.get_hero_total_stats(hero_info)
	
	fill_hero_base_info(total_stats, hero_info)
	fill_stats_panel(total_stats)


func fill_hero_base_info(total_stats, hero_info):
	var parent_info_node = parent_node.get_node('hbox')
	var hero_button = parent_info_node.get_node('hero/img')
	var base_info_node = parent_node.get_node('hbox/vbox')
	
	hero_button.icon = Helper.get_avatar_texture(hero_info['avatar_index'])
	
	base_info_node.get_node('info1/name').text = str(hero_info['name'])
	base_info_node.get_node('info1/level').text = str(hero_info['level'])
	
	base_info_node.get_node('info2/xp/current_xp').text = str(hero_info['exp'])
	base_info_node.get_node('info2/xp/needed_xp').text = str(Helper.get_xp_needed_for_next_level(hero_info['level']))
	
	base_info_node.get_node('info2/health/current_health').text = str(hero_info['current_health'])
	base_info_node.get_node('info2/health/max_health').text = str(total_stats['health'])


func fill_stats_panel(total_stats):
	var left_panel = parent_node.get_node('hbox2/left_panel/values')
	var right_panel = parent_node.get_node('hbox2/right_panel/values')
	
	fill_stat_nodes(total_stats, left_panel)
	fill_stat_nodes(total_stats, right_panel)


func fill_stat_nodes(total_stats, list_node):
	for child in list_node.get_children():
		var stat_key = child.name
		
		if !('spacer' in stat_key):
			if stat_key in total_stats:
				child.text = str(total_stats[stat_key])
