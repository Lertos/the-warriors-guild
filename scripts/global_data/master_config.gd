extends Node

var config = {
	'default_attack_style': 'atk_crush',
	
	'hero_base_cost': {
		0: 100,
		1: 1000,
		2: 10000,
		3: 100000,
		4: 1000000,
	},
	
	#-----------------------
	# GEAR TYPES
	#-----------------------
	'gear_types': {
		'helmet': '',
		'chestplate': '',
		'boots': '',
		'gloves': '',
		'weapon': '',
		'necklace': '',
		'ring': '',
	},
	
	#-----------------------
	# HERO TALENTS
	#-----------------------
	'talent_bonuses': {
		'p_gold_from_monsters': 'Gold From Monsters',
		'p_travel_speed': 'Travel Speed',
		'p_food_cost': 'Food Cost Savings',
		'n_atk_slash': 'Slash ATK',
		'n_atk_stab': 'Stab ATK',
		'n_atk_crush': 'Crush ATK',
		'n_def_slash': 'Slash DEF',
		'n_def_stab': 'Stab DEF',
		'n_def_crush': 'Crush DEF',
		'n_health': 'Health',
		'p_chance_for_double_loot': 'Chance For Double Loot',
		'n_heal_additional_health': 'Health Back After Fighting',
		'p_exp_from_monsters': 'EXP From Monsters',
	},
	
	#-----------------------
	# REGIONS
	#-----------------------
	'regions': {
		'verdant_valley': 8,
		'fatal_forest': 8,
		'gruesome_grove': 8,
		'dangerous_depths': 8,
		'wretched_wasteland': 8,
		'gory_graveyard': 8,
		'satanic_swamp': 8,
		'perilous_peaks': 8,
		'menacing_mountain': 8,
		'vicious_void': 8,
	},
	
	#-----------------------
	# RARITIES
	#-----------------------
	'rarities': {
		'common': {
			'order': 0,
			'stat_multiplier': 1,
			'cost_multiplier': 1,
			'max_item_abilities': 0,
			'chance_of_each_ability': 10,
		},
		'uncommon': {
			'order': 1,
			'stat_multiplier': 1.02,
			'cost_multiplier': 1.04,
			'max_item_abilities': 1,
			'chance_of_each_ability': 15,
		},
		'rare': {
			'order': 2,
			'stat_multiplier': 1.04,
			'cost_multiplier': 1.08,
			'max_item_abilities': 2,
			'chance_of_each_ability': 25,
		},
		'legendary': {
			'order': 3,
			'stat_multiplier': 1.08,
			'cost_multiplier': 1.14,
			'max_item_abilities': 3,
			'chance_of_each_ability': 40,
		},
		'mythic': {
			'order': 4,
			'stat_multiplier': 1.16,
			'cost_multiplier': 1.22,
			'max_item_abilities': 3,
			'chance_of_each_ability': 70,
		},
	},
	
	#-----------------------
	# MODIFIERS
	#-----------------------
	'modifiers': {
		'unprotected': {
			'name': 'Unprotected',
			'drop_weight': 128,
			'gear_types': ['armor'],
			'p_health': -5,
			'p_all_def': -5,
		},
		'armored': {
			'name': 'Armored',
			'drop_weight': 128,
			'gear_types': ['armor'],
			'p_health': 2,
			'p_all_def': 2,
		},
		'warding': {
			'name': 'Warding',
			'drop_weight': 128,
			'gear_types': ['armor'],
			'p_health': 5,
			'p_all_def': 5,
			'p_dmg_reduc': 2,
		},
		'terrible': {
			'name': 'Terrible',
			'drop_weight': 128,
			'gear_types': ['weapon', 'armor', 'jewelry'],
			'p_health': -5,
			'p_damage': -5,
			'p_dmg_reduc': -5,
		},
		'awful': {
			'name': 'Awful',
			'drop_weight': 128,
			'gear_types': ['weapon', 'armor', 'jewelry'],
			'p_health': -2,
			'p_damage': -2,
			'p_dmg_reduc': -2,
		},
		'great': {
			'name': 'Great',
			'drop_weight': 128,
			'gear_types': ['weapon', 'armor', 'jewelry'],
			'p_health': 2,
			'p_damage': 2,
			'p_dmg_reduc': 2,
		},
		'superior': {
			'name': 'Superior',
			'drop_weight': 128,
			'gear_types': ['weapon', 'armor', 'jewelry'],
			'p_health': 5,
			'p_damage': 5,
			'p_dmg_reduc': 5,
		},
		'legendary': {
			'name': 'Legendary',
			'drop_weight': 128,
			'gear_types': ['weapon', 'armor', 'jewelry'],
			'p_health': 8,
			'p_damage': 8,
			'p_dmg_reduc': 8,
		},
		'mythical': {
			'name': 'Mythical',
			'drop_weight': 128,
			'gear_types': ['weapon', 'armor', 'jewelry'],
			'p_health': 10,
			'p_damage': 10,
			'p_dmg_reduc': 10,
		},
		'slow': {
			'name': 'Slow',
			'drop_weight': 128,
			'gear_types': ['weapon'],
			'p_speed': -8,
		},
		'fast': {
			'name': 'Fast',
			'drop_weight': 128,
			'gear_types': ['weapon'],
			'p_speed': 10,
		},
		'hasty': {
			'name': 'Hasty',
			'drop_weight': 128,
			'gear_types': ['weapon'],
			'p_speed': 15,
		},
		'weak': {
			'name': 'Weak',
			'drop_weight': 128,
			'gear_types': ['weapon'],
			'p_damage': -10,
			'p_max_hit': -5,
			'p_main_atk': -5,
		},
		'strong': {
			'name': 'Strong',
			'drop_weight': 128,
			'gear_types': ['weapon'],
			'p_damage': 5,
			'p_max_hit': 2,
			'p_main_atk': 5,
		},
		'hurtful': {
			'name': 'Hurtful',
			'drop_weight': 128,
			'gear_types': ['weapon'],
			'p_damage': 8,
			'p_max_hit': 5,
			'p_main_atk': 8,
		},
		'ruthless': {
			'name': 'Ruthless',
			'drop_weight': 128,
			'gear_types': ['weapon'],
			'p_damage': 10,
			'p_max_hit': 8,
			'p_main_atk': 10,
		},
		'flimsy': {
			'name': 'Flimsy',
			'drop_weight': 128,
			'gear_types': ['weapon', 'armor', 'jewelry'],
			'p_sell_price': -10,
		},
		'shiny': {
			'name': 'Shiny',
			'drop_weight': 128,
			'gear_types': ['weapon', 'armor', 'jewelry'],
			'p_sell_price': 10,
		},
		'rare': {
			'name': 'Rare',
			'drop_weight': 128,
			'gear_types': ['weapon', 'armor', 'jewelry'],
			'p_sell_price': 20,
		},
		'flawed': {
			'name': 'Flawed',
			'drop_weight': 128,
			'gear_types': ['weapon'],
			'p_min_hit': -8,
			'p_max_hit': -8,
		},
		'accurate': {
			'name': 'Accurate',
			'drop_weight': 128,
			'gear_types': ['weapon'],
			'p_min_hit': 8,
			'p_max_hit': 8,
			'p_main_atk': 5,
		},
		'precise': {
			'name': 'Precise',
			'drop_weight': 128,
			'gear_types': ['weapon'],
			'p_min_hit': 10,
			'p_max_hit': 10,
			'p_main_atk': 8,
		},
		'brittle': {
			'name': 'Brittle',
			'drop_weight': 128,
			'gear_types': ['armor', 'jewelry'],
			'p_health': -5,
			'p_speed': 2,
			'p_dmg_reduc': -2,
		},
		'solid': {
			'name': 'Solid',
			'drop_weight': 128,
			'gear_types': ['armor', 'jewelry'],
			'p_health': 5,
			'p_dmg_reduc': 2,
		},
		'tanky': {
			'name': 'Tanky',
			'drop_weight': 128,
			'gear_types': ['armor', 'jewelry'],
			'p_health': 10,
			'p_speed': -5,
			'p_dmg_reduc': 5,
		},
		'sporadic': {
			'name': 'Sporadic',
			'drop_weight': 128,
			'gear_types': ['weapon'],
			'p_min_hit': -15,
			'p_max_hit': 15,
			'p_sell_price': 5,
		},
		'insane': {
			'name': 'Insane',
			'drop_weight': 128,
			'gear_types': ['weapon'],
			'p_min_hit': -25,
			'p_max_hit': 25,
			'p_sell_price': 10,
		},
		'sluggish': {
			'name': 'Sluggish',
			'drop_weight': 128,
			'gear_types': ['weapon', 'jewelry'],
			'p_speed': -10,
			'p_main_atk': -2,
			'p_all_def': 5,
		},
		'nimble': {
			'name': 'Nimble',
			'drop_weight': 128,
			'gear_types': ['weapon', 'jewelry'],
			'p_speed': 10,
			'p_main_atk': 2,
			'p_all_def': -5,
		},
		'agile': {
			'name': 'Agile',
			'drop_weight': 128,
			'gear_types': ['weapon', 'jewelry'],
			'p_speed': 15,
			'p_main_atk': 5,
			'p_all_def': -8,
		},
		'risky': {
			'name': 'Risky',
			'drop_weight': 128,
			'gear_types': ['weapon'],
			'p_main_atk': 20,
			'p_all_def': -10,
		},
		'safe': {
			'name': 'Safe',
			'drop_weight': 128,
			'gear_types': ['weapon'],
			'p_main_atk': -10,
			'p_all_def': 20,
		},
	},
	
	#-----------------------
	# ABILITIES
	#-----------------------
	'abilities': {
		#Essentially under "levels" 0 means there's no levels
		#Attributes have "<_>" where "_" is one of the following:
		# x, y, z, xx, yy, zz, atk_stat, def_stat

		#-----------------------
		# EFFECTS
		#-----------------------
		'poisonous': {
			'name': 'Poisonous',
			'description': 'Deals <x>% of your opponents max health as damage each round that decreases by <y>% each round',
			'type': 'effect',
			'gear_types': ['weapon'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 15,
					'x': 1,
					'y': 0.5,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 20,
					'x': 2,
					'y': 0.5,
				},
				3: {
					'can_get_natural': true,
					'drop_weight': 32,
					'ability_chance': 25,
					'x': 4,
					'y': 1,
				},
				4: {
					'can_get_natural': true,
					'drop_weight': 16,
					'ability_chance': 30,
					'x': 6,
					'y': 1.5,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': 8,
					'ability_chance': 35,
					'x': 8,
					'y': 2,
				},
			}
		},
		'freezing': {
			'name': 'Freezing',
			'description': 'Slows your opponents attack speed by <x> seconds. They gain back <y> seconds each round',
			'type': 'effect',
			'gear_types': ['weapon'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 15,
					'x': 0.2,
					'y': 0.1,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 20,
					'x': 0.3,
					'y': 0.1,
				},
				3: {
					'can_get_natural': true,
					'drop_weight': 32,
					'ability_chance': 25,
					'x': 0.4,
					'y': 0.1,
				},
				4: {
					'can_get_natural': true,
					'drop_weight': 16,
					'ability_chance': 30,
					'x': 0.5,
					'y': 0.1,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': 8,
					'ability_chance': 35,
					'x': 0.6,
					'y': 0.1,
				},
			}
		},
		'venomous': {
			'name': 'Venomous',
			'description': 'Deals <x>% of your opponents max health as damage each round, as well as reducing their max health by <y>% each round',
			'type': 'effect',
			'gear_types': ['weapon'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 256,
					'ability_chance': 15,
					'x': 1,
					'y': 1,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 15,
					'x': 2,
					'y': 2,
				},
				3: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 20,
					'x': 3,
					'y': 3,
				},
				4: {
					'can_get_natural': true,
					'drop_weight': 32,
					'ability_chance': 20,
					'x': 4,
					'y': 4,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': 16,
					'ability_chance': 25,
					'x': 5,
					'y': 5,
				},
			}
		},
		'searing_flames': {
			'name': 'Searing Flames',
			'description': 'Deals <x>% of your opponents max health as damage each round that increases by <y>% each round',
			'type': 'effect',
			'gear_types': ['weapon'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 10,
					'x': 0.5,
					'y': 0.5,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 15,
					'x': 0.5,
					'y': 1,
				},
				3: {
					'can_get_natural': true,
					'drop_weight': 32,
					'ability_chance': 20,
					'x': 1,
					'y': 1,
				},
				4: {
					'can_get_natural': true,
					'drop_weight': 16,
					'ability_chance': 25,
					'x': 1.5,
					'y': 1,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': 8,
					'ability_chance': 30,
					'x': 1.5,
					'y': 1.5,
				},
			}
		},
		'bleeding': {
			'name': 'Bleeding',
			'description': 'Deals <x>% of your opponents max health as damage each turn. Every turn it has a <y>% chance to double',
			'type': 'effect',
			'gear_types': ['weapon'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 15,
					'x': 2,
					'y': 20,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 20,
					'x': 2,
					'y': 30,
				},
				3: {
					'can_get_natural': true,
					'drop_weight': 32,
					'ability_chance': 25,
					'x': 2,
					'y': 40,
				},
				4: {
					'can_get_natural': true,
					'drop_weight': 16,
					'ability_chance': 30,
					'x': 2,
					'y': 50,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': 8,
					'ability_chance': 35,
					'x': 2,
					'y': 60,
				},
			}
		},
		
		#-----------------------
		# PASSIVE
		#-----------------------
		'berserk': {
			'name': 'Berserk',
			'description': 'While your health is above <x>% health, take <y>% damage. While below <z>%, deal <xx>% damage',
			'type': 'passive',
			'gear_types': ['weapon', 'armor', 'jewelry'],
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 256,
					'ability_chance': 50,
					'x': 40,
					'y': 115,
					'z': 40,
					'xx': 140,
				}
			}
		},
		'patience': {
			'name': 'Patience',
			'description': 'If your opponent has higher <def_stat> than your <atk_stat>, lose <x>s attack speed but do <y>% more damage',
			'type': 'passive',
			'gear_types': ['armor', 'jewelry'],
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 256,
					'ability_chance': 50,
					'x': 1,
					'y': 20,
				}
			}
		},
		'living_dead': {
			'name': 'Living Dead',
			'description': 'When your health falls below <x>% of your max health, regain <y>% of your max health back, but lose <z>% of your defense stats',
			'type': 'passive',
			'gear_types': ['armor', 'jewelry'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 256,
					'ability_chance': 50,
					'x': 20,
					'y': 10,
					'z': 10,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 25,
					'y': 15,
					'z': 10,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': 64,
					'ability_chance': 50,
					'x': 30,
					'y': 20,
					'z': 10,
				},
			}
		},
		'resistance': {
			'name': 'Resistance',
			'description': 'Reduces the effects of venom and poison by <x>%',
			'type': 'passive',
			'gear_types': ['armor', 'jewelry'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 100,
					'x': 10,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 100,
					'x': 15,
				},
				3: {
					'can_get_natural': true,
					'drop_weight': 32,
					'ability_chance': 100,
					'x': 20,
				},
				4: {
					'can_get_natural': false,
					'drop_weight': 16,
					'ability_chance': 100,
					'x': 25,
				},
			}
		},
		'final_stand': {
			'name': 'Final Stand',
			'description': 'While below <x>% health, gain <y>% of your max health for 1 turn, then lose <z>% of your current health',
			'type': 'passive',
			'gear_types': ['jewelry'],
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 60,
					'x': 15,
					'y': 30,
					'z': 75,
				}
			}
		},
		'precision': {
			'name': 'Precision',
			'description': 'Deal <x>% normal damage, but for each successful hit in a row, deal <y>% additional damage',
			'type': 'passive',
			'gear_types': ['weapon'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 50,
					'x': 90,
					'y': 5,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 32,
					'ability_chance': 50,
					'x': 90,
					'y': 7.5,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': 16,
					'ability_chance': 50,
					'x': 95,
					'y': 10,
				},
			}
		},
		
		#-----------------------
		# ACTIVE
		#-----------------------
		'double_strike': {
			'name': 'Double Strike',
			'description': 'After each attack, strike again for <x>% damage',
			'type': 'active',
			'gear_types': ['weapon'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 15,
					'x': 10,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 15,
					'x': 15,
				},
				3: {
					'can_get_natural': true,
					'drop_weight': 32,
					'ability_chance': 20,
					'x': 20,
				},
				4: {
					'can_get_natural': true,
					'drop_weight': 16,
					'ability_chance': 20,
					'x': 25,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': 8,
					'ability_chance': 25,
					'x': 30,
				},
			}
		},
		'reckless': {
			'name': 'Reckless',
			'description': 'Increase damage by <x>% for this turn, then next turn take <y>% damage',
			'type': 'active',
			'gear_types': ['weapon'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 25,
					'x': 160,
					'y': 175,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 25,
					'x': 165,
					'y': 175,
				},
				3: {
					'can_get_natural': true,
					'drop_weight': 32,
					'ability_chance': 25,
					'x': 165,
					'y': 170,
				},
				4: {
					'can_get_natural': false,
					'drop_weight': 16,
					'ability_chance': 25,
					'x': 170,
					'y': 170,
				},
			}
		},
		'strengthen': {
			'name': 'Strengthen',
			'description': 'Increase <atk_stat> by <x>% for <y> turns',
			'type': 'active',
			'gear_types': ['weapon', 'jewelry'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 30,
					'x': 10,
					'y': 3,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 35,
					'x': 20,
					'y': 3,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': 32,
					'ability_chance': 35,
					'x': 20,
					'y': 4,
				},
			}
		},
		'weaken': {
			'name': 'Weaken',
			'description': 'Decrease your opponents <def_stat> by <x>% for <y> turns',
			'type': 'active',
			'gear_types': ['weapon', 'jewelry'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 30,
					'x': 10,
					'y': 3,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 35,
					'x': 20,
					'y': 3,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': 32,
					'ability_chance': 35,
					'x': 20,
					'y': 4,
				},
			}
		},
		'heal': {
			'name': 'Heal',
			'description': 'Heal for <x>% of your max health',
			'type': 'active',
			'gear_types': ['armor', 'jewelry'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 20,
					'x': 5,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 20,
					'x': 10,
				},
				3: {
					'can_get_natural': true,
					'drop_weight': 32,
					'ability_chance': 25,
					'x': 10,
				},
				4: {
					'can_get_natural': true,
					'drop_weight': 16,
					'ability_chance': 25,
					'x': 15,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': 8,
					'ability_chance': 35,
					'x': 15,
				},
			}
		},
		'cure': {
			'name': 'Cure',
			'description': 'Cures any poison and venom that you are suffering from',
			'type': 'active',
			'gear_types': ['armor', 'jewelry'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 20,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 25,
				},
				3: {
					'can_get_natural': true,
					'drop_weight': 32,
					'ability_chance': 30,
				},
				4: {
					'can_get_natural': false,
					'drop_weight': 32,
					'ability_chance': 35,
				},
			}
		},
		'vampirism': {
			'name': 'Vampirism',
			'description': 'Steals <x>% of your next attack damage back as health',
			'type': 'active',
			'gear_types': ['weapon'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 65,
					'x': 5,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 70,
					'x': 10,
				},
				3: {
					'can_get_natural': true,
					'drop_weight': 32,
					'ability_chance': 75,
					'x': 10,
				},
				4: {
					'can_get_natural': true,
					'drop_weight': 16,
					'ability_chance': 80,
					'x': 15,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': 8,
					'ability_chance': 85,
					'x': 15,
				},
			}
		},
		'devils_blessing': {
			'name': 'Devils Blessing',
			'description': 'Increase all defensive stats by <x>% for one turn but also lose <y>% of your current health',
			'type': 'active',
			'gear_types': ['armor', 'jewelry'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 35,
					'x': 10,
					'y': 8,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 35,
					'x': 12,
					'y': 6,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': 32,
					'ability_chance': 35,
					'x': 14,
					'y': 4,
				},
			}
		},
		'flinch': {
			'name': 'Flinch',
			'description': 'Your opponent loses their next turn',
			'type': 'active',
			'gear_types': ['weapon'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 15,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 20,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': 32,
					'ability_chance': 25,
				},
			}
		},
		'windswept': {
			'name': 'Windswept',
			'description': 'For the next <x> turns gain <y> seconds of additional attack speed',
			'type': 'active',
			'gear_types': ['armor', 'jewelry'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 30,
					'x': 2,
					'y': 0.4,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 35,
					'x': 2,
					'y': 0.5,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': 32,
					'ability_chance': 40,
					'x': 3,
					'y': 0.5,
				},
			}
		},
		'confusion': {
			'name': 'Confusion',
			'description': 'For the next <x> turns your opponent has <y>% chance to attack themselves instead, doing <z>% damage',
			'type': 'active',
			'gear_types': ['weapon', 'jewelry'],
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 256,
					'ability_chance': 33,
					'x': 3,
					'y': 33,
					'z': 50,
				}
			}
		},
		'blood_deal': {
			'name': 'Blood Deal',
			'description': 'Sacrifice <x>% of your maximum health to deal <y>% additional damage',
			'type': 'active',
			'gear_types': ['weapon', 'armor', 'jewelry'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 25,
					'x': 4,
					'y': 8,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 30,
					'x': 5,
					'y': 12,
				},
				3: {
					'can_get_natural': true,
					'drop_weight': 32,
					'ability_chance': 35,
					'x': 6,
					'y': 18,
				},
				4: {
					'can_get_natural': false,
					'drop_weight': 16,
					'ability_chance': 40,
					'x': 8,
					'y': 26,
				},
			}
		},
		'intimidation': {
			'name': 'Intimidation',
			'description': 'If your opponent has less max health, deal <x>% of their current health as additional damage',
			'type': 'active',
			'gear_types': ['weapon', 'armor', 'jewelry'],
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 33,
					'x': 4,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 64,
					'ability_chance': 33,
					'x': 8,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': 32,
					'ability_chance': 33,
					'x': 12,
				},
			}
		},
		
		#-----------------------
		# JEWELRY
		#-----------------------
		'gold_find': {
			'name': 'Gold Find',
			'description': 'Increase the gold received from monsters by <x>%',
			'type': 'jewerly',
			'gear_types': ['jewelry'],
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 5,
				},
				2: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 10,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 15,
				},
				4: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 20,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 25,
				},
			}
		},
		'saturation': {
			'name': 'Saturation',
			'description': 'Reduces the food cost when traveling by <x>%',
			'type': 'jewerly',
			'gear_types': ['jewelry'],
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 5,
				},
				2: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 10,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 15,
				},
				4: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 20,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 25,
				},
			}
		},
		'insightfulness': {
			'name': 'Insightfulness',
			'description': 'Increase the experience received from monsters by <x>%',
			'type': 'jewerly',
			'gear_types': ['jewelry'],
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 5,
				},
				2: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 10,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 15,
				},
				4: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 20,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 25,
				},
			}
		},
		'quick_footed': {
			'name': 'Quick-footed',
			'description': 'Reduces the travel time of a hero by <x>%',
			'type': 'jewerly',
			'gear_types': ['jewelry'],
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 5,
				},
				2: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 10,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 15,
				},
				4: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 20,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 25,
				},
			}
		},
		'economical': {
			'name': 'Economical',
			'description': 'Increase the chance of receiving double drops from monsters by <x>%',
			'type': 'jewerly',
			'gear_types': ['jewelry'],
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 5,
				},
				2: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 10,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 15,
				},
				4: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 20,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 25,
				},
			}
		},
		'seer': {
			'name': 'Seer',
			'description': 'Stop the activation of an enemies ability during combat',
			'type': 'jewerly',
			'gear_types': ['jewelry'],
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 30,
				},
				2: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 33,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 36,
				},
				4: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 39,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 42,
				},
				
			}
		},
		'preservation': {
			'name': 'Preservation',
			'description': 'Increases healing after a fight by <x>%',
			'type': 'jewerly',
			'gear_types': ['jewelry'],
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 5,
				},
				2: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 10,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 15,
				},
				4: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 20,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 25,
				},
			}
		},
		'arcane': {
			'name': 'Arcane',
			'description': 'Increases the chance for higher rarity weapons from monsters by <x>%',
			'type': 'jewerly',
			'gear_types': ['jewelry'],
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 5,
				},
				2: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 10,
				},
				3: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 15,
				},
				4: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 20,
				},
				5: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 100,
					'x': 25,
				},
			}
		},
	}
}
