extends Node

#TODO - make default one
var player = {
	'guild_renown': 100,
	'gold': 200,
	'map': {
		'valley': {
			'current': 3,
			'max': 10,
		},
		'forest': {
			'current': 0,
			'max': 10,
		},
		'grove': {
			'current': 0,
			'max': 10,
		},
		'depths': {
			'current': 0,
			'max': 10,
		},
		'wasteland': {
			'current': 0,
			'max': 10,
		},
		'graveyard': {
			'current': 0,
			'max': 10,
		},
		'swamp': {
			'current': 0,
			'max': 10,
		},
		'peaks': {
			'current': 0,
			'max': 10,
		},
		'mountain': {
			'current': 0,
			'max': 10,
		},
		'void': {
			'current': 0,
			'max': 10,
		},
	},
	'heroes': {
		0: {
			'name': 'Jack',
			'level': 1,
			'class': 'sapper',
			'activity': {
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
