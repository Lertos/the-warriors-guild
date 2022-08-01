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
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
				},
			}
		},
		'freezing': {
			'name': 'Freezing',
			'description': 'Slows your opponents attack speed by <x> seconds. They gain back <y> seconds each round',
			'type': 'effect',
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
				}
			}
		},
		'venomous': {
			'name': 'Venomous',
			'description': 'Deals <x>% of your opponents max health as damage each round, as well as reducing their max health by <y>% each round',
			'type': 'effect',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
				}
			}
		},
		'searing_flames': {
			'name': 'Searing Flames',
			'description': 'Deals <x>% of your opponents max health as damage each round that increases by <y>% each round',
			'type': 'effect',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
				}
			}
		},
		'bleeding': {
			'name': 'Bleeding',
			'description': 'Deals <x>% of your opponents max health as damage. Each turn it has a <y>% chance to double',
			'type': 'effect',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
				}
			}
		},
		
		#-----------------------
		# PASSIVE
		#-----------------------
		'berserk': {
			'name': 'Berserk',
			'description': 'While your health is above <x>% health, take <y>% damage. While below <z>%, deal <xx>% damage',
			'type': 'passive',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
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
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
				}
			}
		},
		'living_dead': {
			'name': 'Living Dead',
			'description': 'When your health falls below <x>% of your max health, regain <y>% of your max health back, but lose <z>% of your defense stats',
			'type': 'passive',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
					'z': 0,
				}
			}
		},
		'resistance': {
			'name': 'Resistance',
			'description': 'Reduces the effects of venom and poison by <x>%',
			'type': 'passive',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
				}
			}
		},
		'final_stand': {
			'name': 'Final Stand',
			'description': 'While below <x>% health, gain <y>% of your max health for 1 turn, then lose <z>% of your current health',
			'type': 'passive',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
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
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
				}
			}
		},
		
		#-----------------------
		# ACTIVE
		#-----------------------
		'double_strike': {
			'name': 'Double Strike',
			'description': 'After each attack, strike again for <x>% damage',
			'type': 'active',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
				}
			}
		},
		'reckless': {
			'name': 'Reckless',
			'description': 'Increase damage by <x>% for this turn, then next turn take <y>% damage',
			'type': 'active',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 150,
					'y': 175,
				}
			}
		},
		'strengthen': {
			'name': 'Strengthen',
			'description': 'Increase <atk_stat> by <x>% for <y> turns',
			'type': 'active',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
				}
			}
		},
		'weaken': {
			'name': 'Weaken',
			'description': 'Decrease your opponents <def_stat> by <x>% for <y> turns',
			'type': 'active',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
				}
			}
		},
		'heal': {
			'name': 'Heal',
			'description': 'Heal for <x>% of your max health',
			'type': 'active',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
				}
			}
		},
		'cure': {
			'name': 'Cure',
			'description': 'Cures any poison and venom that you are suffering from',
			'type': 'active',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
				}
			}
		},
		'vampirism': {
			'name': 'Vampirism',
			'description': 'Steals <x>% of your next attack damage back as health',
			'type': 'active',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
				}
			}
		},
		'devils_blessing': {
			'name': 'Devils Blessing',
			'description': 'Increase all defensive stats by <x>% for one turn but also lose <y>% of your current health',
			'type': 'active',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
				}
			}
		},
		'flinch': {
			'name': 'Flinch',
			'description': 'Your opponent loses their next turn',
			'type': 'active',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
				}
			}
		},
		'windswept': {
			'name': 'Windswept',
			'description': 'For the next <x> turns gain <y> seconds of additional attack speed',
			'type': 'active',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
				}
			}
		},
		'confusion': {
			'name': 'Confusion',
			'description': 'For the next <x> turns your opponent has <y>% chance to attack themselves instead, doing <z>% damage',
			'type': 'active',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
					'z': 0,
				}
			}
		},
		'blood_deal': {
			'name': 'Blood Deal',
			'description': 'Sacrifice <x>% of your maximum health to deal <y>% additional damage',
			'type': 'active',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
				}
			}
		},
		'intimidation': {
			'name': 'Intimidation',
			'description': 'If your opponent has less max health, deal <x>% of their current health ',
			'type': 'active',
			'levels': {
				0: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
				}
			}
		},
		
		#-----------------------
		# JEWELRY
		#-----------------------
		'gold_find': {
			'name': 'Gold Find',
			'description': 'Increase the gold received from monsters by <x>%',
			'type': 'jewerly',
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 50,
					'x': 0,
				},
			}
		},
		'saturation': {
			'name': 'Saturation',
			'description': 'Reduces the food cost when traveling by <x>%',
			'type': 'jewerly',
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 50,
					'x': 0,
				},
			}
		},
		'insightfulness': {
			'name': 'Insightfulness',
			'description': 'Increase the experience received from monsters by <x>%',
			'type': 'jewerly',
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 50,
					'x': 0,
				},
			}
		},
		'quick_footed': {
			'name': 'Quick-footed',
			'description': 'Reduces the travel time of a hero by <x>%',
			'type': 'jewerly',
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 50,
					'x': 0,
				},
			}
		},
		'economical': {
			'name': 'Economical',
			'description': 'Increase the chance of receiving double drops from monsters by <x>%',
			'type': 'jewerly',
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 50,
					'x': 0,
				},
			}
		},
		'seer': {
			'name': 'Seer',
			'description': 'Has a <x>% chance to stop the activation of an enemies ability during combat',
			'type': 'jewerly',
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 50,
					'x': 0,
				},
			}
		},
		'preservation': {
			'name': 'Preservation',
			'description': 'Increases healing after a fight by <x>%',
			'type': 'jewerly',
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 50,
					'x': 0,
				},
			}
		},
		'arcane': {
			'name': 'Arcane',
			'description': 'Increases the chance for higher rarity weapons from monsters by <x>%',
			'type': 'jewerly',
			'levels': {
				1: {
					'can_get_natural': false,
					'drop_weight': -1,
					'ability_chance': 50,
					'x': 0,
				},
			}
		},
	}
}
