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

		#-----------------------
		# EFFECTS
		#-----------------------
		'poisonous': {
			'name': 'Poisonous',
			'description': '',
			'type': 'effect',
			'levels': {
				1: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
					'z': 0,
				},
				2: {
					'can_get_natural': true,
					'drop_weight': 128,
					'ability_chance': 50,
					'x': 0,
					'y': 0,
					'z': 0,
				},
			}
		},
		'freezing': {
			'name': 'Freezing',
			'description': '',
			'type': 'effect',
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
		'venomous': {
			'name': 'Venomous',
			'description': '',
			'type': 'effect',
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
		'searing_flames': {
			'name': 'Searing Flames',
			'description': '',
			'type': 'effect',
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
		'bleeding': {
			'name': 'Bleeding',
			'description': '',
			'type': 'effect',
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
		#-----------------------
		# PASSIVE
		#-----------------------
		'berserk': {
			'name': 'Berserk',
			'description': '',
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
		'patience': {
			'name': 'Patience',
			'description': '',
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
		'living_dead': {
			'name': 'Living Dead',
			'description': '',
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
			'description': '',
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
		'final_stand': {
			'name': 'Final Stand',
			'description': '',
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
		'precision': {
			'name': 'Precision',
			'description': '',
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
		#-----------------------
		# ACTIVE
		#-----------------------
		'double_strike': {
			'name': 'Double Strike',
			'description': '',
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
		'reckless': {
			'name': 'Reckless',
			'description': '',
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
		'strengthen': {
			'name': 'Strengthen',
			'description': '',
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
		'weaken': {
			'name': 'Weaken',
			'description': '',
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
		'heal': {
			'name': 'Heal',
			'description': '',
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
		'cure': {
			'name': 'Cure',
			'description': '',
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
		'vampirism': {
			'name': 'Vampirism',
			'description': '',
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
		'devils_blessing': {
			'name': 'Devils Blessing',
			'description': '',
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
		'flinch': {
			'name': 'Flinch',
			'description': '',
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
		'windswept': {
			'name': 'Windswept',
			'description': '',
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
		'confusion': {
			'name': 'Confusion',
			'description': '',
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
			'description': '',
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
		'intimidation': {
			'name': 'Intimidation',
			'description': '',
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
	}
}
