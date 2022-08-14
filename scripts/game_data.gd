extends Node

var _file_paths = {
	'player': 'user://player_data.dat',
	'items': 'user://item_data.dat',
	'enemies': 'user://enemy_data.dat',
}

func initial_load():
	var dir = Directory.new()
	
	for key in _file_paths:
		if dir.file_exists(_file_paths[key]):
			load_data(key)
		else:
			save_data(key)


func save_data(file_key):
	var file_path = _file_paths[file_key]
	var data = _get_data_container(file_key)

	var data_as_str = var2str(data)
	var file := File.new()
	
	file.open(file_path, file.WRITE)
	file.store_string(data_as_str)
	file.close()


func load_data(file_key):
	var file_path = _file_paths[file_key]
	
	var file := File.new()
	file.open(file_path, file.READ)
	
	var data : Dictionary = str2var(file.get_as_text())
	file.close()
	
	_set_container_data(file_key, data)
	
	
func _get_data_container(file_key):
	if file_key == 'player':
		return Global_Player.player
	elif file_key == 'items':
		return Global_Items.items
	elif file_key == 'enemies':
		return Global_Enemies.enemies
		

func _set_container_data(file_key, data):
	if file_key == 'player':
		Global_Player.player = data
	elif file_key == 'items':
		Global_Items.items = data
	elif file_key == 'enemies':
		Global_Enemies.enemies = data
