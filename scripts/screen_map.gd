extends MarginContainer

var scene_monster_record = preload("res://scenes/monster_record.tscn")
var locked_texture = load('res://assets/icons/icon12.png')

onready var monster_list_path = $parent_vbox/monsters/vbox


func _ready():
	for region_row in $parent_vbox/region_vbox.get_children():
		for region_button in region_row.get_children():
			if Global_Regions.regions[region_button.name] != true:
				region_button.icon = locked_texture
	
	load_monsters('valley')


func load_monsters(region_name):
	var monster_list = Global_Enemies.enemies[region_name]
	
	for index in range(0, len(monster_list)):
		var inst_monster_record = scene_monster_record.instance()
		inst_monster_record.name = monster_list[index]['id']

		monster_list_path.add_child(inst_monster_record)
		
		update_monster_record(monster_list[index], index)


func update_monster_record(monster, monster_index):
	var parent_node = monster_list_path.get_child(monster_index).get_node('margin/hbox')
	
	parent_node.get_node('info/name').text = monster['name']
	parent_node.get_node('info/hbox/level').text = str(monster['level'])
	
	var animated_tex = AnimatedTexture.new()
	animated_tex.frames = 2
	animated_tex.fps = 2
	animated_tex.set_frame_texture(0, load('res://assets/monsters/' + monster['img'] + ' (1).png'))
	animated_tex.set_frame_texture(1, load('res://assets/monsters/' + monster['img'] + ' (2).png'))
	
	parent_node.get_node('monster').icon = animated_tex
