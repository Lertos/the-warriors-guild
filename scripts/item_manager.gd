extends Node

var categories = ['weapon', 'armor', 'jewelry']

var abilities = {}
var modifiers = {}

var rng = RandomNumberGenerator.new()


func _ready():
	rng.randomize()
	
	create_drop_rate_lists()
	
	fill_list_and_get_total(MasterConfig.config['abilities'], abilities)
	fill_list_and_get_total(MasterConfig.config['modifiers'], modifiers)
	
	for i in range(0, 20):
		roll_for_ability('armor')


func create_drop_rate_lists():
	var drop_rate_lists = [abilities, modifiers]
	
	for list in drop_rate_lists:
		for category in categories:
			list[category] = {}
			
			list[category]['drop_rates'] = []
			list[category]['names'] = []
			list[category]['levels'] = []
			list[category]['total_drop_weight'] = 0


func fill_list_and_get_total(config_list: Dictionary, local_list: Dictionary):
	for category in categories:
		for key in config_list:
			if config_list[key]['gear_types'].has(category):
				add_item_to_list(local_list[category], config_list[key])


func add_item_to_list(local_list: Dictionary, list_item: Dictionary):
	var drop_weight
	var name
	
	if 'levels' in list_item:
		for level in list_item['levels']:
			drop_weight = list_item['levels'][level]['drop_weight']
			name = list_item['name']
			
			append_drop_weight_and_name(local_list, drop_weight, name, level)
	else:
		drop_weight = list_item['drop_weight']
		name = list_item['name']
		
		append_drop_weight_and_name(local_list, drop_weight, name)


func append_drop_weight_and_name(local_list: Dictionary, drop_weight: int, name: String, level := -1):
	local_list['total_drop_weight'] += int(drop_weight)
	
	local_list['drop_rates'].append(local_list['total_drop_weight'])
	local_list['names'].append(name)
	
	if level != -1:
		local_list['levels'].append(level)
	
	
func roll_for_ability(gear_type: String):
	var list_to_roll_in = abilities[gear_type]
	
	roll_the_list(list_to_roll_in)
	

func roll_the_list(list: Dictionary):
	var drop_rates = list['drop_rates']
	var names = list['names']
	var levels = list['levels']
	var total_drop_weight = list['total_drop_weight']
	
	var rand_int = rng.randi_range(0, total_drop_weight)
	
	for index in range(0, drop_rates.size()):
		if rand_int <= drop_rates[index]:
			#TODO: Fix so it actually returns the ability and the number
			var chance
			
			if index == 0:
				chance = (float(drop_rates[index]) / float(total_drop_weight))
				chance *= 100
			else:
				chance = (float(drop_rates[index] - drop_rates[index-1]) / float(total_drop_weight))
				chance *= 100
			
			var name = names[index]
			
			if levels.size() > 0:
				if levels[index] > 0:
					name += ' ' + Helper.get_roman_numeral(levels[index])
				
			print(name + ' --- ' + str(chance) + '% chance')
			break
