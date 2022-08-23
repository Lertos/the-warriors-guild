extends Node

#Upgrades are to be configured here, and added to the player config and assigned a default level of 0

var vendors = {
	0: {
		'id': 'steward',
		'name': 'Steward',
		'real_name': 'Mai Cervint',
		'icon_img': 'icon_steward',
		'avatar_img': 'avatar_steward',
		'locked': false,
		'renown_needed': 0,
		#p_gold_from_quests
		'upgrades': {
			'p_gold_from_quests': {
				'display_name': '',
				'description': '',
				'start_level': 0,
				'max_level': 15,
				'bonus_per_level': 2,
				'cost_per_level': 200,
				'cost_multiplier_per_level': 1.1,
			},
			
		},
	},
	1: {
		'id': 'merchant',
		'name': 'Merchant',
		'real_name': 'Fayr Deels',
		'icon_img': 'icon_merchant',
		'avatar_img': 'avatar_merchant',
		'locked': false,
		'renown_needed': 0,
	},
	2: {
		'id': 'messenger',
		'name': 'Messenger',
		'real_name': 'Dailey Bowness',
		'icon_img': 'icon_messenger',
		'avatar_img': 'avatar_messenger',
		'locked': false,
		'renown_needed': 0,
	},
	3: {
		'id': 'alchemist',
		'name': 'Alchemist',
		'real_name': 'Eyemak Poshun',
		'icon_img': 'icon_alchemist',
		'avatar_img': 'avatar_alchemist',
		'locked': false,
		'renown_needed': 0,
	},
	4: {
		'id': 'banker',
		'name': 'Banker',
		'real_name': 'Storen Kash',
		'icon_img': 'icon_banker',
		'avatar_img': 'avatar_banker',
		'locked': false,
		'renown_needed': 0,
	},
	5: {
		'id': 'captain',
		'name': 'Captain',
		'real_name': 'Hiro Leedore',
		'icon_img': 'icon_captain',
		'avatar_img': 'avatar_captain',
		'locked': false,
		'renown_needed': 0,
	},
	6: {
		'id': 'carpenter',
		'name': 'Carpenter',
		'real_name': 'Kuttin Wud',
		'icon_img': 'icon_carpenter',
		'avatar_img': 'avatar_carpenter',
		'locked': true,
		'renown_needed': 500, #Unlocks starting tier 2
	},
	7: {
		'id': 'jeweler',
		'name': 'Jeweler',
		'real_name': 'Shyne Bleeng',
		'icon_img': 'icon_jeweler',
		'avatar_img': 'avatar_jeweler',
		'locked': true,
		'renown_needed': 1000, #Unlocks starting tier 3
	},
	8: {
		'id': 'enchanter',
		'name': 'Enchanter',
		'real_name': 'Geer Mayjik',
		'icon_img': 'icon_enchanter',
		'avatar_img': 'avatar_enchanter',
		'locked': true,
		'renown_needed': 1500, #Unlocks starting tier 4
	},
	9: {
		'id': 'blacksmith',
		'name': 'Blacksmith',
		'real_name': 'Anne Vell',
		'icon_img': 'icon_blacksmith',
		'avatar_img': 'avatar_blacksmith',
		'locked': true,
		'renown_needed': 2000, #Unlocks starting tier 5
	},
}
