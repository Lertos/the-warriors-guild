extends PanelContainer

onready var parent = get_node('margin/hbox')

var vendor


func setup_record(parent_script_node):
	vendor = self.get_meta('vendor')
	
	parent.get_node('vendor_icon').icon = load('res://assets/vendors/icons/' + vendor['icon_img'] + '.png')
	parent.get_node('vendor_avatar').icon = load('res://assets/vendors/avatars/' + vendor['avatar_img'] + '.png')
	
	parent.get_node('info/name').text = vendor['name']
	
	parent.get_node('vendor_icon').connect('pressed', parent_script_node, 'load_vendor_screen', [vendor['id']])
