extends MarginContainer

var scene_monster_record = preload("res://scenes/record_templates/monster_record.tscn")
var unlocked_bg_color = preload("res://themes/record_box.tres")
var filler_bg_color = preload("res://themes/background_box.tres")
var locked_texture = load('res://assets/icons/icon12.png')

onready var record_list_node = get_node('parent_vbox/monsters/vbox')


func _ready():
	var map_info = Global_Player.player['map']

	for region_row in get_node('parent_vbox/region_vbox').get_children():
		for region_button in region_row.get_children():
			if map_info[region_button.name]['current'] == 0:
				region_button.icon = locked_texture
	
	load_monsters('valley')


func load_monsters(region_name):
	var unlocked_enemy_count = Global_Player.player['map'][region_name]['current']
	var monster_list = Global_Enemies.enemies[region_name]

	var hbox
	
	for index in range(0, len(monster_list)):
		if index % 2 == 0:
			hbox = HBoxContainer.new()
			record_list_node.add_child(hbox)
		
		var inst_monster_record = scene_monster_record.instance()
		hbox.add_child(inst_monster_record)
		
		#Check if player has unlocked the enemy yet
		if index >= unlocked_enemy_count:
			inst_monster_record.get_node('margin/vbox/hbox/monster').disabled = true
			inst_monster_record.get_node('margin/vbox/hbox/attack').disabled = true
			inst_monster_record.set_meta('previous_monster', monster_list[index-1]['name'])
		
		inst_monster_record.set('custom_styles/panel', unlocked_bg_color)
		inst_monster_record.set_meta('region_name', region_name)
		inst_monster_record.set_meta('index', index)

		update_monster_record(monster_list[index], hbox.name, inst_monster_record.name)
		
		if index >= unlocked_enemy_count:
			if index % 2 == 0:
				var filer_record = inst_monster_record.duplicate()
				filer_record.get_node('margin/vbox').visible = false
				filer_record.set('custom_styles/panel', filler_bg_color)
				hbox.add_child(filer_record)
			break


func update_monster_record(monster, hbox_name, monster_node_name):
	var path = record_list_node.get_node(hbox_name + '/' + monster_node_name)
	var parent_node = path.get_node('margin/vbox')
	var monster_button = parent_node.get_node('hbox/monster')

	if monster_button.disabled == false:
		parent_node.get_node('info/name').text = monster['name']
		parent_node.get_node('info/hbox/level').text = 'Level: ' + str(monster['level'])
		
		monster_button.icon = create_animated_texture(monster['id'])
	else:
		parent_node.get_node('info/name').visible = false
		parent_node.get_node('info/hbox/level').text = 'Unlocked by killing the ' + path.get_meta('previous_monster')
	

func create_animated_texture(monster_id):
	var animated_tex = AnimatedTexture.new()
	
	animated_tex.frames = 2
	animated_tex.fps = 2
	animated_tex.set_frame_texture(0, load('res://assets/monsters/' + monster_id + ' (1).png'))
	animated_tex.set_frame_texture(1, load('res://assets/monsters/' + monster_id + ' (2).png'))
	
	return animated_tex
