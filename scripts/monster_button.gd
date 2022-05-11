extends Button

signal monster_info_requested(region_name, index)


func _on_monster_pressed():
	var parent = self.get_parent().get_parent().get_parent()
	var region_name = parent.get_meta('region_name')
	var index = parent.get_meta('index')

	emit_signal('monster_info_requested', region_name, index)
