extends Popup

onready var hero_buttons = get_node('margin/panel/vbox/avatar/vbox/vbox')
onready var name_node = get_node('margin/panel/vbox/name/vbox/name')
onready var gold_cost_node = get_node('margin/panel/vbox/gold_cost/hbox/gold_cost')

var selected_avatar_index = null


func load_page(index: int):
	reset_screen()
	set_gold_cost(index)
	
	for row in hero_buttons.get_children():
		for hero in row.get_children():
			hero.connect('pressed', self, 'set_active_avatar', [int(hero.name)])
	
	
func reset_screen():
	name_node.text = ''
	selected_avatar_index = null
	reset_active_avatar()


func reset_active_avatar():
	for row in hero_buttons.get_children():
		for hero in row.get_children():
			Helper.reset_border_color(hero)


func set_gold_cost(index: int):
	if index in MasterConfig.config['hero_base_cost']:
		gold_cost_node.text = str(MasterConfig.config['hero_base_cost'][index])


func set_active_avatar(index: int):
	reset_active_avatar()
	
	for row in hero_buttons.get_children():
		for hero in row.get_children():
			if str(hero.name) == str(index):
				Helper.change_border_color(hero, 'selected')
				selected_avatar_index = index


func failed_validation():
	if name_node.text == '':
		get_node('/root/root').show_message_popup('TESTING')
		return false
	elif selected_avatar_index == null:
		return false
	elif Global_Player.player['gold'] < int(gold_cost_node.text):
		return false


func hire_hero_pressed():
	if failed_validation():
		return
	
	print(str(selected_avatar_index))
	
	close_create_hero_popup()
	print('hero hired')


func close_create_hero_popup():
	get_node('/root/root/popup_blackout').visible = false
	self.visible = false
