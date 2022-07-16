extends Node


var enemies = {
"dangerous_depths": {
0: {
"abilities": {
},
"id": "depths_elemental",
"level": "1",
"main_stat": "atk_stab",
"name": "Dark Elemental",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
1: {
"abilities": {
},
"id": "depths_slime",
"level": "1",
"main_stat": "atk_stab",
"name": "Shadow Slime",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
2: {
"abilities": {
},
"id": "depths_eye",
"level": "1",
"main_stat": "atk_stab",
"name": "Watchful Eye",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
3: {
"abilities": {
},
"id": "depths_tombstone",
"level": "1",
"main_stat": "atk_stab",
"name": "Living Tomb",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
4: {
"abilities": {
},
"id": "depths_chest",
"level": "1",
"main_stat": "atk_stab",
"name": "Mimic",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
5: {
"abilities": {
},
"id": "depths_skull",
"level": "1",
"main_stat": "atk_stab",
"name": "Haunted Skull",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
6: {
"abilities": {
},
"id": "depths_golem",
"level": "1",
"main_stat": "atk_stab",
"name": "Sentry Golem",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
7: {
"abilities": {
},
"id": "depths_shield",
"level": "1",
"main_stat": "atk_stab",
"name": "Doolism",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
}
},
"fatal_forest": {
0: {
"abilities": {
},
"id": "forest_frog",
"level": "1",
"main_stat": "atk_stab",
"name": "Jungle Bullfrog",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
1: {
"abilities": {
},
"id": "forest_gecko",
"level": "1",
"main_stat": "atk_stab",
"name": "Grimy Gecko",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
2: {
"abilities": {
},
"id": "forest_dwarf",
"level": "1",
"main_stat": "atk_stab",
"name": "Dwarf Warrior",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
3: {
"abilities": {
},
"id": "forest_slime",
"level": "1",
"main_stat": "atk_stab",
"name": "Tree Slime",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
4: {
"abilities": {
},
"id": "forest_mushroom",
"level": "1",
"main_stat": "atk_stab",
"name": "Treeshroom",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
5: {
"abilities": {
},
"id": "forest_totem",
"level": "1",
"main_stat": "atk_stab",
"name": "Earth Totem",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
6: {
"abilities": {
},
"id": "forest_skull",
"level": "1",
"main_stat": "atk_stab",
"name": "Poisonous Skull",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
7: {
"abilities": {
},
"id": "forest_eye",
"level": "1",
"main_stat": "atk_stab",
"name": "Kuhthooloo",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
}
},
"gory_graveyard": {
0: {
"abilities": {
},
"id": "graveyard_bat",
"level": "1",
"main_stat": "atk_stab",
"name": "Feral Bat",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
1: {
"abilities": {
},
"id": "graveyard_cat",
"level": "1",
"main_stat": "atk_stab",
"name": "Death Rat",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
2: {
"abilities": {
},
"id": "graveyard_ghast",
"level": "1",
"main_stat": "atk_stab",
"name": "Kindred Spirit",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
3: {
"abilities": {
},
"id": "graveyard_zombie",
"level": "1",
"main_stat": "atk_stab",
"name": "Starved Zombie",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
4: {
"abilities": {
},
"id": "graveyard_skeleton",
"level": "1",
"main_stat": "atk_stab",
"name": "Arcane Bones",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
5: {
"abilities": {
},
"id": "graveyard_flesh_eater",
"level": "1",
"main_stat": "atk_stab",
"name": "Flesh Eater",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
6: {
"abilities": {
},
"id": "graveyard_count_dracula",
"level": "1",
"main_stat": "atk_stab",
"name": "Kont Drukola",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
7: {
"abilities": {
},
"id": "graveyard_reaper",
"level": "1",
"main_stat": "atk_stab",
"name": "Grem Ripper",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
}
},
"gruesome_grove": {
0: {
"abilities": {
},
"id": "grove_longbeak",
"level": "1",
"main_stat": "atk_stab",
"name": "Wild Longbeak",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
1: {
"abilities": {
},
"id": "grove_ghast",
"level": "1",
"main_stat": "atk_stab",
"name": "Gassy Ghast",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
2: {
"abilities": {
},
"id": "grove_sentry",
"level": "1",
"main_stat": "atk_stab",
"name": "Grove Turret",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
3: {
"abilities": {
},
"id": "grove_head",
"level": "1",
"main_stat": "atk_stab",
"name": "Fleshy Lump",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
4: {
"abilities": {
},
"id": "grove_golem",
"level": "1",
"main_stat": "atk_stab",
"name": "Grove Guardian",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
5: {
"abilities": {
},
"id": "grove_mist",
"level": "1",
"main_stat": "atk_stab",
"name": "Dark Ghast",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
6: {
"abilities": {
},
"id": "grove_skull",
"level": "1",
"main_stat": "atk_stab",
"name": "Flaming Cranium",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
7: {
"abilities": {
},
"id": "grove_witch",
"level": "1",
"main_stat": "atk_stab",
"name": "Hunuh Abit",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
}
},
"menacing_mountain": {
0: {
"abilities": {
},
"id": "mountain_fire",
"level": "1",
"main_stat": "atk_stab",
"name": "Flame Spawn",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
1: {
"abilities": {
},
"id": "mountain_moth",
"level": "1",
"main_stat": "atk_stab",
"name": "Fire Spreader",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
2: {
"abilities": {
},
"id": "mountain_slime",
"level": "1",
"main_stat": "atk_stab",
"name": "Obsidian Jelly",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
3: {
"abilities": {
},
"id": "mountain_skull",
"level": "1",
"main_stat": "atk_stab",
"name": "Blazing Skull",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
4: {
"abilities": {
},
"id": "mountain_mist",
"level": "1",
"main_stat": "atk_stab",
"name": "Erupted Lava",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
5: {
"abilities": {
},
"id": "mountain_eye",
"level": "1",
"main_stat": "atk_stab",
"name": "Flame Seeker",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
6: {
"abilities": {
},
"id": "mountain_sword",
"level": "1",
"main_stat": "atk_stab",
"name": "Blazing Slasher",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
7: {
"abilities": {
},
"id": "mountain_horned",
"level": "1",
"main_stat": "atk_stab",
"name": "Azzmodious",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
}
},
"perilous_peaks": {
0: {
"abilities": {
},
"id": "peaks_slime",
"level": "1",
"main_stat": "atk_stab",
"name": "Jade Slime",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
1: {
"abilities": {
},
"id": "peaks_frog",
"level": "1",
"main_stat": "atk_stab",
"name": "Crystal Frog",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
2: {
"id": "peaks_elemental",
"level": "1",
"main_stat": "atk_stab",
"name": "Peak Elemental",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "2"
},
3: {
"abilities": {
},
"id": "peaks_skull",
"level": "1",
"main_stat": "atk_stab",
"name": "Magic Bones",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
4: {
"abilities": {
},
"id": "peaks_eye",
"level": "1",
"main_stat": "atk_stab",
"name": "Swift Watcher",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
5: {
"abilities": {
},
"id": "peaks_mouth",
"level": "1",
"main_stat": "atk_stab",
"name": "Blood Sucker",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
6: {
"abilities": {
},
"id": "peaks_sword",
"level": "1",
"main_stat": "atk_stab",
"name": "Crystal Dagger",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
7: {
"abilities": {
},
"id": "peaks_jackal",
"level": "1",
"main_stat": "atk_stab",
"name": "Shunzee",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
}
},
"satanic_swamp": {
0: {
"abilities": {
},
"id": "swamp_moth",
"level": "1",
"main_stat": "atk_stab",
"name": "Confused Moth",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
1: {
"abilities": {
},
"id": "swamp_mushroom",
"level": "1",
"main_stat": "atk_stab",
"name": "Curshroom",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
2: {
"abilities": {
},
"id": "swamp_head",
"level": "1",
"main_stat": "atk_stab",
"name": "Viscous Sludge",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
3: {
"abilities": {
},
"id": "swamp_brain",
"level": "1",
"main_stat": "atk_stab",
"name": "Brain Floater",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
4: {
"abilities": {
},
"id": "swamp_mask",
"level": "1",
"main_stat": "atk_stab",
"name": "Sacred Spirit",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
5: {
"abilities": {
},
"id": "swamp_eye",
"level": "1",
"main_stat": "atk_stab",
"name": "Dream Catcher",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
6: {
"abilities": {
},
"id": "swamp_witch",
"level": "1",
"main_stat": "atk_stab",
"name": "Dying Crone",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
7: {
"abilities": {
},
"id": "swamp_rabbit",
"level": "1",
"main_stat": "atk_stab",
"name": "Looseifur",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
}
},
"verdant_valley": {
0: {
"abilities": {
},
"id": "valley_chicken",
"level": "1",
"main_stat": "atk_stab",
"name": "Farm Chicken",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
1: {
"abilities": {
},
"id": "valley_rabbit",
"level": "1",
"main_stat": "atk_stab",
"name": "Sneaky Rabbit",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
2: {
"abilities": {
},
"id": "valley_crab",
"level": "1",
"main_stat": "atk_stab",
"name": "Crusty Crab",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
3: {
"abilities": {
},
"id": "valley_cat",
"level": "1",
"main_stat": "atk_stab",
"name": "Feral Rat",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
4: {
"abilities": {
},
"id": "valley_goat",
"level": "1",
"main_stat": "atk_stab",
"name": "Noisy Goat",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
5: {
"abilities": {
},
"id": "valley_elemental",
"level": "1",
"main_stat": "atk_stab",
"name": "Earth Elemental",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
6: {
"abilities": {
},
"id": "valley_slime",
"level": "1",
"main_stat": "atk_stab",
"name": "Squishy Slime",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
7: {
"abilities": {
},
"id": "valley_snake",
"level": "1",
"main_stat": "atk_stab",
"name": "Nagenie",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
}
},
"vicious_void": {
0: {
"abilities": {
},
"id": "void_potion",
"level": "1",
"main_stat": "atk_stab",
"name": "Wonderpot",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
1: {
"abilities": {
},
"id": "void_orb",
"level": "1",
"main_stat": "atk_stab",
"name": "Orbious",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
2: {
"abilities": {
},
"id": "void_skull",
"level": "1",
"main_stat": "atk_stab",
"name": "Brainmuck",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
3: {
"abilities": {
},
"id": "void_witch",
"level": "1",
"main_stat": "atk_stab",
"name": "Sarantis",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
4: {
"abilities": {
},
"id": "void_voidling",
"level": "1",
"main_stat": "atk_stab",
"name": "Voidrot",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
5: {
"abilities": {
},
"id": "void_tentacle",
"level": "1",
"main_stat": "atk_stab",
"name": "Skenruppur",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
6: {
"abilities": {
},
"id": "void_hound",
"level": "1",
"main_stat": "atk_stab",
"name": "Sorbyrous",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
7: {
"abilities": {
},
"id": "void_dwarf",
"level": "1",
"main_stat": "atk_stab",
"name": "Donger",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
}
},
"wretched_wasteland": {
0: {
"abilities": {
},
"id": "wasteland_mummy",
"index": 0,
"level": "1",
"main_stat": "atk_stab",
"name": "Sand Walker",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
1: {
"abilities": {
},
"id": "wasteland_robot",
"level": "1",
"main_stat": "atk_stab",
"name": "Water Pumper",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
2: {
"abilities": {
},
"id": "wasteland_pyramidian",
"level": "1",
"main_stat": "atk_stab",
"name": "Pyramidian",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
3: {
"abilities": {
},
"id": "wasteland_snake",
"level": "1",
"main_stat": "atk_stab",
"name": "Flesh Snatcher",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
4: {
"abilities": {
},
"id": "wasteland_dustnado",
"level": "1",
"main_stat": "atk_stab",
"name": "Dustnado",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
5: {
"abilities": {
},
"id": "wasteland_scorpion",
"level": "1",
"main_stat": "atk_stab",
"name": "Scorpio",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
6: {
"abilities": {
},
"id": "wasteland_lurker",
"level": "1",
"main_stat": "atk_stab",
"name": "Sand Digger",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
},
7: {
"abilities": {
},
"id": "wasteland_mask",
"level": "1",
"main_stat": "atk_stab",
"name": "Long Lost Spirit",
"stats": {
"atk_crush": "1",
"atk_slash": "1",
"atk_speed": "1",
"atk_stab": "1",
"def_crush": "1",
"def_slash": "1",
"def_stab": "1",
"dmg_reduc": "1",
"health": "1",
"max_hit": "1",
"min_hit": "1"
},
"xp_given": "1"
}
}}
