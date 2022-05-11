extends Node

var scene_popup_monster_info = preload("res://scenes/popup_monster_info.tscn")


func show_info_popup(region_name, index):
	get_node('/root/root/PopupBlackout').visible = true
	
	var monster = Global_Enemies.enemies[region_name][index]
	#print(monster['name'])
	var inst_popup_monster_info = scene_popup_monster_info.instance()
	inst_popup_monster_info.name = monster['id']
	
	inst_popup_monster_info.set_meta('monster', monster)
	
	var popup = get_node('/root/root/Popup')
	var parent_vbox = popup.get_node('container/parent_vbox')
	
	parent_vbox.add_child(inst_popup_monster_info)
	parent_vbox.move_child(inst_popup_monster_info, 0)
	
	
	
	popup.popup_centered()
