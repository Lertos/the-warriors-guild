extends Control

var scene_screen_home = preload("res://scenes/screen_home.tscn")
var scene_screen_heroes = preload("res://scenes/screen_heroes.tscn")
var scene_screen_map = preload("res://scenes/screen_map.tscn")
var scene_screen_vendors = preload("res://scenes/screen_vendors.tscn")

func _ready():
	var buttons = get_node('/root/root/parent/footer/buttons')
	
	buttons.get_node('home').connect('pressed', self, 'switch_screen', ['home'])
	buttons.get_node('heroes').connect('pressed', self, 'switch_screen', ['heroes'])
	buttons.get_node('map').connect('pressed', self, 'switch_screen', ['map'])
	buttons.get_node('vendors').connect('pressed', self, 'switch_screen', ['vendors'])
	buttons.get_node('storage').connect('pressed', self, 'switch_screen', ['storage'])


func show_popup(node):
	self.get_node('Popup/container/parent_vbox/placeholder').add_child(node)
	get_node('Popup').popup_centered_minsize()


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
		load_screen(scene_screen_map, 'STORAGE')


func load_screen(scene_to_load, header_title):
	var inst_scene = scene_to_load.instance()
	var container = get_node('/root/root/parent/container')
	var header = get_node('/root/root/parent/header/header')
	
	header.text = header_title
	
	for child in container.get_children():
		container.remove_child(child)
		child.queue_free()
		
	container.add_child(inst_scene)
