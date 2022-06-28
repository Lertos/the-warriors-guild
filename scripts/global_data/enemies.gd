extends Node


var enemies = {
	'verdant_valley': {
		0: {
			'id': 'valley_chicken',
			'name': 'Farm Chicken',
			'level': 1,
			'xp_given': 50,
			'stats': {
				'atk_stab': 1,
				'atk_slash': 2,
				'atk_crush': 3,
				'def_stab': 4,
				'def_slash': 5,
				'def_crush': 6,
				'health': 100,
				'atk_speed': 2.2,
				'dmg_reduc': 2.5,
				'min_hit': 5,
				'max_hit': 10,
			},
			'main_stat': 'atk_crush',
			'abilities': {
				0: {
					'name': 'Fire Breath',
					'description': 'Take 15% additional damage from the monster hit',
					'chance': '60'
				},
				1: {
					'name': 'Rooster Bark',
					'description': 'You lose your turn',
					'chance': '20'
				},
			},
			'drops': {
				#TODO
			}
		},
		1: {
			'id': 'valley_rabbit',
			'name': 'Wild Rabbit',
			'level': 3,
			'xp_given': 50,
			'stats': {
				'atk_stab': 1,
				'atk_slash': 2,
				'atk_crush': 3,
				'def_stab': 4,
				'def_slash': 5,
				'def_crush': 6,
				'health': 100,
				'atk_speed': 1.2,
				'dmg_reduc': 4.5,
				'min_hit': 23,
				'max_hit': 87,
			},
			'main_stat': 'atk_crush',
			'abilities': {

			},
		},
		2: {
			'id': 'valley_crab',
			'name': 'Elusive Crab',
			'level': 5,
			'xp_given': 50,
			'stats': {
				'atk_stab': 1,
				'atk_slash': 2,
				'atk_crush': 3,
				'def_stab': 4,
				'def_slash': 5,
				'def_crush': 6,
				'health': 100,
				'atk_speed': 1.2,
				'dmg_reduc': 4.5,
				'min_hit': 23,
				'max_hit': 87,
			},
			'main_stat': 'atk_crush',
			'abilities': {

			},
		},
		3: {
			'id': 'valley_goat',
			'name': 'Noisy Goat',
			'level': 7,
			'xp_given': 50,
			'stats': {
				'atk_stab': 1,
				'atk_slash': 2,
				'atk_crush': 3,
				'def_stab': 4,
				'def_slash': 5,
				'def_crush': 6,
				'health': 100,
				'atk_speed': 1.2,
				'dmg_reduc': 4.5,
				'min_hit': 23,
				'max_hit': 87,
			},
			'main_stat': 'atk_crush',
			'abilities': {

			},
		},
		4: {
			'id': 'valley_elemental',
			'name': 'Earth Elemental',
			'level': 9,
			'xp_given': 50,
			'stats': {
				'atk_stab': 1,
				'atk_slash': 2,
				'atk_crush': 3,
				'def_stab': 4,
				'def_slash': 5,
				'def_crush': 6,
				'health': 100,
				'atk_speed': 1.2,
				'dmg_reduc': 4.5,
				'min_hit': 23,
				'max_hit': 87,
			},
			'main_stat': 'atk_crush',
			'abilities': {

			},
		},
		5: {
			'id': 'valley_cat',
			'name': 'Rabid Cat',
			'level': 11,
			'xp_given': 50,
			'stats': {
				'atk_stab': 1,
				'atk_slash': 2,
				'atk_crush': 3,
				'def_stab': 4,
				'def_slash': 5,
				'def_crush': 6,
				'health': 100,
				'atk_speed': 1.2,
				'dmg_reduc': 4.5,
				'min_hit': 23,
				'max_hit': 87,
			},
			'main_stat': 'atk_crush',
			'abilities': {

			},
		},
		6: {
			'id': 'valley_slime',
			'name': 'Earthy Slime',
			'level': 13,
			'xp_given': 50,
			'stats': {
				'atk_stab': 1,
				'atk_slash': 2,
				'atk_crush': 3,
				'def_stab': 4,
				'def_slash': 5,
				'def_crush': 6,
				'health': 100,
				'atk_speed': 1.2,
				'dmg_reduc': 4.5,
				'min_hit': 23,
				'max_hit': 87,
			},
			'main_stat': 'atk_crush',
			'abilities': {

			},
		},
		7: {
			'id': 'valley_snake',
			'name': 'Giant Python',
			'level': 15,
			'xp_given': 50,
			'stats': {
				'atk_stab': 1,
				'atk_slash': 2,
				'atk_crush': 3,
				'def_stab': 4,
				'def_slash': 5,
				'def_crush': 6,
				'health': 100,
				'atk_speed': 1.2,
				'dmg_reduc': 4.5,
				'min_hit': 23,
				'max_hit': 87,
			},
			'main_stat': 'atk_crush',
			'abilities': {
				
			},
		},
	},
	'fatal_forest': {
		0: {
			'id': 'valley_chicken',
			'name': 'Farm Chicken',
			'level': 1,
			'xp_given': 50,
			'stats': {
				'atk_stab': 1,
				'atk_slash': 2,
				'atk_crush': 3,
				'def_stab': 4,
				'def_slash': 5,
				'def_crush': 6,
				'health': 100,
				'atk_speed': 1.2,
				'dmg_reduc': 4.5,
				'min_hit': 23,
				'max_hit': 87,
			},
			'main_stat': 'atk_crush',
			'abilities': {

			},
			'drops': {
				#TODO
			}
		},
		1: {
			'id': 'valley_chicken',
			'name': 'Farm Chicken',
			'level': 1,
			'xp_given': 50,
			'stats': {
				'atk_stab': 1,
				'atk_slash': 2,
				'atk_crush': 3,
				'def_stab': 4,
				'def_slash': 5,
				'def_crush': 6,
				'health': 100,
				'atk_speed': 1.2,
				'dmg_reduc': 4.5,
				'min_hit': 23,
				'max_hit': 87,
			},
			'main_stat': 'atk_crush',
			'abilities': {
				
			},
			'drops': {
				#TODO
			}
		},
	},
}
