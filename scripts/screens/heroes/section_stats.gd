extends Node


func load_hero_stats_section(index, hero_info):
	var stats_panel = get_node('stats/stats_panel/values')
	var total_stats = Helper.get_hero_total_stats(hero_info)
	
	for key in total_stats:
		stats_panel.get_node(key).text = str(total_stats[key])
