extends VBoxContainer

onready var parent = get_node('header/vbox')

var vendor


func setup_screen(vendors_node):
	vendor = self.get_meta('vendor')
	
	setup_header(vendors_node)
	load_vendor_section()


func setup_header(vendors_node):
	update_player_gold()
	connect_back_button(vendors_node)
	
	var bottom_section = parent.get_node('bottom/hbox')
	
	bottom_section.get_node('vendor_avatar').icon = load('res://assets/vendors/avatars/' + vendor['avatar_img'] + '.png')
	
	bottom_section.get_node('info/real_name').text = vendor['real_name']
	bottom_section.get_node('info/vendor_title').text = vendor['name']


func connect_back_button(vendors_node):
	var back_button = parent.get_node('bottom/hbox/back')
	
	back_button.connect('pressed', vendors_node, 'show_all_vendors', [vendor['id']])


func update_player_gold():
	var players_gold = Global_Player.player['gold']
	var gold_node = parent.get_node('top/hbox/gold')
	
	gold_node.text = str(players_gold)


func load_vendor_section():
	pass
