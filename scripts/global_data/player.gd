extends Node

#TODO - make default one
var player = {
	'guild_renown': 100,
	'gold': 200,
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
			'level': 1,
			'activity': {
				'type': 'map', #Could also be 'dead' and time-done is when he revives
				'region': 'valley',
				'name': 'valley_chicken',
				'time_done': 219038, #OS TIME
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
					'item_id': 'dulite_ingot',
					'amount': 5,
					'rarity': 'common',
				},
				{
					'item_id': 'midite_ingot',
					'amount': 4,
					'rarity': 'uncommon',
				},
				{
					'item_id': 'dulite_ingot',
					'amount': 2,
					'rarity': 'rare',
				},
				{
					'item_id': 'dulite_ingot',
					'amount': 3,
					'rarity': 'legendary',
				},
				{
					'item_id': 'dulite_ingot',
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
