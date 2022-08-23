extends Node

onready var parent_node = get_node('stats/vbox')


func load_hero_stats_section(hero_info: Dictionary):
	var total_stats = Helper.get_hero_total_stats(hero_info)
	var hero_main_stat = Helper.get_hero_main_stat(hero_info)
	
	fill_hero_base_info(total_stats, hero_info)
	
	parent_node.get_node('stat_module').build(total_stats, hero_main_stat)


func fill_hero_base_info(total_stats, hero_info):
	var parent_info_node = parent_node.get_node('hbox')
	var hero_button = parent_info_node.get_node('hero/img')
	var base_info_node = parent_node.get_node('hbox/vbox')
	
	hero_button.icon = Helper.get_avatar_texture(hero_info['avatar_index'])
	
	base_info_node.get_node('name').text = str(hero_info['name'])
