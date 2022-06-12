extends MarginContainer

var locked_texture = load('res://assets/icons/icon12.png')

var hero_timers = {}


func _ready():
	load_heroes()
	
	var timer = Timer.new()
	timer.connect('timeout', self, 'update_hero_timers') 
	add_child(timer)
	timer.start()


func load_heroes():
	var hero_info = Global_Player.player['heroes']
	var heroes_unlocked = Global_Player.player['heroes_unlocked']
	
	for hero_record in get_node('parent_vbox/vbox/heroes').get_children():
		var index = int(hero_record.name)
		
		if index < len(hero_info):
			load_hero_info(hero_record, hero_info[index], index)
		else:
			if index < heroes_unlocked:
				hero_record.get_node('img').text = '+'
			else:
				hero_record.get_node('img').icon = locked_texture
				hero_record.get_node('img').disabled = true


func load_hero_info(hero_record, hero_info, index):
	var hero_icon = load('res://assets/avatars/' + hero_info['img_path'] + '.png')
	var current_status
	
	print(OS.get_unix_time())
	
	var current_time = OS.get_unix_time()
	var time_done = hero_info['activity']['time_done']
	
	if time_done == 0:
		current_status = 'IDLE'
	elif time_done < current_time:
		current_status = 'DONE'
	elif time_done >= current_time:
		var time_difference = time_done - current_time
		
		current_status = Helper.get_time_from_stamp(time_difference)
		hero_timers[index] = {}
		hero_timers[index]['time_left'] = time_difference

	hero_record.get_node('img').icon = hero_icon
	hero_record.get_node('status').text = current_status
	

func update_hero_timers():
	var path = get_node('parent_vbox/vbox/heroes')
	
	if len(hero_timers) == 0:
		return
		
	for hero in hero_timers:
		var new_time = hero_timers[hero]['time_left'] - 1

		if new_time <= 0:
			hero_timers.erase(hero)
			path.get_node(str(hero) + '/status').text = 'DONE'
		else:
			hero_timers[hero]['time_left'] = new_time
			path.get_node(str(hero) + '/status').text = Helper.get_time_from_stamp(new_time)
		

