extends Node


var items = {
   "stone_sword":{
	  "name":"Stone Sword",
	  "img_path":"gear/weapons/sword (1)",
	  "desc":"A sword made from stone",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"40",
	  "sell_price":"99",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.5",
	  "atk_crush":"0",
	  "atk_slash":"532",
	  "atk_stab":"0",
	  "max_hit":"78",
	  "min_hit":"25"
   },
   "the_ripper":{
	  "name":"The Ripper",
	  "img_path":"gear/weapons/sword (16)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"203",
	  "sell_price":"507",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.3",
	  "atk_crush":"0",
	  "atk_slash":"575",
	  "atk_stab":"0",
	  "max_hit":"72",
	  "min_hit":"23"
   },
   "cell_splitter":{
	  "name":"Cell Splitter",
	  "img_path":"gear/weapons/sword (22)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"203",
	  "sell_price":"507",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.2",
	  "atk_crush":"0",
	  "atk_slash":"617",
	  "atk_stab":"0",
	  "max_hit":"70",
	  "min_hit":"22"
   },
   "bloodstone_sword":{
	  "name":"Bloodstone Sword",
	  "img_path":"gear/weapons/sword (11)",
	  "desc":"A sword made from bloodstone",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"105",
	  "sell_price":"261",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.5",
	  "atk_crush":"0",
	  "atk_slash":"725",
	  "atk_stab":"0",
	  "max_hit":"80",
	  "min_hit":"25"
   },
   "deaths_echo":{
	  "name":"Deaths Echo",
	  "img_path":"gear/weapons/sword (27)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"471",
	  "sell_price":"1179",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.2",
	  "atk_crush":"0",
	  "atk_slash":"792",
	  "atk_stab":"0",
	  "max_hit":"72",
	  "min_hit":"23"
   },
   "the_facelifter":{
	  "name":"The Facelifter",
	  "img_path":"gear/weapons/sword (19)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"471",
	  "sell_price":"1179",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.5",
	  "atk_crush":"0",
	  "atk_slash":"842",
	  "atk_stab":"0",
	  "max_hit":"84",
	  "min_hit":"27"
   },
   "soulstone_sword":{
	  "name":"Soulstone Sword",
	  "img_path":"gear/weapons/sword (8)",
	  "desc":"A sword made from soulstone",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"225",
	  "sell_price":"562",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.3",
	  "atk_crush":"0",
	  "atk_slash":"984",
	  "atk_stab":"0",
	  "max_hit":"81",
	  "min_hit":"26"
   },
   "frostweaver":{
	  "name":"Frostweaver",
	  "img_path":"gear/weapons/sword (18)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"880",
	  "sell_price":"2200",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.6",
	  "atk_crush":"0",
	  "atk_slash":"1096",
	  "atk_stab":"0",
	  "max_hit":"100",
	  "min_hit":"32"
   },
   "blunt_trauma":{
	  "name":"Blunt Trauma",
	  "img_path":"gear/weapons/sword (13)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"880",
	  "sell_price":"2200",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.6",
	  "atk_crush":"0",
	  "atk_slash":"1178",
	  "atk_stab":"0",
	  "max_hit":"125",
	  "min_hit":"40"
   },
   "dulite_sword":{
	  "name":"Dulite Sword",
	  "img_path":"gear/weapons/sword (2)",
	  "desc":"A sword made from dulite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"391",
	  "sell_price":"978",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.5",
	  "atk_crush":"0",
	  "atk_slash":"1224",
	  "atk_stab":"0",
	  "max_hit":"211",
	  "min_hit":"66"
   },
   "ol_stumpy":{
	  "name":"Ol Stumpy",
	  "img_path":"gear/weapons/sword (14)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"1436",
	  "sell_price":"3589",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.3",
	  "atk_crush":"0",
	  "atk_slash":"1305",
	  "atk_stab":"0",
	  "max_hit":"196",
	  "min_hit":"61"
   },
   "en_guard":{
	  "name":"En Guard",
	  "img_path":"gear/weapons/sword (32)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"1436",
	  "sell_price":"3589",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.2",
	  "atk_crush":"0",
	  "atk_slash":"1403",
	  "atk_stab":"0",
	  "max_hit":"189",
	  "min_hit":"59"
   },
   "midite_sword":{
	  "name":"Midite Sword",
	  "img_path":"gear/weapons/sword (3)",
	  "desc":"A sword made from midite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"612",
	  "sell_price":"1529",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.2",
	  "atk_crush":"0",
	  "atk_slash":"1543",
	  "atk_stab":"0",
	  "max_hit":"192",
	  "min_hit":"60"
   },
   "roboblade":{
	  "name":"Roboblade",
	  "img_path":"gear/weapons/sword (15)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"2145",
	  "sell_price":"5362",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.3",
	  "atk_crush":"0",
	  "atk_slash":"1693",
	  "atk_stab":"0",
	  "max_hit":"205",
	  "min_hit":"64"
   },
   "dancing_slicer":{
	  "name":"Dancing Slicer",
	  "img_path":"gear/weapons/sword (20)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"2145",
	  "sell_price":"5362",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.2",
	  "atk_crush":"0",
	  "atk_slash":"1851",
	  "atk_stab":"0",
	  "max_hit":"202",
	  "min_hit":"63"
   },
   "shinite_sword":{
	  "name":"Shinite Sword",
	  "img_path":"gear/weapons/sword (4)",
	  "desc":"A sword made from shinite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"888",
	  "sell_price":"2220",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.5",
	  "atk_crush":"0",
	  "atk_slash":"1972",
	  "atk_stab":"0",
	  "max_hit":"240",
	  "min_hit":"75"
   },
   "one_inch_poker":{
	  "name":"One Inch Poker",
	  "img_path":"gear/weapons/sword (33)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"2960",
	  "sell_price":"7399",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.6",
	  "atk_crush":"0",
	  "atk_slash":"2076",
	  "atk_stab":"0",
	  "max_hit":"272",
	  "min_hit":"85"
   },
   "the_extinction":{
	  "name":"The Extinction",
	  "img_path":"gear/weapons/sword (21)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"2960",
	  "sell_price":"7399",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.5",
	  "atk_crush":"0",
	  "atk_slash":"2295",
	  "atk_stab":"0",
	  "max_hit":"327",
	  "min_hit":"102"
   },
   "desite_sword":{
	  "name":"Desite Sword",
	  "img_path":"gear/weapons/sword (5)",
	  "desc":"A sword made from desite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"1248",
	  "sell_price":"3120",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.2",
	  "atk_crush":"0",
	  "atk_slash":"2396",
	  "atk_stab":"0",
	  "max_hit":"506",
	  "min_hit":"160"
   },
   "elecdesite_sword":{
	  "name":"Elecdesite Sword",
	  "img_path":"gear/weapons/sword (9)",
	  "desc":"A sword made from elecdesite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"4017",
	  "sell_price":"10044",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.5",
	  "atk_crush":"0",
	  "atk_slash":"2581",
	  "atk_stab":"0",
	  "max_hit":"579",
	  "min_hit":"183"
   },
   "dawnblade":{
	  "name":"Dawnblade",
	  "img_path":"gear/weapons/sword (35)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"4017",
	  "sell_price":"10044",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.3",
	  "atk_crush":"0",
	  "atk_slash":"2703",
	  "atk_stab":"0",
	  "max_hit":"536",
	  "min_hit":"170"
   },
   "lavite_sword":{
	  "name":"Lavite Sword",
	  "img_path":"gear/weapons/sword (6)",
	  "desc":"A sword made from lavite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"1636",
	  "sell_price":"4091",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"0",
	  "atk_slash":"2876",
	  "atk_stab":"0",
	  "max_hit":"494",
	  "min_hit":"156"
   },
   "blazite_sword":{
	  "name":"Blazite Sword",
	  "img_path":"gear/weapons/sword (10)",
	  "desc":"A sword made from blazite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"5159",
	  "sell_price":"12898",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.2",
	  "atk_crush":"0",
	  "atk_slash":"3065",
	  "atk_stab":"0",
	  "max_hit":"523",
	  "min_hit":"166"
   },
   "heated_slicer":{
	  "name":"Heated Slicer",
	  "img_path":"gear/weapons/sword (24)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"5159",
	  "sell_price":"12898",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.3",
	  "atk_crush":"0",
	  "atk_slash":"3290",
	  "atk_stab":"0",
	  "max_hit":"554",
	  "min_hit":"176"
   },
   "the_mangler":{
	  "name":"The Mangler",
	  "img_path":"gear/weapons/sword (29)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"5159",
	  "sell_price":"12898",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.2",
	  "atk_crush":"0",
	  "atk_slash":"3519",
	  "atk_stab":"0",
	  "max_hit":"541",
	  "min_hit":"171"
   },
   "bonite_sword":{
	  "name":"Bonite Sword",
	  "img_path":"gear/weapons/sword (7)",
	  "desc":"A sword made from bonite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"2129",
	  "sell_price":"5323",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"0",
	  "atk_slash":"3712",
	  "atk_stab":"0",
	  "max_hit":"532",
	  "min_hit":"168"
   },
   "guthanos":{
	  "name":"Guthanos",
	  "img_path":"gear/weapons/sword (17)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"6575",
	  "sell_price":"16438",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"0",
	  "atk_slash":"4191",
	  "atk_stab":"0",
	  "max_hit":"557",
	  "min_hit":"176"
   },
   "piece_maker":{
	  "name":"Piece Maker",
	  "img_path":"gear/weapons/sword (26)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"6575",
	  "sell_price":"16438",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.5",
	  "atk_crush":"0",
	  "atk_slash":"4408",
	  "atk_stab":"0",
	  "max_hit":"723",
	  "min_hit":"229"
   },
   "layered_pain":{
	  "name":"Layered Pain",
	  "img_path":"gear/weapons/sword (30)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"6575",
	  "sell_price":"16438",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.2",
	  "atk_crush":"0",
	  "atk_slash":"4743",
	  "atk_stab":"0",
	  "max_hit":"796",
	  "min_hit":"252"
   },
   "twisted_sword":{
	  "name":"Twisted Sword",
	  "img_path":"gear/weapons/sword (12)",
	  "desc":"A sword made from twisted",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"2621",
	  "sell_price":"6552",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.5",
	  "atk_crush":"0",
	  "atk_slash":"4792",
	  "atk_stab":"0",
	  "max_hit":"1647",
	  "min_hit":"522"
   },
   "mechanical_skewer":{
	  "name":"Mechanical Skewer",
	  "img_path":"gear/weapons/sword (31)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"8112",
	  "sell_price":"20281",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.3",
	  "atk_crush":"0",
	  "atk_slash":"4841",
	  "atk_stab":"0",
	  "max_hit":"1546",
	  "min_hit":"490"
   },
   "the_gardener":{
	  "name":"The Gardener",
	  "img_path":"gear/weapons/sword (25)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"8112",
	  "sell_price":"20281",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.4",
	  "atk_crush":"0",
	  "atk_slash":"4886",
	  "atk_stab":"0",
	  "max_hit":"1661",
	  "min_hit":"526"
   },
   "frozen_hell":{
	  "name":"Frozen Hell",
	  "img_path":"gear/weapons/sword (23)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"8112",
	  "sell_price":"20281",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.6",
	  "atk_crush":"0",
	  "atk_slash":"4919",
	  "atk_stab":"0",
	  "max_hit":"1885",
	  "min_hit":"597"
   },
   "blinding_light":{
	  "name":"Blinding Light",
	  "img_path":"gear/weapons/sword (28)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"8112",
	  "sell_price":"20281",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.2",
	  "atk_crush":"0",
	  "atk_slash":"4938",
	  "atk_stab":"0",
	  "max_hit":"1740",
	  "min_hit":"551"
   },
   "hope_ender":{
	  "name":"Hope Ender",
	  "img_path":"gear/weapons/sword (34)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"8112",
	  "sell_price":"20281",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.5",
	  "atk_crush":"0",
	  "atk_slash":"4972",
	  "atk_stab":"0",
	  "max_hit":"2471",
	  "min_hit":"783"
   },
   "stone_dagger":{
	  "name":"Stone Dagger",
	  "img_path":"gear/weapons/dagger (1)",
	  "desc":"A dagger made from stone",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"19",
	  "sell_price":"48",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"612",
	  "max_hit":"40",
	  "min_hit":"18"
   },
   "jagged_edge":{
	  "name":"Jagged Edge",
	  "img_path":"gear/weapons/dagger (20)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"203",
	  "sell_price":"507",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"665",
	  "max_hit":"38",
	  "min_hit":"17"
   },
   "vine_piercer":{
	  "name":"Vine Piercer",
	  "img_path":"gear/weapons/dagger (25)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"203",
	  "sell_price":"507",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"729",
	  "max_hit":"42",
	  "min_hit":"19"
   },
   "bloodstone_dagger":{
	  "name":"Bloodstone Dagger",
	  "img_path":"gear/weapons/dagger (11)",
	  "desc":"A dagger made from bloodstone",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"53",
	  "sell_price":"132",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"808",
	  "max_hit":"42",
	  "min_hit":"19"
   },
   "bloodsoaker":{
	  "name":"Bloodsoaker",
	  "img_path":"gear/weapons/dagger (14)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"471",
	  "sell_price":"1179",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"912",
	  "max_hit":"40",
	  "min_hit":"18"
   },
   "ebonblade":{
	  "name":"Ebonblade",
	  "img_path":"gear/weapons/dagger (24)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"471",
	  "sell_price":"1179",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.6",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"995",
	  "max_hit":"33",
	  "min_hit":"15"
   },
   "soulstone_dagger":{
	  "name":"Soulstone Dagger",
	  "img_path":"gear/weapons/dagger (8)",
	  "desc":"A dagger made from soulstone",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"119",
	  "sell_price":"297",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.7",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1025",
	  "max_hit":"36",
	  "min_hit":"16"
   },
   "the_stake":{
	  "name":"The Stake",
	  "img_path":"gear/weapons/dagger (18)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"880",
	  "sell_price":"2200",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1209",
	  "max_hit":"38",
	  "min_hit":"17"
   },
   "cube_carver":{
	  "name":"Cube Carver",
	  "img_path":"gear/weapons/dagger (27)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"880",
	  "sell_price":"2200",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.7",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1392",
	  "max_hit":"36",
	  "min_hit":"16"
   },
   "dulite_dagger":{
	  "name":"Dulite Dagger",
	  "img_path":"gear/weapons/dagger (2)",
	  "desc":"A dagger made from dulite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"214",
	  "sell_price":"536",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.6",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1456",
	  "max_hit":"90",
	  "min_hit":"40"
   },
   "dulite_kris":{
	  "name":"Dulite Kris",
	  "img_path":"gear/weapons/dagger (26)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"214",
	  "sell_price":"536",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.6",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1571",
	  "max_hit":"91",
	  "min_hit":"40"
   },
   "blunt_shaver":{
	  "name":"Blunt Shaver",
	  "img_path":"gear/weapons/dagger (23)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"1436",
	  "sell_price":"3589",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1658",
	  "max_hit":"108",
	  "min_hit":"48"
   },
   "midite_dagger":{
	  "name":"Midite Dagger",
	  "img_path":"gear/weapons/dagger (3)",
	  "desc":"A dagger made from midite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"340",
	  "sell_price":"850",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1792",
	  "max_hit":"102",
	  "min_hit":"46"
   },
   "the_blinder":{
	  "name":"The Blinder",
	  "img_path":"gear/weapons/dagger (32)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"2145",
	  "sell_price":"5362",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1903",
	  "max_hit":"102",
	  "min_hit":"46"
   },
   "frenzy":{
	  "name":"Frenzy",
	  "img_path":"gear/weapons/dagger (15)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"2145",
	  "sell_price":"5362",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"2188",
	  "max_hit":"108",
	  "min_hit":"48"
   },
   "shinite_dagger":{
	  "name":"Shinite Dagger",
	  "img_path":"gear/weapons/dagger (4)",
	  "desc":"A dagger made from shinite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"502",
	  "sell_price":"1254",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.6",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"2428",
	  "max_hit":"91",
	  "min_hit":"41"
   },
   "solid_sabre":{
	  "name":"Solid Sabre",
	  "img_path":"gear/weapons/dagger (31)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"2960",
	  "sell_price":"7399",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"2719",
	  "max_hit":"102",
	  "min_hit":"46"
   },
   "royal_carver":{
	  "name":"Royal Carver",
	  "img_path":"gear/weapons/dagger (21)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"2960",
	  "sell_price":"7399",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"2984",
	  "max_hit":"102",
	  "min_hit":"46"
   },
   "desite_dagger":{
	  "name":"Desite Dagger",
	  "img_path":"gear/weapons/dagger (5)",
	  "desc":"A dagger made from desite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"704",
	  "sell_price":"1760",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"3111",
	  "max_hit":"312",
	  "min_hit":"142"
   },
   "elecdesite_dagger":{
	  "name":"Elecdesite Dagger",
	  "img_path":"gear/weapons/dagger (9)",
	  "desc":"A dagger made from elecdesite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"4017",
	  "sell_price":"10044",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"3389",
	  "max_hit":"281",
	  "min_hit":"127"
   },
   "fleshshaper":{
	  "name":"Fleshshaper",
	  "img_path":"gear/weapons/dagger (13)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"4017",
	  "sell_price":"10044",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"3514",
	  "max_hit":"281",
	  "min_hit":"128"
   },
   "lavite_dagger":{
	  "name":"Lavite Dagger",
	  "img_path":"gear/weapons/dagger (6)",
	  "desc":"A dagger made from lavite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"942",
	  "sell_price":"2355",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.7",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"3809",
	  "max_hit":"266",
	  "min_hit":"121"
   },
   "blazite_dagger":{
	  "name":"Blazite Dagger",
	  "img_path":"gear/weapons/dagger (10)",
	  "desc":"A dagger made from blazite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"5159",
	  "sell_price":"12898",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.7",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"4004",
	  "max_hit":"266",
	  "min_hit":"121"
   },
   "lavablade":{
	  "name":"Lavablade",
	  "img_path":"gear/weapons/dagger (33)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"5159",
	  "sell_price":"12898",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.7",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"4319",
	  "max_hit":"266",
	  "min_hit":"121"
   },
   "gutstabber":{
	  "name":"Gutstabber",
	  "img_path":"gear/weapons/dagger (28)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"5159",
	  "sell_price":"12898",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"4575",
	  "max_hit":"314",
	  "min_hit":"142"
   },
   "bonite_dagger":{
	  "name":"Bonite Dagger",
	  "img_path":"gear/weapons/dagger (7)",
	  "desc":"A dagger made from bonite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"1196",
	  "sell_price":"2990",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.7",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"4905",
	  "max_hit":"267",
	  "min_hit":"121"
   },
   "molten_pain":{
	  "name":"Molten Pain",
	  "img_path":"gear/weapons/dagger (22)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"6575",
	  "sell_price":"16438",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.5",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"5312",
	  "max_hit":"236",
	  "min_hit":"107"
   },
   "bloodsucker":{
	  "name":"Bloodsucker",
	  "img_path":"gear/weapons/dagger (29)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"6575",
	  "sell_price":"16438",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"5709",
	  "max_hit":"314",
	  "min_hit":"143"
   },
   "returning_kunai":{
	  "name":"Returning Kunai",
	  "img_path":"gear/weapons/dagger (16)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"6575",
	  "sell_price":"16438",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.5",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"6166",
	  "max_hit":"236",
	  "min_hit":"107"
   },
   "twisted_dagger":{
	  "name":"Twisted Dagger",
	  "img_path":"gear/weapons/dagger (12)",
	  "desc":"A dagger made from twisted",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"1507",
	  "sell_price":"3769",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"6209",
	  "max_hit":"771",
	  "min_hit":"350"
   },
   "the_meat_cleaver":{
	  "name":"The Meat Cleaver",
	  "img_path":"gear/weapons/dagger (17)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"8112",
	  "sell_price":"20281",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.5",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"6265",
	  "max_hit":"643",
	  "min_hit":"292"
   },
   "fear_eater":{
	  "name":"Fear Eater",
	  "img_path":"gear/weapons/dagger (19)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"8112",
	  "sell_price":"20281",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.7",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"6296",
	  "max_hit":"729",
	  "min_hit":"331"
   },
   "shadowfall":{
	  "name":"Shadowfall",
	  "img_path":"gear/weapons/dagger (34)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"8112",
	  "sell_price":"20281",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"6341",
	  "max_hit":"816",
	  "min_hit":"370"
   },
   "last_rites":{
	  "name":"Last Rites",
	  "img_path":"gear/weapons/dagger (30)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"8112",
	  "sell_price":"20281",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.7",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"6382",
	  "max_hit":"730",
	  "min_hit":"331"
   },
   "the_grave_filler":{
	  "name":"The Grave Filler",
	  "img_path":"gear/weapons/dagger (35)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"8112",
	  "sell_price":"20281",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"6424",
	  "max_hit":"817",
	  "min_hit":"371"
   },
   "stone_gauntlet":{
	  "name":"Stone Gauntlet",
	  "img_path":"gear/weapons/gauntlet (1)",
	  "desc":"A gauntlet made from stone",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"68",
	  "sell_price":"169",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"605",
	  "max_hit":"41",
	  "min_hit":"18"
   },
   "needlers":{
	  "name":"Needlers",
	  "img_path":"gear/weapons/gauntlet (17)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"222",
	  "sell_price":"556",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"701",
	  "max_hit":"45",
	  "min_hit":"19"
   },
   "bloodstone_gauntlet":{
	  "name":"Bloodstone Gauntlet",
	  "img_path":"gear/weapons/gauntlet (11)",
	  "desc":"A gauntlet made from bloodstone",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"170",
	  "sell_price":"426",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"812",
	  "max_hit":"45",
	  "min_hit":"19"
   },
   "singed_talons":{
	  "name":"Singed Talons",
	  "img_path":"gear/weapons/gauntlet (16)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"525",
	  "sell_price":"1312",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"956",
	  "max_hit":"39",
	  "min_hit":"17"
   },
   "soulstone_gauntlet":{
	  "name":"Soulstone Gauntlet",
	  "img_path":"gear/weapons/gauntlet (8)",
	  "desc":"A gauntlet made from soulstone",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"351",
	  "sell_price":"877",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1192",
	  "max_hit":"43",
	  "min_hit":"19"
   },
   "twin_fangs":{
	  "name":"Twin Fangs",
	  "img_path":"gear/weapons/gauntlet (19)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"973",
	  "sell_price":"2433",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1339",
	  "max_hit":"39",
	  "min_hit":"17"
   },
   "dulite_gauntlet":{
	  "name":"Dulite Gauntlet",
	  "img_path":"gear/weapons/gauntlet (2)",
	  "desc":"A gauntlet made from dulite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"600",
	  "sell_price":"1500",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1458",
	  "max_hit":"105",
	  "min_hit":"44"
   },
   "flesh_openers":{
	  "name":"Flesh Openers",
	  "img_path":"gear/weapons/gauntlet (13)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"1570",
	  "sell_price":"3925",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1594",
	  "max_hit":"111",
	  "min_hit":"47"
   },
   "midite_gauntlet":{
	  "name":"Midite Gauntlet",
	  "img_path":"gear/weapons/gauntlet (3)",
	  "desc":"A gauntlet made from midite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"925",
	  "sell_price":"2313",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.6",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1781",
	  "max_hit":"94",
	  "min_hit":"39"
   },
   "nibblers":{
	  "name":"Nibblers",
	  "img_path":"gear/weapons/gauntlet (22)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"2352",
	  "sell_price":"5880",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"2104",
	  "max_hit":"117",
	  "min_hit":"49"
   },
   "shinite_gauntlet":{
	  "name":"Shinite Gauntlet",
	  "img_path":"gear/weapons/gauntlet (4)",
	  "desc":"A gauntlet made from shinite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"1346",
	  "sell_price":"3364",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"2567",
	  "max_hit":"117",
	  "min_hit":"49"
   },
   "slice_of_life":{
	  "name":"Slice of Life",
	  "img_path":"gear/weapons/gauntlet (15)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"3252",
	  "sell_price":"8131",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"2869",
	  "max_hit":"106",
	  "min_hit":"44"
   },
   "desite_gauntlet":{
	  "name":"Desite Gauntlet",
	  "img_path":"gear/weapons/gauntlet (5)",
	  "desc":"A gauntlet made from desite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"1823",
	  "sell_price":"4558",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"2994",
	  "max_hit":"340",
	  "min_hit":"146"
   },
   "elecdesite_gauntlet":{
	  "name":"Elecdesite Gauntlet",
	  "img_path":"gear/weapons/gauntlet (9)",
	  "desc":"A gauntlet made from elecdesite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"4326",
	  "sell_price":"10816",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"3109",
	  "max_hit":"308",
	  "min_hit":"132"
   },
   "the_phoenixes":{
	  "name":"The Phoenixes",
	  "img_path":"gear/weapons/gauntlet (23)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"4326",
	  "sell_price":"10816",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"3379",
	  "max_hit":"291",
	  "min_hit":"125"
   },
   "lavite_gauntlet":{
	  "name":"Lavite Gauntlet",
	  "img_path":"gear/weapons/gauntlet (6)",
	  "desc":"A gauntlet made from lavite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"2389",
	  "sell_price":"5972",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"3649",
	  "max_hit":"324",
	  "min_hit":"139"
   },
   "blazite_gauntlet":{
	  "name":"Blazite Gauntlet",
	  "img_path":"gear/weapons/gauntlet (10)",
	  "desc":"A gauntlet made from blazite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"5699",
	  "sell_price":"14247",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"4088",
	  "max_hit":"308",
	  "min_hit":"132"
   },
   "ruined_saws":{
	  "name":"Ruined Saws",
	  "img_path":"gear/weapons/gauntlet (18)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"5699",
	  "sell_price":"14247",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"4399",
	  "max_hit":"308",
	  "min_hit":"132"
   },
   "bonite_gauntlet":{
	  "name":"Bonite Gauntlet",
	  "img_path":"gear/weapons/gauntlet (7)",
	  "desc":"A gauntlet made from bonite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"3110",
	  "sell_price":"7775",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.6",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"4810",
	  "max_hit":"259",
	  "min_hit":"111"
   },
   "pincers":{
	  "name":"Pincers",
	  "img_path":"gear/weapons/gauntlet (14)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"7081",
	  "sell_price":"17702",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.7",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"5303",
	  "max_hit":"275",
	  "min_hit":"118"
   },
   "soulsuckers":{
	  "name":"Soulsuckers",
	  "img_path":"gear/weapons/gauntlet (21)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"7081",
	  "sell_price":"17702",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"5929",
	  "max_hit":"308",
	  "min_hit":"132"
   },
   "twisted_gauntlet":{
	  "name":"Twisted Gauntlet",
	  "img_path":"gear/weapons/gauntlet (12)",
	  "desc":"A gauntlet made from twisted",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"3829",
	  "sell_price":"9573",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.7",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"5997",
	  "max_hit":"753",
	  "min_hit":"323"
   },
   "dawnsplitters":{
	  "name":"Dawnsplitters",
	  "img_path":"gear/weapons/gauntlet (20)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"8736",
	  "sell_price":"21841",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"6034",
	  "max_hit":"797",
	  "min_hit":"342"
   },
   "the_hollowers":{
	  "name":"The Hollowers",
	  "img_path":"gear/weapons/gauntlet (24)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"8736",
	  "sell_price":"21841",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"6092",
	  "max_hit":"886",
	  "min_hit":"380"
   },
   "stone_axe":{
	  "name":"Stone Axe",
	  "img_path":"gear/weapons/axe (1)",
	  "desc":"An axe made from stone",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"149",
	  "sell_price":"372",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.3",
	  "atk_crush":"0",
	  "atk_slash":"643",
	  "atk_stab":"0",
	  "max_hit":"54",
	  "min_hit":"28"
   },
   "the_hoe":{
	  "name":"The Hoe",
	  "img_path":"gear/weapons/axe (17)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"291",
	  "sell_price":"729",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.4",
	  "atk_crush":"0",
	  "atk_slash":"729",
	  "atk_stab":"0",
	  "max_hit":"56",
	  "min_hit":"29"
   },
   "bloodstone_axe":{
	  "name":"Bloodstone Axe",
	  "img_path":"gear/weapons/axe (11)",
	  "desc":"An axe made from bloodstone",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"354",
	  "sell_price":"886",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.7",
	  "atk_crush":"0",
	  "atk_slash":"809",
	  "atk_stab":"0",
	  "max_hit":"63",
	  "min_hit":"33"
   },
   "crazed_chopper":{
	  "name":"Crazed Chopper",
	  "img_path":"gear/weapons/axe (18)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"675",
	  "sell_price":"1689",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.7",
	  "atk_crush":"0",
	  "atk_slash":"882",
	  "atk_stab":"0",
	  "max_hit":"63",
	  "min_hit":"33"
   },
   "living_cleaver":{
	  "name":"Living Cleaver",
	  "img_path":"gear/weapons/axe (26)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"675",
	  "sell_price":"1689",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.7",
	  "atk_crush":"0",
	  "atk_slash":"995",
	  "atk_stab":"0",
	  "max_hit":"63",
	  "min_hit":"33"
   },
   "soulstone_axe":{
	  "name":"Soulstone Axe",
	  "img_path":"gear/weapons/axe (8)",
	  "desc":"An axe made from soulstone",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"676",
	  "sell_price":"1690",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.7",
	  "atk_crush":"0",
	  "atk_slash":"1073",
	  "atk_stab":"0",
	  "max_hit":"63",
	  "min_hit":"33"
   },
   "double_fury":{
	  "name":"Double Fury",
	  "img_path":"gear/weapons/axe (14)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"1228",
	  "sell_price":"3069",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.3",
	  "atk_crush":"0",
	  "atk_slash":"1235",
	  "atk_stab":"0",
	  "max_hit":"54",
	  "min_hit":"28"
   },
   "dundor":{
	  "name":"Dundor",
	  "img_path":"gear/weapons/axe (25)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"1228",
	  "sell_price":"3069",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.7",
	  "atk_crush":"0",
	  "atk_slash":"1392",
	  "atk_stab":"0",
	  "max_hit":"63",
	  "min_hit":"33"
   },
   "dulite_axe":{
	  "name":"Dulite Axe",
	  "img_path":"gear/weapons/axe (2)",
	  "desc":"An axe made from dulite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"1121",
	  "sell_price":"2802",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.3",
	  "atk_crush":"0",
	  "atk_slash":"1495",
	  "atk_stab":"0",
	  "max_hit":"146",
	  "min_hit":"75"
   },
   "stormedge":{
	  "name":"Stormedge",
	  "img_path":"gear/weapons/axe (21)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"1948",
	  "sell_price":"4870",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.5",
	  "atk_crush":"0",
	  "atk_slash":"1562",
	  "atk_stab":"0",
	  "max_hit":"159",
	  "min_hit":"82"
   },
   "the_reaper":{
	  "name":"The Reaper",
	  "img_path":"gear/weapons/axe (28)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"1948",
	  "sell_price":"4870",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.5",
	  "atk_crush":"0",
	  "atk_slash":"1658",
	  "atk_stab":"0",
	  "max_hit":"159",
	  "min_hit":"82"
   },
   "midite_axe":{
	  "name":"Midite Axe",
	  "img_path":"gear/weapons/axe (3)",
	  "desc":"An axe made from midite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"1674",
	  "sell_price":"4185",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.6",
	  "atk_crush":"0",
	  "atk_slash":"1863",
	  "atk_stab":"0",
	  "max_hit":"165",
	  "min_hit":"85"
   },
   "soul_reaper":{
	  "name":"Soul Reaper",
	  "img_path":"gear/weapons/axe (22)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"2868",
	  "sell_price":"7170",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.5",
	  "atk_crush":"0",
	  "atk_slash":"2188",
	  "atk_stab":"0",
	  "max_hit":"159",
	  "min_hit":"82"
   },
   "shinite_axe":{
	  "name":"Shinite Axe",
	  "img_path":"gear/weapons/axe (4)",
	  "desc":"An axe made from shinite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"2397",
	  "sell_price":"5992",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.8",
	  "atk_crush":"0",
	  "atk_slash":"2478",
	  "atk_stab":"0",
	  "max_hit":"178",
	  "min_hit":"92"
   },
   "gutrender":{
	  "name":"Gutrender",
	  "img_path":"gear/weapons/axe (13)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"3967",
	  "sell_price":"9918",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.8",
	  "atk_crush":"0",
	  "atk_slash":"2984",
	  "atk_stab":"0",
	  "max_hit":"178",
	  "min_hit":"92"
   },
   "desite_axe":{
	  "name":"Desite Axe",
	  "img_path":"gear/weapons/axe (5)",
	  "desc":"An axe made from desite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"3185",
	  "sell_price":"7962",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.6",
	  "atk_crush":"0",
	  "atk_slash":"3180",
	  "atk_stab":"0",
	  "max_hit":"457",
	  "min_hit":"239"
   },
   "elecdesite_axe":{
	  "name":"Elecdesite Axe",
	  "img_path":"gear/weapons/axe (9)",
	  "desc":"An axe made from elecdesite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"5286",
	  "sell_price":"13216",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.7",
	  "atk_crush":"0",
	  "atk_slash":"3412",
	  "atk_stab":"0",
	  "max_hit":"475",
	  "min_hit":"249"
   },
   "flameweaver":{
	  "name":"Flameweaver",
	  "img_path":"gear/weapons/axe (23)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"5286",
	  "sell_price":"13216",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.5",
	  "atk_crush":"0",
	  "atk_slash":"3514",
	  "atk_stab":"0",
	  "max_hit":"440",
	  "min_hit":"230"
   },
   "lavite_axe":{
	  "name":"Lavite Axe",
	  "img_path":"gear/weapons/axe (6)",
	  "desc":"An axe made from lavite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"4182",
	  "sell_price":"10456",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.4",
	  "atk_crush":"0",
	  "atk_slash":"3781",
	  "atk_stab":"0",
	  "max_hit":"422",
	  "min_hit":"221"
   },
   "blazite_axe":{
	  "name":"Blazite Axe",
	  "img_path":"gear/weapons/axe (10)",
	  "desc":"An axe made from blazite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"6805",
	  "sell_price":"17012",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.3",
	  "atk_crush":"0",
	  "atk_slash":"4199",
	  "atk_stab":"0",
	  "max_hit":"404",
	  "min_hit":"212"
   },
   "skeletal_reaver":{
	  "name":"Skeletal Reaver",
	  "img_path":"gear/weapons/axe (15)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"6805",
	  "sell_price":"17012",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.6",
	  "atk_crush":"0",
	  "atk_slash":"4575",
	  "atk_stab":"0",
	  "max_hit":"457",
	  "min_hit":"240"
   },
   "bonite_axe":{
	  "name":"Bonite Axe",
	  "img_path":"gear/weapons/axe (7)",
	  "desc":"An axe made from bonite",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"5326",
	  "sell_price":"13315",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.6",
	  "atk_crush":"0",
	  "atk_slash":"4895",
	  "atk_stab":"0",
	  "max_hit":"457",
	  "min_hit":"240"
   },
   "painbringer":{
	  "name":"Painbringer",
	  "img_path":"gear/weapons/axe (24)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"8458",
	  "sell_price":"21144",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.4",
	  "atk_crush":"0",
	  "atk_slash":"5515",
	  "atk_stab":"0",
	  "max_hit":"422",
	  "min_hit":"221"
   },
   "bloody_dualblade":{
	  "name":"Bloody Dualblade",
	  "img_path":"gear/weapons/axe (19)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"8458",
	  "sell_price":"21144",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.5",
	  "atk_crush":"0",
	  "atk_slash":"6166",
	  "atk_stab":"0",
	  "max_hit":"440",
	  "min_hit":"230"
   },
   "twisted_axe":{
	  "name":"Twisted Axe",
	  "img_path":"gear/weapons/axe (12)",
	  "desc":"An axe made from twisted",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"6565",
	  "sell_price":"16413",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.6",
	  "atk_crush":"0",
	  "atk_slash":"6209",
	  "atk_stab":"0",
	  "max_hit":"1250",
	  "min_hit":"655"
   },
   "holy_cross":{
	  "name":"Holy Cross",
	  "img_path":"gear/weapons/axe (16)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"10446",
	  "sell_price":"26115",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.8",
	  "atk_crush":"0",
	  "atk_slash":"6261",
	  "atk_stab":"0",
	  "max_hit":"1346",
	  "min_hit":"705"
   },
   "hellreacher":{
	  "name":"Hellreacher",
	  "img_path":"gear/weapons/axe (20)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"10446",
	  "sell_price":"26115",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.8",
	  "atk_crush":"0",
	  "atk_slash":"6304",
	  "atk_stab":"0",
	  "max_hit":"1346",
	  "min_hit":"705"
   },
   "vanquisher":{
	  "name":"Vanquisher",
	  "img_path":"gear/weapons/axe (29)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"10446",
	  "sell_price":"26115",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.7",
	  "atk_crush":"0",
	  "atk_slash":"6338",
	  "atk_stab":"0",
	  "max_hit":"1298",
	  "min_hit":"680"
   },
   "doomsday":{
	  "name":"Doomsday",
	  "img_path":"gear/weapons/axe (27)",
	  "desc":"",
	  "main_stat":"atk_slash",
	  "type":"weapon",
	  "buy_price":"10446",
	  "sell_price":"26115",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.4",
	  "atk_crush":"0",
	  "atk_slash":"6389",
	  "atk_stab":"0",
	  "max_hit":"1154",
	  "min_hit":"604"
   },
   "stone_spear":{
	  "name":"Stone Spear",
	  "img_path":"gear/weapons/spear (1)",
	  "desc":"A spear made from stone",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"104",
	  "sell_price":"259",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"673",
	  "max_hit":"58",
	  "min_hit":"20"
   },
   "bloodstone_spear":{
	  "name":"Bloodstone Spear",
	  "img_path":"gear/weapons/spear (11)",
	  "desc":"A spear made from bloodstone",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"255",
	  "sell_price":"636",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"781",
	  "max_hit":"53",
	  "min_hit":"18"
   },
   "justice":{
	  "name":"Justice",
	  "img_path":"gear/weapons/spear (19)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"612",
	  "sell_price":"1529",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"918",
	  "max_hit":"58",
	  "min_hit":"20"
   },
   "soulstone_spear":{
	  "name":"Soulstone Spear",
	  "img_path":"gear/weapons/spear (8)",
	  "desc":"A spear made from soulstone",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"502",
	  "sell_price":"1256",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1101",
	  "max_hit":"58",
	  "min_hit":"20"
   },
   "witherbrand":{
	  "name":"Witherbrand",
	  "img_path":"gear/weapons/spear (13)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"1119",
	  "sell_price":"2799",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.3",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1285",
	  "max_hit":"61",
	  "min_hit":"21"
   },
   "dulite_spear":{
	  "name":"Dulite Spear",
	  "img_path":"gear/weapons/spear (2)",
	  "desc":"A spear made from dulite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"847",
	  "sell_price":"2117",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1530",
	  "max_hit":"136",
	  "min_hit":"47"
   },
   "midite_spear":{
	  "name":"Midite Spear",
	  "img_path":"gear/weapons/spear (3)",
	  "desc":"A spear made from midite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"1286",
	  "sell_price":"3216",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"1790",
	  "max_hit":"136",
	  "min_hit":"47"
   },
   "gloompike":{
	  "name":"Gloompike",
	  "img_path":"gear/weapons/spear (14)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"2639",
	  "sell_price":"6597",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.3",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"2020",
	  "max_hit":"164",
	  "min_hit":"57"
   },
   "shinite_spear":{
	  "name":"Shinite Spear",
	  "img_path":"gear/weapons/spear (4)",
	  "desc":"A spear made from shinite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"1841",
	  "sell_price":"4603",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"2406",
	  "max_hit":"157",
	  "min_hit":"54"
   },
   "truthseeker":{
	  "name":"Truthseeker",
	  "img_path":"gear/weapons/spear (16)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"3642",
	  "sell_price":"9105",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"2754",
	  "max_hit":"157",
	  "min_hit":"54"
   },
   "desite_spear":{
	  "name":"Desite Spear",
	  "img_path":"gear/weapons/spear (5)",
	  "desc":"A spear made from desite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"2497",
	  "sell_price":"6243",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"2996",
	  "max_hit":"395",
	  "min_hit":"138"
   },
   "elecdesite_spear":{
	  "name":"Elecdesite Spear",
	  "img_path":"gear/weapons/spear (9)",
	  "desc":"A spear made from elecdesite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"4841",
	  "sell_price":"12102",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"3244",
	  "max_hit":"375",
	  "min_hit":"132"
   },
   "lavite_spear":{
	  "name":"Lavite Spear",
	  "img_path":"gear/weapons/spear (6)",
	  "desc":"A spear made from lavite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"3279",
	  "sell_price":"8197",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"3569",
	  "max_hit":"395",
	  "min_hit":"138"
   },
   "blazite_spear":{
	  "name":"Blazite Spear",
	  "img_path":"gear/weapons/spear (10)",
	  "desc":"A spear made from blazite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"6216",
	  "sell_price":"15540",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.3",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"4223",
	  "max_hit":"454",
	  "min_hit":"159"
   },
   "bonite_spear":{
	  "name":"Bonite Spear",
	  "img_path":"gear/weapons/spear (7)",
	  "desc":"A spear made from bonite",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"4173",
	  "sell_price":"10434",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"4900",
	  "max_hit":"375",
	  "min_hit":"132"
   },
   "apocalypse":{
	  "name":"Apocalypse",
	  "img_path":"gear/weapons/spear (15)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"7929",
	  "sell_price":"19823",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"5692",
	  "max_hit":"415",
	  "min_hit":"145"
   },
   "twisted_spear":{
	  "name":"Twisted Spear",
	  "img_path":"gear/weapons/spear (12)",
	  "desc":"A spear made from twisted",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"5141",
	  "sell_price":"12853",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"5748",
	  "max_hit":"1025",
	  "min_hit":"359"
   },
   "the_vindicator":{
	  "name":"The Vindicator",
	  "img_path":"gear/weapons/spear (18)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"9793",
	  "sell_price":"24483",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"5798",
	  "max_hit":"1133",
	  "min_hit":"397"
   },
   "the_silent_shovel":{
	  "name":"The Silent Shovel",
	  "img_path":"gear/weapons/spear (17)",
	  "desc":"",
	  "main_stat":"atk_stab",
	  "type":"weapon",
	  "buy_price":"9793",
	  "sell_price":"24483",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"0",
	  "atk_slash":"0",
	  "atk_stab":"5841",
	  "max_hit":"1133",
	  "min_hit":"397"
   },
   "stone_maul":{
	  "name":"Stone Maul",
	  "img_path":"gear/weapons/maul (1)",
	  "desc":"A maul made from stone",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"165",
	  "sell_price":"412",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.7",
	  "atk_crush":"567",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"92",
	  "min_hit":"24"
   },
   "giant_smasher":{
	  "name":"Giant Smasher",
	  "img_path":"gear/weapons/maul (13)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"291",
	  "sell_price":"729",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.7",
	  "atk_crush":"591",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"92",
	  "min_hit":"24"
   },
   "truth_serum":{
	  "name":"Truth Serum",
	  "img_path":"gear/weapons/maul (21)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"291",
	  "sell_price":"729",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.9",
	  "atk_crush":"617",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"99",
	  "min_hit":"25"
   },
   "bloodstone_maul":{
	  "name":"Bloodstone Maul",
	  "img_path":"gear/weapons/maul (11)",
	  "desc":"A maul made from bloodstone",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"399",
	  "sell_price":"997",
	  "abilities":{
		 
	  },
	  "atk_speed":"3.1",
	  "atk_crush":"688",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"105",
	  "min_hit":"27"
   },
   "voice_of_reason":{
	  "name":"Voice of Reason",
	  "img_path":"gear/weapons/maul (20)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"675",
	  "sell_price":"1689",
	  "abilities":{
		 
	  },
	  "atk_speed":"3",
	  "atk_crush":"762",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"102",
	  "min_hit":"26"
   },
   "vinethorn":{
	  "name":"Vinethorn",
	  "img_path":"gear/weapons/maul (32)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"675",
	  "sell_price":"1689",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.6",
	  "atk_crush":"842",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"88",
	  "min_hit":"23"
   },
   "soulstone_maul":{
	  "name":"Soulstone Maul",
	  "img_path":"gear/weapons/maul (8)",
	  "desc":"A maul made from soulstone",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"756",
	  "sell_price":"1891",
	  "abilities":{
		 
	  },
	  "atk_speed":"3",
	  "atk_crush":"909",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"102",
	  "min_hit":"26"
   },
   "mangled_mess":{
	  "name":"Mangled Mess",
	  "img_path":"gear/weapons/maul (27)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"1228",
	  "sell_price":"3069",
	  "abilities":{
		 
	  },
	  "atk_speed":"3",
	  "atk_crush":"1023",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"102",
	  "min_hit":"26"
   },
   "skullcrusher":{
	  "name":"Skullcrusher",
	  "img_path":"gear/weapons/maul (23)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"1228",
	  "sell_price":"3069",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.8",
	  "atk_crush":"1178",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"95",
	  "min_hit":"24"
   },
   "dulite_maul":{
	  "name":"Dulite Maul",
	  "img_path":"gear/weapons/maul (2)",
	  "desc":"A maul made from dulite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"1241",
	  "sell_price":"3102",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.8",
	  "atk_crush":"1237",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"258",
	  "min_hit":"65"
   },
   "hatred":{
	  "name":"Hatred",
	  "img_path":"gear/weapons/maul (19)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"1948",
	  "sell_price":"4870",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.9",
	  "atk_crush":"1325",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"268",
	  "min_hit":"68"
   },
   "tough_as_nails":{
	  "name":"Tough as Nails",
	  "img_path":"gear/weapons/maul (22)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"1948",
	  "sell_price":"4870",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.8",
	  "atk_crush":"1403",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"258",
	  "min_hit":"65"
   },
   "midite_maul":{
	  "name":"Midite Maul",
	  "img_path":"gear/weapons/maul (3)",
	  "desc":"A maul made from midite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"1890",
	  "sell_price":"4726",
	  "abilities":{
		 
	  },
	  "atk_speed":"3.1",
	  "atk_crush":"1609",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"286",
	  "min_hit":"72"
   },
   "mourning_star":{
	  "name":"Mourning Star",
	  "img_path":"gear/weapons/maul (18)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"2868",
	  "sell_price":"7170",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.8",
	  "atk_crush":"1715",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"259",
	  "min_hit":"65"
   },
   "one_hit_wonder":{
	  "name":"One Hit Wonder",
	  "img_path":"gear/weapons/maul (16)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"2868",
	  "sell_price":"7170",
	  "abilities":{
		 
	  },
	  "atk_speed":"3",
	  "atk_crush":"1851",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"277",
	  "min_hit":"70"
   },
   "shinite_maul":{
	  "name":"Shinite Maul",
	  "img_path":"gear/weapons/maul (4)",
	  "desc":"A maul made from shinite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"2667",
	  "sell_price":"6668",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.8",
	  "atk_crush":"2090",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"259",
	  "min_hit":"65"
   },
   "lightbane":{
	  "name":"Lightbane",
	  "img_path":"gear/weapons/maul (14)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"3967",
	  "sell_price":"9918",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.8",
	  "atk_crush":"2368",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"259",
	  "min_hit":"65"
   },
   "robocrush":{
	  "name":"Robocrush",
	  "img_path":"gear/weapons/maul (31)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"3967",
	  "sell_price":"9918",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.7",
	  "atk_crush":"2525",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"249",
	  "min_hit":"63"
   },
   "desite_maul":{
	  "name":"Desite Maul",
	  "img_path":"gear/weapons/maul (5)",
	  "desc":"A maul made from desite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"3552",
	  "sell_price":"8879",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.6",
	  "atk_crush":"2690",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"663",
	  "min_hit":"171"
   },
   "elecdesite_maul":{
	  "name":"Elecdesite Maul",
	  "img_path":"gear/weapons/maul (9)",
	  "desc":"A maul made from elecdesite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"5286",
	  "sell_price":"13216",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.7",
	  "atk_crush":"2835",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"689",
	  "min_hit":"177"
   },
   "starsmash":{
	  "name":"Starsmash",
	  "img_path":"gear/weapons/maul (34)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"5286",
	  "sell_price":"13216",
	  "abilities":{
		 
	  },
	  "atk_speed":"3",
	  "atk_crush":"2973",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"765",
	  "min_hit":"197"
   },
   "lavite_maul":{
	  "name":"Lavite Maul",
	  "img_path":"gear/weapons/maul (6)",
	  "desc":"A maul made from lavite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"4676",
	  "sell_price":"11691",
	  "abilities":{
		 
	  },
	  "atk_speed":"3",
	  "atk_crush":"3084",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"765",
	  "min_hit":"197"
   },
   "blazite_maul":{
	  "name":"Blazite Maul",
	  "img_path":"gear/weapons/maul (10)",
	  "desc":"A maul made from blazite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"6805",
	  "sell_price":"17012",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.7",
	  "atk_crush":"3303",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"689",
	  "min_hit":"177"
   },
   "heatbringer":{
	  "name":"Heatbringer",
	  "img_path":"gear/weapons/maul (35)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"6805",
	  "sell_price":"17012",
	  "abilities":{
		 
	  },
	  "atk_speed":"3",
	  "atk_crush":"3632",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"765",
	  "min_hit":"197"
   },
   "drain_bamage":{
	  "name":"Drain Bamage",
	  "img_path":"gear/weapons/maul (28)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"6805",
	  "sell_price":"17012",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.8",
	  "atk_crush":"3871",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"714",
	  "min_hit":"184"
   },
   "bonite_maul":{
	  "name":"Bonite Maul",
	  "img_path":"gear/weapons/maul (7)",
	  "desc":"A maul made from bonite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"5810",
	  "sell_price":"14525",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.6",
	  "atk_crush":"4005",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"663",
	  "min_hit":"171"
   },
   "sweet_glory":{
	  "name":"Sweet Glory",
	  "img_path":"gear/weapons/maul (25)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"8458",
	  "sell_price":"21144",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.7",
	  "atk_crush":"4488",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"689",
	  "min_hit":"177"
   },
   "necropunch":{
	  "name":"Necropunch",
	  "img_path":"gear/weapons/maul (30)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"8458",
	  "sell_price":"21144",
	  "abilities":{
		 
	  },
	  "atk_speed":"3",
	  "atk_crush":"4848",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"765",
	  "min_hit":"197"
   },
   "the_warden":{
	  "name":"The Warden",
	  "img_path":"gear/weapons/maul (29)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"8458",
	  "sell_price":"21144",
	  "abilities":{
		 
	  },
	  "atk_speed":"3",
	  "atk_crush":"5217",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"765",
	  "min_hit":"197"
   },
   "twisted_maul":{
	  "name":"Twisted Maul",
	  "img_path":"gear/weapons/maul (12)",
	  "desc":"A maul made from twisted",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"7162",
	  "sell_price":"17905",
	  "abilities":{
		 
	  },
	  "atk_speed":"3",
	  "atk_crush":"5272",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"2092",
	  "min_hit":"538"
   },
   "ogres_best_friend":{
	  "name":"Ogres Best Friend",
	  "img_path":"gear/weapons/maul (17)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"10446",
	  "sell_price":"26115",
	  "abilities":{
		 
	  },
	  "atk_speed":"3",
	  "atk_crush":"5322",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"2092",
	  "min_hit":"538"
   },
   "silence_splitter":{
	  "name":"Silence Splitter",
	  "img_path":"gear/weapons/maul (26)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"10446",
	  "sell_price":"26115",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.7",
	  "atk_crush":"5384",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"1883",
	  "min_hit":"484"
   },
   "satanic_flail":{
	  "name":"Satanic Flail",
	  "img_path":"gear/weapons/maul (24)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"10446",
	  "sell_price":"26115",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.8",
	  "atk_crush":"5423",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"1953",
	  "min_hit":"502"
   },
   "wall_breaker":{
	  "name":"Wall Breaker",
	  "img_path":"gear/weapons/maul (15)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"10446",
	  "sell_price":"26115",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.8",
	  "atk_crush":"5466",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"1953",
	  "min_hit":"502"
   },
   "soulkeeper":{
	  "name":"Soulkeeper",
	  "img_path":"gear/weapons/maul (33)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"10446",
	  "sell_price":"26115",
	  "abilities":{
		 
	  },
	  "atk_speed":"3.1",
	  "atk_crush":"5505",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"2162",
	  "min_hit":"556"
   },
   "stone_knuckles":{
	  "name":"Stone Knuckles",
	  "img_path":"gear/weapons/knuckles (1)",
	  "desc":"Knuckles made from stone",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"68",
	  "sell_price":"169",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.7",
	  "atk_crush":"571",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"40",
	  "min_hit":"11"
   },
   "faceplant":{
	  "name":"Faceplant",
	  "img_path":"gear/weapons/knuckles (18)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"222",
	  "sell_price":"556",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"701",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"42",
	  "min_hit":"12"
   },
   "bloodstone_knuckles":{
	  "name":"Bloodstone Knuckles",
	  "img_path":"gear/weapons/knuckles (11)",
	  "desc":"Knuckles made from bloodstone",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"170",
	  "sell_price":"426",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"844",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"42",
	  "min_hit":"12"
   },
   "subtle_sting":{
	  "name":"Subtle Sting",
	  "img_path":"gear/weapons/knuckles (17)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"525",
	  "sell_price":"1312",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"956",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"45",
	  "min_hit":"13"
   },
   "soulstone_knuckles":{
	  "name":"Soulstone Knuckles",
	  "img_path":"gear/weapons/knuckles (8)",
	  "desc":"Knuckles made from soulstone",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"351",
	  "sell_price":"877",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"1109",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"42",
	  "min_hit":"12"
   },
   "the_pounders":{
	  "name":"The Pounders",
	  "img_path":"gear/weapons/knuckles (22)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"973",
	  "sell_price":"2433",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"1339",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"45",
	  "min_hit":"13"
   },
   "dulite_knuckles":{
	  "name":"Dulite Knuckles",
	  "img_path":"gear/weapons/knuckles (2)",
	  "desc":"Knuckles made from dulite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"600",
	  "sell_price":"1500",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"1445",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"127",
	  "min_hit":"38"
   },
   "winters_bite":{
	  "name":"Winters Bite",
	  "img_path":"gear/weapons/knuckles (15)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"1570",
	  "sell_price":"3925",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"1594",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"115",
	  "min_hit":"34"
   },
   "midite_knuckles":{
	  "name":"Midite Knuckles",
	  "img_path":"gear/weapons/knuckles (3)",
	  "desc":"Knuckles made from midite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"925",
	  "sell_price":"2313",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.7",
	  "atk_crush":"1809",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"103",
	  "min_hit":"30"
   },
   "dualism":{
	  "name":"Dualism",
	  "img_path":"gear/weapons/knuckles (14)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"2352",
	  "sell_price":"5880",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"2104",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"127",
	  "min_hit":"38"
   },
   "shinite_knuckles":{
	  "name":"Shinite Knuckles",
	  "img_path":"gear/weapons/knuckles (4)",
	  "desc":"Knuckles made from shinite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"1346",
	  "sell_price":"3364",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"2498",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"121",
	  "min_hit":"36"
   },
   "dual_knuckles":{
	  "name":"Dual Knuckles",
	  "img_path":"gear/weapons/knuckles (24)",
	  "desc":"Knuckles made from dual",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"3252",
	  "sell_price":"8131",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"2869",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"121",
	  "min_hit":"36"
   },
   "desite_knuckles":{
	  "name":"Desite Knuckles",
	  "img_path":"gear/weapons/knuckles (5)",
	  "desc":"Knuckles made from desite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"1823",
	  "sell_price":"4558",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"2997",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"335",
	  "min_hit":"96"
   },
   "elecdesite_knuckles":{
	  "name":"Elecdesite Knuckles",
	  "img_path":"gear/weapons/knuckles (9)",
	  "desc":"Knuckles made from elecdesite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"4326",
	  "sell_price":"10816",
	  "abilities":{
		 
	  },
	  "atk_speed":"2",
	  "atk_crush":"3132",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"353",
	  "min_hit":"101"
   },
   "facial_makeover":{
	  "name":"Facial Makeover",
	  "img_path":"gear/weapons/knuckles (13)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"4326",
	  "sell_price":"10816",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"3379",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"371",
	  "min_hit":"106"
   },
   "lavite_knuckles":{
	  "name":"Lavite Knuckles",
	  "img_path":"gear/weapons/knuckles (6)",
	  "desc":"Knuckles made from lavite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"2389",
	  "sell_price":"5972",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.7",
	  "atk_crush":"3553",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"300",
	  "min_hit":"86"
   },
   "blazite_knuckles":{
	  "name":"Blazite Knuckles",
	  "img_path":"gear/weapons/knuckles (10)",
	  "desc":"Knuckles made from blazite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"5699",
	  "sell_price":"14247",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"3898",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"371",
	  "min_hit":"106"
   },
   "flesh_leech":{
	  "name":"Flesh Leech",
	  "img_path":"gear/weapons/knuckles (20)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"5699",
	  "sell_price":"14247",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.8",
	  "atk_crush":"4399",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"318",
	  "min_hit":"91"
   },
   "bonite_knuckles":{
	  "name":"Bonite Knuckles",
	  "img_path":"gear/weapons/knuckles (7)",
	  "desc":"Knuckles made from bonite",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"3110",
	  "sell_price":"7775",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"4819",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"371",
	  "min_hit":"106"
   },
   "life_eater":{
	  "name":"Life Eater",
	  "img_path":"gear/weapons/knuckles (21)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"7081",
	  "sell_price":"17702",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"5466",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"371",
	  "min_hit":"106"
   },
   "eye_bruisers":{
	  "name":"Eye Bruisers",
	  "img_path":"gear/weapons/knuckles (16)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"7081",
	  "sell_price":"17702",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"5929",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"335",
	  "min_hit":"96"
   },
   "twisted_knuckles":{
	  "name":"Twisted Knuckles",
	  "img_path":"gear/weapons/knuckles (12)",
	  "desc":"Knuckles made from twisted",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"3829",
	  "sell_price":"9573",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"5998",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"1013",
	  "min_hit":"289"
   },
   "life_voider":{
	  "name":"Life Voider",
	  "img_path":"gear/weapons/knuckles (23)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"8736",
	  "sell_price":"21841",
	  "abilities":{
		 
	  },
	  "atk_speed":"1.9",
	  "atk_crush":"6045",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"917",
	  "min_hit":"262"
   },
   "nullfists":{
	  "name":"Nullfists",
	  "img_path":"gear/weapons/knuckles (19)",
	  "desc":"",
	  "main_stat":"atk_crush",
	  "type":"weapon",
	  "buy_price":"8736",
	  "sell_price":"21841",
	  "abilities":{
		 
	  },
	  "atk_speed":"2.1",
	  "atk_crush":"6089",
	  "atk_slash":"0",
	  "atk_stab":"0",
	  "max_hit":"1013",
	  "min_hit":"289"
   }
}
