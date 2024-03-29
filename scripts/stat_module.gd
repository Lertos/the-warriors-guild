extends HBoxContainer

onready var left_side = get_node('left_side')
onready var right_side = get_node('right_side')


func build(dict: Dictionary, main_stat := ''):
	_update_values(left_side, dict, main_stat)
	_update_values(right_side, dict, main_stat)

	self.visible = true


#============================
#
# PRIVATE FUNCTIONS
#
#============================


func _update_values(node: Node, dict: Dictionary, main_stat: String):
	for child in node.get_children():
		var stat_key = child.name
		
		child.visible = true
		
		if stat_key in dict:
			if str(dict[stat_key]) == '0':
				child.visible = false
			else:
				child.get_node(stat_key).text = str(dict[stat_key])
				
				if stat_key == 'dmg_reduc':
					child.get_node(stat_key).text += '%'
				elif stat_key == 'atk_speed':
					child.get_node(stat_key).text += 's'
					
				if main_stat != '':
					if main_stat == stat_key:
						Helper.change_label_font_color(child.get_node(stat_key), 'stat_highlight')
		else:
			child.visible = false
