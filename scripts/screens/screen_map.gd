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
			else:
				region_button.connect('pressed', self, 'load_monsters', [region_button.name])
	
	load_monsters('verdant_valley')


func load_monsters(region_name):
	var unlocked_enemy_count = Global_Player.player['map'][region_name]['current']
	var monster_list = Global_Enemies.enemies[region_name]

	var hbox
	
	update_region_header(region_name)
	clear_list()
	
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
			add_filler_record(index, inst_monster_record, hbox)
			break


func add_filler_record(index, monster_record, hbox):
	if index % 2 == 0:
		var filler_record = monster_record.duplicate()
		
		filler_record.get_node('margin/vbox').visible = false
		filler_record.set('custom_styles/panel', filler_bg_color)
		
		hbox.add_child(filler_record)


func update_region_header(region_name):
	var header = region_name
	var index_of_underscore = region_name.find('_')
		
	header[0] = header[0].to_upper()
	header[index_of_underscore + 1] = header[index_of_underscore + 1].to_upper()

	header = header.replace('_', ' ')
	
	get_node('parent_vbox/header').text = header


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
	

func clear_list():
	for child in record_list_node.get_children():
		record_list_node.remove_child(child)
		child.queue_free()
