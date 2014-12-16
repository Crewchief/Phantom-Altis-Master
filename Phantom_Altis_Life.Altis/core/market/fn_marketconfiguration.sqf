/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
	

	["oilp", 660, 412, 1230, 3, 1,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["glass",1],
			["platinumr",1],
			["wine",1]
		] 
	],
	
	["iron_r", 620, 600, 1550, 3, 1,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["glass",1],
			["platinumr",1],
			["wine",1]
		] 
	],
	
	["diamondc", 780, 400, 1050, 3, 1, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["glass",1],
			["platinumr",1],
			["wine",1]
		] 
	],
	
	["copper_r", 580, 300, 1020, 3, 1,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["glass",1],
			["platinumr",1],
			["wine",1]
		] 
	],
	
	["salt_r", 624, 300, 1022, 3, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["silverr",1],
			["glass",1],
			["platinumr",1],
			["wine",1]
		] 
	],
	
	["glass", 600, 290, 950, 3, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["platinumr",1],
			["wine",1]
		] 
	],
	
	["cement", 500, 312, 1062, 3, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["silverr",1],
			["glass",1],
			["platinumr",1],
			["wine",1]
		] 
	],	
	
	["wine", 460, 313, 812, 3, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["silverr",1],
			["cement",1],
			["glass",1],
			["platinumr",1],
			["moonshine",1]
		] 
	],	
	
	///////////////////////////////////
	
	["turtle", 2270, 2000, 5525, 3, 1,  
		[ 
			["frogp",1]
		] 
	],
	
	["methu", 570, 375, 1435, 3, 1,  
		[ 
			
		] 
	],	
	
	["moonshine", 2233, 2000, 5322, 5, 1,  
		[ 
			["wine",1]
		] 
	],
	
	["marijuana", 834, 450, 1870, 3, 1,   
		[ 
			["methu",1], 
			["cocainep",1],
			["heroinp",1],
			["crystalmeth",1],
			["frogp",1]
		] 
	],
	
	["cocainep", 1164, 600, 2060, 3, 1,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["heroinp",1],
			["crystalmeth",1],
			["frogp",1]
		] 
	],

	["crystalmeth", 2341, 2000, 5907, 5, 1,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["heroinp",1],
			["cocainep",1],
			["frogp",1]
		] 
	],

	["heroinp", 1060, 500, 1800, 4, 1,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["crystalmeth",1],
			["cocainep",1],
			["frogp",1]
		] 
	],
	
	["frogp", 890, 512, 1997, 3, 1,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["crystalmeth",1],
			["cocainep",1],
			["heroin",1]
		] 
	],
	
	["uraniump", 3200, 2000, 4000, 3, 1,   
		[ 
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["silverr",1],
			["glass",1],
			["platinumr",1]
		] 
	]
	

];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
//};