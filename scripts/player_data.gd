extends Node

const SAVE_FILE_PATH = 'user://data.dat'


func initial_load():
	if Directory.new().file_exists(SAVE_FILE_PATH):
		load_player_data()
	else:
		save_player_data()

	
func save_player_data():
	var data_as_str = var2str(Global_Player.player)
	var file := File.new()
	
	file.open(SAVE_FILE_PATH, file.WRITE)
	file.store_string(data_as_str)
	file.close()
	
	
func load_player_data():
	var file := File.new()
	file.open(SAVE_FILE_PATH, file.READ)
	
	var data : Dictionary = str2var(file.get_as_text())
	file.close()
	Global_Player.player = data
