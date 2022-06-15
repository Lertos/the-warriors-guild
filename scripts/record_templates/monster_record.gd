extends Node

signal show_root_popup(node)

var scene_popup_monster_info = preload("res://scenes/popup_monster_info.tscn")

func _ready():
	self.connect('show_root_popup', get_node('/root/root'), 'show_root_popup')


func show_info_popup(region_name, index):
	var monster = Global_Enemies.enemies[region_name][index]

	var inst_popup_monster_info = scene_popup_monster_info.instance()
	inst_popup_monster_info.name = monster['id']
	inst_popup_monster_info.set_meta('monster', monster)

	emit_signal('show_root_popup', inst_popup_monster_info)
