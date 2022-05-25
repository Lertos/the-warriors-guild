extends Node

const MAX_TURNS_BEFORE_DRAW = 20

var rng = RandomNumberGenerator.new()

var player_won = false

var player_speed
var opponent_speed

var max_player_hp
var max_opponent_hp

var current_player
var test_player = {
	'name': 'Lob Rowe',
	'attack_type': 'stab', 
	'atk_stab': 9,
	'atk_slash': 6,
	'atk_crush': 10,
	'def_stab': 13,
	'def_slash': 15,
	'def_crush': 4,
	'health': 30,
	'max_health': 30,
	'atk_speed': 2.4,
	'dmg_reduc': 3,
	'min_hit': 3,
	'max_hit': 12,
}

var current_opponent
var test_opponent = {
	'name': 'Plump Chicken',
	'attack_type': 'crush',
	'atk_stab': 4,
	'atk_slash': 2,
	'atk_crush': 6,
	'def_stab': 6,
	'def_slash': 7,
	'def_crush': 8,
	'health': 24,
	'atk_speed': 2.7,
	'dmg_reduc': 1,
	'min_hit': 1,
	'max_hit': 8,
	'main_stat': 'atk_crush',
}


func _ready():
	rng.randomize()
	
	current_player = test_player.duplicate()
	current_opponent = test_opponent.duplicate()
	
	current_player['main_stat'] = get_players_main_stat(current_player)
	
	#TODO: Get list of player and opponent abilities to quickly reference them
	
	max_player_hp = current_player['max_health']
	max_opponent_hp = current_opponent['health']
	
	print('Player starts with |- ' + str(current_player['health']) + ' -| health')
	print('Opponent starts with |- ' + str(current_opponent['health']) + ' -| health \n')
	
	start_combat(current_player, current_opponent)
	
	
func start_combat(player, opponent):
	player_speed = player['atk_speed']
	opponent_speed = opponent['atk_speed']
	
	while player['health'] > 0 && opponent['health'] > 0:
		var attacker = get_attacker(player, opponent)
		var defender = get_defender(player, opponent)

		before_turn(player)
		before_turn(opponent)
		
		start_turn(attacker, defender)
		
		end_turn(opponent)
		end_turn(player)
		
		print('\n---End Turn---\n')
	
	if player['health'] <= 0:
		print('Player LOST...')
	else:
		print('Player WON!')
	

func get_attacker(player, opponent):
	if player_speed < opponent_speed:
		opponent_speed -= player_speed
		print('Opponent Speed: ' + str(opponent_speed))
		player_speed = 0
		return player
	else:
		player_speed -= opponent_speed
		print('Player Speed: ' + str(player_speed))
		opponent_speed = 0
		return opponent
	

func get_defender(player, opponent):
	if player_speed == 0:
		player_speed = player['atk_speed']
		print('Player Speed: ' + str(player_speed))
		return opponent
	else:
		opponent_speed = opponent['atk_speed']
		print('Opponent Speed: ' + str(opponent_speed))
		return player


#Checks for abilities, and effects that happen before the round starts
func before_turn(entity):
	pass
	
func start_turn(attacker, defender):
	print('\n---Start Turn---\n')
	
	var attacker_stat = attacker['main_stat']
	
	var attack_value = attacker[attacker_stat]
	var defend_value = defender[attacker_stat]
	
	if does_attack_hit(attack_value, defend_value):
		deal_damage(attacker, defender)
	else:
		print(attacker['name'] + ' missed their attack!')


func end_turn(entity):
	pass


func get_players_main_stat(entity):
	#TODO: Get this from the weapon type of the given hero's equipped weapon
	return 'atk_stab'


func does_attack_hit(attack_value, defend_value):
	var attack_roll = rng.randi_range(0, attack_value * 1.25) 
	var defend_roll = rng.randi_range(0, defend_value)

	return attack_roll > defend_roll


func deal_damage(attacker, defender):
	var damage = rng.randi_range(attacker['min_hit'], attacker['max_hit'])
	damage += get_bonus_damage(attacker, defender)
	
	print('BASE DAMAGE: ' + str(damage))
	
	var reduced_damage = damage - (damage * (defender['dmg_reduc']/100))

	print(attacker['name'] +  ' does ' + str(reduced_damage) + ' damage')
	
	defender['health'] -= reduced_damage
	
	print(defender['name'] + ' resulting HP: ' + str(defender['health']))


#Check for on-hit abilities, returning the total additional damage
func get_bonus_damage(attacker, defender):
	return 2


