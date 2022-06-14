extends Node

var config = {
	#-----------------------
	# RARITIES
	#-----------------------
	'rarities': {
		'common': {
			'order': 0,
		},
		'uncommon': {
			'order': 1,
		},
		'rare': {
			'order': 2,
		},
		'legendary': {
			'order': 3,
		},
		'mythic': {
			'order': 4,
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
				0: {
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
	}
}
