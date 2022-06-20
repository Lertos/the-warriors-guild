extends Node

#TODO - make default one
var player = {
	'guild_renown': 100,
	'gold': 1200,
	'heroes_unlocked': 2,
	'map': {
		'verdant_valley': {
			'current': 4,
			'max': 10,
		},
		'fatal_forest': {
			'current': 1,
			'max': 10,
		},
		'gruesome_grove': {
			'current': 1,
			'max': 10,
		},
		'dangerous_depths': {
			'current': 1,
			'max': 10,
		},
		'wretched_wasteland': {
			'current': 1,
			'max': 10,
		},
		'gory_graveyard': {
			'current': 1,
			'max': 10,
		},
		'satanic_swamp': {
			'current': 1,
			'max': 10,
		},
		'perilous_peaks': {
			'current': 1,
			'max': 10,
		},
		'menacing_mountain': {
			'current': 1,
			'max': 10,
		},
		'vicious_void': {
			'current': 0,
			'max': 10,
		},
	},
	'heroes': {
		0: {
			'name': 'Jack',
			'avatar_index': '1',
			'level': 1,
			'exp': 0,
			'current_activity': {
				'type': 'map',
				'region': 'valley',
				'event_key': 'valley_chicken',
				'time_done': 219038,
			},
			'gear': {
				'helmet': '',
				'chestplate': '',
				'boots': '',
				'gloves': '',
				'weapon1': '',
				'weapon2': '',
				'necklace': '',
				'ring1': '',
				'ring2': '',
			},
			'talent_bonuses': {
				# "p_" = percentage, "n_" = flat number
				'p_gold_from_monsters': '',
				'n_attack_speed': '',
				'p_travel_speed': '',
				'p_food_cost': '',
				'n_all_stats': '',
				'n_atk_slash': '',
				'n_atk_stab': '',
				'n_atk_crush': '',
				'n_def_slash': '',
				'n_def_stab': '',
				'n_def_crush': '',
				'n_health': '',
				'p_dmg_reduc': '',
				'p_chance_for_double_loot': '',
				'p_ability_activation_chance': '',
				'n_heal_additional_health': '',
				'p_exp_from_monsters': '',
			}
		}
	},
	'mounts': {
		
	},
	'farming': {
		'plots_unlocked': 4,
	},
	'storage': {
		'material': {
			'unlocked': 8,
			'max': 30,
			'categories': [
				'item'
			],
			'slots': [
				{
					'item_id': 'dul_ingot',
					'amount': 5,
					'rarity': 'common',
				},
				{
					'item_id': 'dul_ingot',
					'amount': 4,
					'rarity': 'uncommon',
				},
				{
					'item_id': 'dul_ingot',
					'amount': 2,
					'rarity': 'rare',
				},
				{
					'item_id': 'dul_ingot',
					'amount': 3,
					'rarity': 'legendary',
				},
				{
					'item_id': 'lud_ingot',
					'amount': 16,
					'rarity': 'mythic',
				},
			],
			'unlocks': {
				
			},
		},
		'jewelry': {
			'unlocked': 10,
			'max': 30,
			'categories': [
				'jewelry'
			],
			'slots': [
				
			],
			'unlocks': {
				
			},
		},
		'consumable': {
			'unlocked': 13,
			'max': 30,
			'categories': [
				'consumable'
			],
			'slots': [
			
			],
			'unlocks': {
				
			},
		},
		'gear': {
			'unlocked': 21,
			'max': 28,
			'categories': [
				'weapon',
				'armor'
			],
			'slots': [
				
			],
			'unlocks': {
				
			},
		},
		'food': {
			'unlocked': 20,
			'max': 22,
			'categories': [
				'food'
			],
			'slots': [
				
			],
			'unlocks': {
				
			},
		},
	},
}
