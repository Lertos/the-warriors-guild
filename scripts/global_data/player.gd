extends Node

#TODO - make default one
var player = {
	'guild_renown': 100,
	'gold': 24000,
	'heroes_unlocked': 2,
	
	#-----------------------
	# BASE STATS - HEROES USE THIS AS THEIR BASE STATS
	#-----------------------
	'base_stats': {
		'health': 10,
		'stab_atk': 1.2,
		'slash_atk': 1,
		'crush_atk': 2,
		'stab_def': 3,
		'slash_def': 4,
		'crush_def': 5,
		'dmg_reduc': 6,
	},
	
	#-----------------------
	# MAP
	#-----------------------
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
			'current': 0,
			'max': 10,
		},
		'perilous_peaks': {
			'current': 0,
			'max': 10,
		},
		'menacing_mountain': {
			'current': 0,
			'max': 10,
		},
		'vicious_void': {
			'current': 0,
			'max': 10,
		},
	},
	
	#-----------------------
	# HEROES
	#-----------------------
	'heroes': {
	
	},
	
	#-----------------------
	# MOUNTS
	#-----------------------
	'mounts': {
		
	},
	
	#-----------------------
	# FARMING
	#-----------------------
	'farming': {
		'plots_unlocked': 4,
	},
	
	#-----------------------
	# STORAGE
	#-----------------------
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
