extends Popup

const MAX_NAME_LENGTH = 22

onready var hero_buttons = get_node('margin/panel/vbox/avatar/vbox/vbox')
onready var name_node = get_node('margin/panel/vbox/name/vbox/name')
onready var gold_cost_node = get_node('margin/panel/vbox/gold_cost/hbox/gold_cost')

var selected_avatar_index = null
var number_regex = RegEx.new()


func _ready():
	number_regex.compile("^[a-zA-Z_ ]*$")


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
	var message = ''

	if name_node.text == '':
		message = 'The name field cannot be blank'
	elif !number_regex.search(name_node.text):
		message = 'The name field must only contain letters from A-Z. People don\'t have numbers in their names!'
	elif len(name_node.text) > MAX_NAME_LENGTH:
		message = 'The hero\'s name can only be upto ' + str(MAX_NAME_LENGTH) + ' characters long'
	elif selected_avatar_index == null:
		message = 'You must select an avatar for your new hero. We wouldn\'t want them to be faceless!'
	elif Global_Player.player['gold'] < int(gold_cost_node.text):
		message = 'You do not have enough gold to hire a new hero. They don\'t work for free!'
	
	var heroes = Global_Player.player['heroes']
	
	for hero in heroes:
		if name_node.text.to_upper() == heroes[hero]['name'].to_upper():
			message = 'One of your heroes already has the given name. We like our heroes to feel special, right?'
		elif str(selected_avatar_index) == str(heroes[hero]['avatar_index']):
			message = 'One of your heroes already has the selected avatar. They certainly don\'t have a twin sibling!'
		
	if message != '':
		get_node('/root/root').show_message_popup(message)
		return true
		
	return false


func hire_hero_pressed():
	if failed_validation():
		return
	
	create_new_hero()
	
	close_create_hero_popup()
	print('hero hired')


func close_create_hero_popup():
	emit_signal('popup_hide')
	

func create_new_hero():
	var new_hero_index = len(Global_Player.player['heroes'])
	var dict = {}
	
	dict['name'] = name_node.text
	dict['avatar_index'] = selected_avatar_index
	dict['level'] = 1
	dict['exp'] = 0
	
	dict['current_activity'] = {}
	dict['current_activity']['type'] = ''
	dict['current_activity']['region'] = ''
	dict['current_activity']['event_key'] = ''
	dict['current_activity']['time_done'] = 0
	
	# empty string means wearing nothing
	dict['gear'] = {}
	
	for key in Global_Player.player['gear']:
		dict['gear'][key] = ''

	# "p_" = percentage, "n_" = flat number
	dict['talent_bonuses'] = {}
	
	for key in MasterConfig.config['talent_bonuses']:
		dict['talent_bonuses'][key] = 0
	
	Global_Player.player['heroes'][new_hero_index] = dict
	
	get_node('/root/root').save_data('player')
	get_parent().load_screen()
