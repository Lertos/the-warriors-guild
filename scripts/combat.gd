extends Node

#TODO: Implement this max turns below
const MAX_TURNS_BEFORE_DRAW = 20
const MAX_CRIT_DAMAGE_PERCENT_MULTIPLIER = 1.25

var rng = RandomNumberGenerator.new()

var hero_won

var hero_speed
var opponent_speed

var max_hero_hp
var max_opponent_hp

var current_hero
var current_opponent


func reset_values(hero, opponent):
	rng.randomize()
	
	hero_won = false
	
	current_hero = hero.duplicate(true)
	current_opponent = opponent.duplicate(true)
	
	current_hero['stats'] = Helper.get_hero_total_stats(current_hero)
	current_hero['main_stat'] = Helper.get_hero_main_stat(current_hero)
	
	#TODO: Get list of hero and opponent abilities to quickly reference them
	
	max_hero_hp = float(current_hero['stats']['health'])
	max_opponent_hp = float(current_opponent['stats']['health'])
	
	#Set the current health in the player stats now that we know the max health
	#TODO: UNCOMMENT THIS SO CURRENT HEALTH IS USED. FOR TESTING ITS EASIER IF THEY ALWAYS START AT 100% HP!
	#current_hero['stats']['health'] = current_hero['current_health']
	
	print('Hero starts with |- ' + str(current_hero['stats']['health']) + ' -| health')
	print('Opponent starts with |- ' + str(current_opponent['stats']['health']) + ' -| health \n')

	
func start_combat(hero, opponent):
	reset_values(hero, opponent)
	
	hero_speed = float(current_hero['stats']['atk_speed'])
	opponent_speed = float(current_opponent['stats']['atk_speed'])
	
	while float(current_hero['stats']['health']) > 0 && float(current_opponent['stats']['health']) > 0:
		var attacker = get_attacker(current_hero, current_opponent)
		var defender = get_defender(current_hero, current_opponent)

		before_turn(current_hero)
		before_turn(current_opponent)
		
		start_turn(attacker, defender)
		
		end_turn(current_opponent)
		end_turn(current_hero)
	
	if current_hero['stats']['health'] <= 0:
		print(current_hero['name'] + ' LOST...')
	else:
		print(current_hero['name'] + ' WON!')
		
	#Save the new current health points of the player
	save_hero_new_health(current_hero['name'])


func save_hero_new_health(hero_name):
	for hero_key in Global_Player.player['heroes']:
		if Global_Player.player['heroes'][hero_key]['name'].to_upper() == hero_name.to_upper():
			Global_Player.player['heroes'][hero_key]['current_health'] = float(current_hero['stats']['health'])
			get_node('/root/root').save_data('player')


func get_attacker(hero, opponent):
	if hero_speed < opponent_speed:
		opponent_speed -= hero_speed
		#print('Opponent Speed: ' + str(opponent_speed))
		hero_speed = 0
		return hero
	else:
		hero_speed -= opponent_speed
		#print('hero Speed: ' + str(hero_speed))
		opponent_speed = 0
		return opponent
	

func get_defender(hero, opponent):
	if hero_speed == 0:
		hero_speed = float(hero['stats']['atk_speed'])
		#print('hero Speed: ' + str(hero_speed))
		return opponent
	else:
		opponent_speed = float(opponent['stats']['atk_speed'])
		#print('Opponent Speed: ' + str(opponent_speed))
		return hero


#Checks for abilities, and effects that happen before the round starts
func before_turn(entity):
	pass


func start_turn(attacker, defender):
	print('\n---Start Turn---\n')
	
	var attacker_stat = attacker['main_stat']
	
	var attack_value = int(attacker['stats'][attacker_stat])
	var defend_value = int(defender['stats'][attacker_stat])
	
	#Gets the multiplier between 0 (miss), max-min + % damage, 1.25 (higher crit)
	var damage_multiplier = get_damage_multiplier(attack_value, defend_value)
	
	deal_damage(damage_multiplier, attacker, defender)


func end_turn(entity):
	pass


func get_damage_multiplier(attack_value: int, defend_value: int) -> float:
	var attack_roll = rng.randi_range(0, attack_value)
	var miss_value = defend_value * 0.15
	var multiplier = 1.0
	
	#If attack roll is below X% of defense value, roll for a miss
	if attack_roll < miss_value:
		multiplier = 0.0
	#If attack roll is above the defense value, roll for additional damage above 100%
	elif attack_roll > defend_value:
		print('+++ CRITICAL HIT +++')
		multiplier = min(float(attack_roll) / float(defend_value), MAX_CRIT_DAMAGE_PERCENT_MULTIPLIER)

	return multiplier


func deal_damage(damage_multiplier: float, attacker, defender):
	var damage = rng.randi_range(int(attacker['stats']['min_hit']), int(attacker['stats']['max_hit']))
	
	damage *= damage_multiplier
	
	if damage == 0.0:
		print(attacker['name'] + ' missed their attack!')
		return
	
	damage += get_bonus_damage(attacker, defender)
	damage = stepify(damage, 0.01)
	
	#print('BASE DAMAGE: ' + str(damage))
	
	var reduced_damage = damage - (damage * (float(defender['stats']['dmg_reduc'])/100))
	
	reduced_damage = stepify(reduced_damage, 0.01)
	
	print(attacker['name'] +  ' does ' + str(reduced_damage) + ' damage')
	
	defender['stats']['health'] = float(defender['stats']['health']) - reduced_damage
	
	print(defender['name'] + ' resulting HP: ' + str(defender['stats']['health']))


#Check for on-hit abilities, returning the total additional damage
func get_bonus_damage(attacker, defender):
	return 2


