extends Node

#TODO - make default one
var player = {
	'guild_renown': 100,
	'gold': 24000,
	'max_gold': 30000,
	'heroes_unlocked': 2,
	
	#-----------------------
	# BASE STATS - HEROES USE THIS AS THEIR BASE STATS
	#-----------------------
	'base_stats': {
		'atk_stab': 50,
		'atk_slash': 50,
		'atk_crush': 50,
		'def_stab': 50,
		'def_slash': 50,
		'def_crush': 50,
		'health': 100,
		'atk_speed': 3.0,
		'dmg_reduc': 0,
		'min_hit': 6,
		'max_hit': 12,
	},
	
	#-----------------------
	# MAP
	#-----------------------
	'map': {
		'verdant_valley': {
			'current': 10,
			'max': 10,
		},
		'fatal_forest': {
			'current': 10,
			'max': 10,
		},
		'gruesome_grove': {
			'current': 10,
			'max': 10,
		},
		'dangerous_depths': {
			'current': 10,
			'max': 10,
		},
		'wretched_wasteland': {
			'current': 10,
			'max': 10,
		},
		'gory_graveyard': {
			'current': 10,
			'max': 10,
		},
		'satanic_swamp': {
			'current': 10,
			'max': 10,
		},
		'perilous_peaks': {
			'current': 10,
			'max': 10,
		},
		'menacing_mountain': {
			'current': 10,
			'max': 10,
		},
		'vicious_void': {
			'current': 10,
			'max': 10,
		},
	},
	
	#-----------------------
	# HEROES
	#-----------------------
	'heroes': {
	
	},
	
	#-----------------------
	# STORAGE
	#-----------------------
	'storage': {
		#Types: crafting, junk
		'materials': {
			'unlocked': 8,
			'max': 30,
			'slots': [
				
			],
		},
		#Types: necklace, ring
		'jewelry': {
			'unlocked': 10,
			'max': 30,
			'slots': [
				
			],
		},
		#Types: potion
		'consumables': {
			'unlocked': 13,
			'max': 30,
			'slots': [
			
			],
		},
		#Types: weapon
		'weapons': {
			'unlocked': 21,
			'max': 30,
			'slots': [
				{
					'item_id': 'stone_dagger',
					'identified': false,
					'amount': 2,
				},
			],
		},
		#Types: helmet, chestplate, gloves, boots
		'armor': {
			'unlocked': 4,
			'max': 30,
			'slots': [
				{
					'item_id': 'cloth_helmet',
					'identified': false,
					'amount': 3,
				},
				{
					'item_id': 'cloth_helmet',
					'identified': true,
					'amount': 1,
					'rarity': 'legendary',
					'modifier': 'superior',
					'abilities': {
						'poisonous': 2,
						'freezing': 1,
					},
				},
			],
		},
	},
}
