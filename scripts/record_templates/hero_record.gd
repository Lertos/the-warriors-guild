extends PanelContainer


func update_hero_info(hero_info: Dictionary):
	var parent = get_node('margin/hbox')
	
	parent.get_node('hero').icon = load('res://assets/avatars/avatar (' + str(hero_info['avatar_index']) + ').png')
	
	parent.get_node('info/hbox1/name').text = str(hero_info['name'])
	parent.get_node('info/hbox1/lvl').text = str(hero_info['level'])
	parent.get_node('info/hbox2/status').text = str('ddd')
	parent.get_node('info/hbox3/current_health').text = str(hero_info['current_health'])
	
