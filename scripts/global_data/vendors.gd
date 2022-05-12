extends Node

#Have defaults and then if a save file exists, just update the values below
var vendors = {
	0: {
		'id': 'steward',
		'name': 'Steward',
		'img': 'vendor12',
		'locked': false,
		'renown_needed': 0,
	},
	1: {
		'id': 'merchant',
		'name': 'Merchant',
		'img': 'vendor8',
		'locked': false,
		'renown_needed': 0,
	},
	2: {
		'id': 'gardener',
		'name': 'Gardener',
		'img': 'vendor6',
		'locked': false,
		'renown_needed': 0,
	},
	3: {
		'id': 'messenger',
		'name': 'Messenger',
		'img': 'vendor9',
		'locked': false,
		'renown_needed': 0,
	},
	4: {
		'id': 'banker',
		'name': 'Banker',
		'img': 'vendor2',
		'locked': false,
		'renown_needed': 0,
	},
	5: {
		'id': 'carpenter',
		'name': 'Carpenter',
		'img': 'vendor5',
		'locked': true,
		'renown_needed': 500,
	},
	6: {
		'id': 'alchemist',
		'name': 'Alchemist',
		'img': 'vendor1',
		'locked': true,
		'renown_needed': 1000,
	},
	7: {
		'id': 'captain',
		'name': 'Captain',
		'img': 'vendor3',
		'locked': true,
		'renown_needed': 1500,
	},
	8: {
		'id': 'scientist',
		'name': 'Scientist',
		'img': 'vendor11',
		'locked': true,
		'renown_needed': 2000,
	},
	9: {
		'id': 'blacksmith',
		'name': 'Blacksmith',
		'img': 'vendor4',
		'locked': true,
		'renown_needed': 2500,
	},
	10: {
		'id': 'priest',
		'name': 'Priest',
		'img': 'vendor10',
		'locked': true,
		'renown_needed': 3000,
	},
	11: {
		'id': 'historian',
		'name': 'Historian',
		'img': 'vendor6',
		'locked': true,
		'renown_needed': 3500,
	},
}
