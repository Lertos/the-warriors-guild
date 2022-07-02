extends Node

const MAX_TURNS_BEFORE_DRAW = 20

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
	current_hero['main_stat'] = get_heros_main_stat(current_hero)
	
	#TODO: Get list of hero and opponent abilities to quickly reference them
	
	max_hero_hp = current_hero['stats']['health']
	max_opponent_hp = current_opponent['stats']['health']
	
	#Set the current health in the player stats now that we know the max health
	current_hero['stats']['health'] = current_hero['current_health']
	
	print('Hero starts with |- ' + str(current_hero['stats']['health']) + ' -| health')
	print('Opponent starts with |- ' + str(current_opponent['stats']['health']) + ' -| health \n')

	
func start_combat(hero, opponent):
	reset_values(hero, opponent)
	
	hero_speed = current_hero['stats']['atk_speed']
	opponent_speed = current_opponent['stats']['atk_speed']
	
	while current_hero['stats']['health'] > 0 && current_opponent['stats']['health'] > 0:
		var attacker = get_attacker(current_hero, current_opponent)
		var defender = get_defender(current_hero, current_opponent)

		before_turn(current_hero)
		before_turn(current_opponent)
		
		start_turn(attacker, defender)
		
		end_turn(current_opponent)
		end_turn(current_hero)
		
		print('\n---End Turn---\n')
	
	if current_hero['stats']['health'] <= 0:
		print(current_hero['name'] + ' LOST...')
	else:
		print(current_hero['name'] + ' WON!')
		
	#Save the new current health points of the player
	save_hero_new_health(current_hero['name'])


func save_hero_new_health(hero_name):
	for hero_key in Global_Player.player['heroes']:
		if Global_Player.player['heroes'][hero_key]['name'].to_upper() == hero_name.to_upper():
			Global_Player.player['heroes'][hero_key]['current_health'] = current_hero['stats']['health']
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
		hero_speed = hero['stats']['atk_speed']
		#print('hero Speed: ' + str(hero_speed))
		return opponent
	else:
		opponent_speed = opponent['stats']['atk_speed']
		#print('Opponent Speed: ' + str(opponent_speed))
		return hero


#Checks for abilities, and effects that happen before the round starts
func before_turn(entity):
	pass


func start_turn(attacker, defender):
	print('\n---Start Turn---\n')
	
	var attacker_stat = attacker['main_stat']
	
	var attack_value = attacker['stats'][attacker_stat]
	var defend_value = defender['stats'][attacker_stat]
	
	if does_attack_hit(attack_value, defend_value):
		deal_damage(attacker, defender)
	else:
		print(attacker['name'] + ' missed their attack!')


func end_turn(entity):
	pass


func get_heros_main_stat(entity):
	#TODO: Get this from the weapon type of the given hero's equipped weapon
	#TODO: If no weapon equipped, use "atk_crush"
	return 'atk_stab'


func does_attack_hit(attack_value, defend_value):
	var attack_roll = rng.randi_range(0, attack_value * 1.25) 
	var defend_roll = rng.randi_range(0, defend_value)

	return attack_roll > defend_roll


func deal_damage(attacker, defender):
	var damage = rng.randi_range(attacker['stats']['min_hit'], attacker['stats']['max_hit'])
	damage += get_bonus_damage(attacker, defender)
	
	print('BASE DAMAGE: ' + str(damage))
	
	var reduced_damage = damage - (damage * (defender['stats']['dmg_reduc']/100))

	print(attacker['name'] +  ' does ' + str(reduced_damage) + ' damage')
	
	defender['stats']['health'] -= reduced_damage
	
	print(defender['name'] + ' resulting HP: ' + str(defender['stats']['health']))


#Check for on-hit abilities, returning the total additional damage
func get_bonus_damage(attacker, defender):
	return 2


