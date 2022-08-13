extends Node


var enemies = {
   "dangerous_depths":{
	  "0":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"depths_elemental",
		 "main_stat":"atk_stab",
		 "name":"Dark Elemental",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "1":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"depths_slime",
		 "main_stat":"atk_stab",
		 "name":"Shadow Slime",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "2":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"depths_eye",
		 "main_stat":"atk_stab",
		 "name":"Watchful Eye",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "3":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"depths_tombstone",
		 "main_stat":"atk_stab",
		 "name":"Living Tomb",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "4":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"depths_chest",
		 "main_stat":"atk_stab",
		 "name":"Mimic",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "5":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"depths_skull",
		 "main_stat":"atk_stab",
		 "name":"Haunted Skull",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "6":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"depths_golem",
		 "main_stat":"atk_stab",
		 "name":"Sentry Golem",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "7":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"depths_shield",
		 "main_stat":"atk_stab",
		 "name":"Doolism",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  }
   },
   "fatal_forest":{
	  "0":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"forest_frog",
		 "main_stat":"atk_stab",
		 "name":"Jungle Bullfrog",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "1":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"forest_gecko",
		 "main_stat":"atk_stab",
		 "name":"Grimy Gecko",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "2":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"forest_dwarf",
		 "main_stat":"atk_stab",
		 "name":"Dwarf Warrior",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "3":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"forest_slime",
		 "main_stat":"atk_stab",
		 "name":"Tree Slime",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "4":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"forest_mushroom",
		 "main_stat":"atk_stab",
		 "name":"Treeshroom",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "5":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"forest_totem",
		 "main_stat":"atk_stab",
		 "name":"Earth Totem",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "6":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"forest_skull",
		 "main_stat":"atk_stab",
		 "name":"Poisonous Skull",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "7":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"forest_eye",
		 "main_stat":"atk_stab",
		 "name":"Kuhthooloo",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  }
   },
   "gory_graveyard":{
	  "0":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"graveyard_bat",
		 "main_stat":"atk_stab",
		 "name":"Feral Bat",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "1":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"graveyard_cat",
		 "main_stat":"atk_stab",
		 "name":"Death Rat",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "2":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"graveyard_ghast",
		 "main_stat":"atk_stab",
		 "name":"Kindred Spirit",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "3":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"graveyard_zombie",
		 "main_stat":"atk_stab",
		 "name":"Starved Zombie",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "4":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"graveyard_skeleton",
		 "main_stat":"atk_stab",
		 "name":"Arcane Bones",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "5":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"graveyard_flesh_eater",
		 "main_stat":"atk_stab",
		 "name":"Flesh Eater",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "6":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"graveyard_count_dracula",
		 "main_stat":"atk_stab",
		 "name":"Kont Drukola",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "7":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"graveyard_reaper",
		 "main_stat":"atk_stab",
		 "name":"Grem Ripper",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  }
   },
   "gruesome_grove":{
	  "0":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"grove_longbeak",
		 "main_stat":"atk_stab",
		 "name":"Wild Longbeak",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "1":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"grove_ghast",
		 "main_stat":"atk_stab",
		 "name":"Gassy Ghast",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "2":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"grove_sentry",
		 "main_stat":"atk_stab",
		 "name":"Grove Turret",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "3":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"grove_head",
		 "main_stat":"atk_stab",
		 "name":"Fleshy Lump",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "4":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"grove_golem",
		 "main_stat":"atk_stab",
		 "name":"Grove Guardian",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "5":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"grove_mist",
		 "main_stat":"atk_stab",
		 "name":"Dark Ghast",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "6":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"grove_skull",
		 "main_stat":"atk_stab",
		 "name":"Flaming Cranium",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "7":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"grove_witch",
		 "main_stat":"atk_stab",
		 "name":"Hunuh Abit",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  }
   },
   "menacing_mountain":{
	  "0":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"mountain_fire",
		 "main_stat":"atk_stab",
		 "name":"Flame Spawn",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "1":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"mountain_moth",
		 "main_stat":"atk_stab",
		 "name":"Fire Spreader",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "2":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"mountain_slime",
		 "main_stat":"atk_stab",
		 "name":"Obsidian Jelly",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "3":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"mountain_skull",
		 "main_stat":"atk_stab",
		 "name":"Blazing Skull",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "4":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"mountain_mist",
		 "main_stat":"atk_stab",
		 "name":"Erupted Lava",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "5":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"mountain_eye",
		 "main_stat":"atk_stab",
		 "name":"Flame Seeker",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "6":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"mountain_sword",
		 "main_stat":"atk_stab",
		 "name":"Blazing Slasher",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "7":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"mountain_horned",
		 "main_stat":"atk_stab",
		 "name":"Azzmodious",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  }
   },
   "perilous_peaks":{
	  "0":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"peaks_slime",
		 "main_stat":"atk_stab",
		 "name":"Jade Slime",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "1":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"peaks_frog",
		 "main_stat":"atk_stab",
		 "name":"Crystal Frog",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "2":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"peaks_elemental",
		 "main_stat":"atk_stab",
		 "name":"Peak Elemental",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "3":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"peaks_skull",
		 "main_stat":"atk_stab",
		 "name":"Magic Bones",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "4":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"peaks_eye",
		 "main_stat":"atk_stab",
		 "name":"Swift Watcher",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "5":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"peaks_mouth",
		 "main_stat":"atk_stab",
		 "name":"Blood Sucker",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "6":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"peaks_sword",
		 "main_stat":"atk_stab",
		 "name":"Crystal Dagger",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "7":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"peaks_jackal",
		 "main_stat":"atk_stab",
		 "name":"Shunzee",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  }
   },
   "satanic_swamp":{
	  "0":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"swamp_moth",
		 "main_stat":"atk_stab",
		 "name":"Confused Moth",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "1":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"swamp_mushroom",
		 "main_stat":"atk_stab",
		 "name":"Curshroom",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "2":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"swamp_head",
		 "main_stat":"atk_stab",
		 "name":"Viscous Sludge",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "3":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"swamp_brain",
		 "main_stat":"atk_stab",
		 "name":"Brain Floater",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "4":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"swamp_mask",
		 "main_stat":"atk_stab",
		 "name":"Sacred Spirit",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "5":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"swamp_eye",
		 "main_stat":"atk_stab",
		 "name":"Dream Catcher",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "6":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"swamp_witch",
		 "main_stat":"atk_stab",
		 "name":"Dying Crone",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "7":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"swamp_rabbit",
		 "main_stat":"atk_stab",
		 "name":"Looseifur",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  }
   },
   "verdant_valley":{
	  "0":{
		 "abilities":{
			"poisonous":"1",
			"freezing":"2",
			"searing_flames":"3"
		 },
		 "drops":{
			"0":{
			   "item_id":"cloth_helmet",
			   "amount":"1",
			   "weight":"128"
			},
			"1":{
			   "item_id":"bonite_helmet",
			   "amount":"2",
			   "weight":"64"
			},
			"2":{
			   "item_id":"bonite_chestplate",
			   "amount":"3",
			   "weight":"12"
			}
		 },
		 "id":"valley_chicken",
		 "main_stat":"atk_stab",
		 "name":"Farm Chicken",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"2.8",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"10",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"33",
		 "xp_given":"11"
	  },
	  "1":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"valley_rabbit",
		 "main_stat":"atk_stab",
		 "name":"Sneaky Rabbit",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "2":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"valley_crab",
		 "main_stat":"atk_stab",
		 "name":"Crusty Crab",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "3":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"valley_cat",
		 "main_stat":"atk_stab",
		 "name":"Feral Rat",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "4":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"valley_goat",
		 "main_stat":"atk_stab",
		 "name":"Noisy Goat",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "5":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"valley_elemental",
		 "main_stat":"atk_stab",
		 "name":"Earth Elemental",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "6":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"valley_slime",
		 "main_stat":"atk_stab",
		 "name":"Squishy Slime",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "7":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"valley_snake",
		 "main_stat":"atk_stab",
		 "name":"Nagenie",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  }
   },
   "vicious_void":{
	  "0":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"void_potion",
		 "main_stat":"atk_stab",
		 "name":"Wonderpot",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "1":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"void_orb",
		 "main_stat":"atk_stab",
		 "name":"Orbious",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "2":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"void_skull",
		 "main_stat":"atk_stab",
		 "name":"Brainmuck",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "3":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"void_witch",
		 "main_stat":"atk_stab",
		 "name":"Sarantis",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "4":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"void_voidling",
		 "main_stat":"atk_stab",
		 "name":"Voidrot",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "5":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"void_tentacle",
		 "main_stat":"atk_stab",
		 "name":"Skenruppur",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "6":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"void_hound",
		 "main_stat":"atk_stab",
		 "name":"Sorbyrous",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "7":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"void_dwarf",
		 "main_stat":"atk_stab",
		 "name":"Donger",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  }
   },
   "wretched_wasteland":{
	  "0":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"wasteland_mummy",
		 "main_stat":"atk_stab",
		 "name":"Sand Walker",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "1":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"wasteland_robot",
		 "main_stat":"atk_stab",
		 "name":"Water Pumper",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "2":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"wasteland_pyramidian",
		 "main_stat":"atk_stab",
		 "name":"Pyramidian",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "3":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"wasteland_snake",
		 "main_stat":"atk_stab",
		 "name":"Flesh Snatcher",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "4":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"wasteland_dustnado",
		 "main_stat":"atk_stab",
		 "name":"Dustnado",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "5":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"wasteland_scorpion",
		 "main_stat":"atk_stab",
		 "name":"Scorpio",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "6":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"wasteland_lurker",
		 "main_stat":"atk_stab",
		 "name":"Sand Digger",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  },
	  "7":{
		 "abilities":{
			
		 },
		 "drops":{
			
		 },
		 "id":"wasteland_mask",
		 "main_stat":"atk_stab",
		 "name":"Long Lost Spirit",
		 "stats":{
			"atk_crush":"1",
			"atk_slash":"1",
			"atk_speed":"1",
			"atk_stab":"1",
			"def_crush":"1",
			"def_slash":"1",
			"def_stab":"1",
			"dmg_reduc":"1",
			"health":"1",
			"max_hit":"1",
			"min_hit":"1"
		 },
		 "travel_time":"1",
		 "xp_given":"1"
	  }
   }
}
