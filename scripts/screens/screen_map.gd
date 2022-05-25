extends MarginContainer

var scene_monster_record = preload("res://scenes/monster_record.tscn")
var unlocked_bg_color = preload("res://themes/record_box.tres")
var locked_texture = load('res://assets/icons/icon12.png')


func _ready():
	var map_info = Global_Player.player['map']
	
	for region_row in get_node('parent_vbox/region_vbox').get_children():
		for region_button in region_row.get_children():
			if map_info[region_button.name]['current'] == 0:
				region_button.icon = locked_texture
	
	load_monsters('valley')


func load_monsters(region_name):
	var path = get_node('parent_vbox/monsters/vbox')
	var unlocked_enemy_count = Global_Player.player['map'][region_name]['current']
	var monster_list = Global_Enemies.enemies[region_name]
	
	for index in range(0, len(monster_list)):
		var inst_monster_record = scene_monster_record.instance()
		path.add_child(inst_monster_record)
		
		#Check if player has unlocked the enemy yet
		if index >= unlocked_enemy_count:
			inst_monster_record.get_node('locked').visible = true
			inst_monster_record.get_node('margin/hbox').visible = false
			continue
		
		inst_monster_record.set('custom_styles/panel', unlocked_bg_color)
		inst_monster_record.set_meta('region_name', region_name)
		inst_monster_record.set_meta('index', index)
		
		update_monster_record(monster_list[index], index)


func update_monster_record(monster, monster_index):
	var path = get_node('parent_vbox/monsters/vbox')
	var parent_node = path.get_child(monster_index).get_node('margin/hbox')
	
	parent_node.get_node('info/name').text = monster['name']
	parent_node.get_node('info/hbox/level').text = str(monster['level'])
	
	var animated_tex = AnimatedTexture.new()
	animated_tex.frames = 2
	animated_tex.fps = 2
	animated_tex.set_frame_texture(0, load('res://assets/monsters/' + monster['id'] + ' (1).png'))
	animated_tex.set_frame_texture(1, load('res://assets/monsters/' + monster['id'] + ' (2).png'))
	
	parent_node.get_node('monster').icon = animated_tex
