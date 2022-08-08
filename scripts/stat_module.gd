extends HBoxContainer

onready var left_side = get_node('left_side')
onready var right_side = get_node('right_side')


func build(dict: Dictionary):
	update_values(left_side, dict)
	update_values(right_side, dict)
	
	self.visible = true


func update_values(node: Node, dict: Dictionary):
	for child in node.get_children():
		var stat_key = child.name
		
		if stat_key in dict:
			child.get_node(stat_key).text = str(dict[stat_key])
			
			if stat_key == 'dmg_reduc':
				child.get_node(stat_key).text += '%'
			elif stat_key == 'atk_speed':
				child.get_node(stat_key).text += 's'
		else:
			child.visible = false
