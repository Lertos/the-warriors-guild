extends PanelContainer

func update_record():
	var parent = get_node('margin/hbox')
	var vendor = self.get_meta('vendor')
	
	parent.get_node('vendor_icon').icon = load('res://assets/vendors/icons/' + vendor['icon_img'] + '.png')
	parent.get_node('vendor_avatar').icon = load('res://assets/vendors/avatars/' + vendor['avatar_img'] + '.png')
	
	parent.get_node('info/name').text = vendor['name']
