extends PanelContainer

func update_record():
	var parent = get_node('margin/hbox')
	var vendor = self.get_meta('vendor')
	
	parent.get_node('monster').icon = load('res://assets/vendors/' + vendor['img'] + '.png')
	
	parent.get_node('info/name').text = vendor['name']
