extends Control

var scene_screen_home = preload("res://scenes/screens/screen_home.tscn")
var scene_screen_heroes = preload("res://scenes/screens/screen_heroes.tscn")
var scene_screen_map = preload("res://scenes/screens/screen_map.tscn")
var scene_screen_vendors = preload("res://scenes/screens/screen_vendors.tscn")
var scene_screen_storage = preload("res://scenes/screens/screen_storage.tscn")

var scene_message_popup = preload("res://scenes/message_popup.tscn")
var scene_popup_blackout = preload("res://scenes/popup_blackout.tscn")

var data_manager

func _ready():
	data_manager = get_node('game_data')
	data_manager.initial_load()

	var buttons = get_node('/root/root/parent/footer/buttons')
	
	buttons.get_node('home/home').connect('pressed', self, 'switch_screen', ['home'])
	buttons.get_node('heroes/heroes').connect('pressed', self, 'switch_screen', ['heroes'])
	buttons.get_node('map/map').connect('pressed', self, 'switch_screen', ['map'])
	buttons.get_node('vendors/vendors').connect('pressed', self, 'switch_screen', ['vendors'])
	buttons.get_node('storage/storage').connect('pressed', self, 'switch_screen', ['storage'])


#Find the keys in the game_data.gd dictionary at the top
func save_data(file_key):
	data_manager.save_data(file_key)


func _unhandled_input(event):
	if event is InputEventKey:
		#Show item generator popup
		if event.pressed and event.scancode == KEY_F2:
			if get_node('ItemGenerator').visible != true:
				show_root_popup(get_node('ItemGenerator'))
			else:
				get_node('ItemGenerator').visible = false
		#Show monster generator popup
		if event.pressed and event.scancode == KEY_F3:
			if get_node('MonsterGenerator').visible != true:
				show_root_popup(get_node('MonsterGenerator'))
			else:
				get_node('MonsterGenerator').visible = false


func show_root_popup(node):
	var blackout_node = scene_popup_blackout.instance()

	node.get_parent().add_child(blackout_node)
	node.get_parent().move_child(blackout_node, 0)

	blackout_node.popup_centered_minsize()
	node.popup_centered_minsize()
	
	node.connect('popup_hide', self, 'remove_blackout_node', [blackout_node, node])


func show_message_popup(text):
	var new_message_popup = scene_message_popup.instance()
	var blackout_node = create_message_popup_blackout(new_message_popup)

	new_message_popup.set_text(text)
	new_message_popup.popup_centered_minsize()

	new_message_popup.connect('popup_hide', self, 'remove_blackout_and_message_node', [blackout_node])


func remove_blackout_node(blackout_node, popup_node):
	if blackout_node != null:
		popup_node.disconnect('popup_hide', self, 'remove_blackout_node')
		popup_node.get_parent().remove_child(blackout_node)
		blackout_node.queue_free()
	if popup_node != null:
		popup_node.visible = false


func remove_blackout_and_message_node(blackout_node):
	if blackout_node != null:
		self.remove_child(blackout_node)
		blackout_node.queue_free()


func create_message_popup_blackout(child_node):
	var new_popup_blackout = scene_popup_blackout.instance()

	self.add_child(new_popup_blackout)
	
	if child_node != null:
		new_popup_blackout.add_child(child_node)
		
	new_popup_blackout.popup_centered_minsize()
	
	return new_popup_blackout
	

func switch_screen(button_name):
	if button_name == 'home':
		load_screen(scene_screen_home, 'GUILD INFO')
	elif button_name == 'heroes':
		load_screen(scene_screen_heroes, 'HEROES')
	elif button_name == 'map':
		load_screen(scene_screen_map, 'WORLD MAP')
	elif button_name == 'vendors':
		load_screen(scene_screen_vendors, 'VENDORS')
	elif button_name == 'storage':
		load_screen(scene_screen_storage, 'STORAGE')


func load_screen(scene_to_load, header_title):
	var inst_scene = scene_to_load.instance()
	var container = get_node('/root/root/parent/container')
	var header = get_node('/root/root/parent/header/header')
	
	header.text = header_title
	
	Helper.clear_list(container)
		
	container.add_child(inst_scene)
