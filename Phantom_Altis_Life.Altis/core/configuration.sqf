#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 0.5; //Scaled in minutes
Life_request_timer = false;
life_has_insurance = false;
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_donDis = 1;
life_newDonateSys = false;
life_istazed = false;
life_isDowned = false;
life_god = false;
life_frozen = false;
life_is_alive = false;
life_Car_God = 0;

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,4000); //Fee for players to pay when revived.
__CONST__(life_kidney_fee,9000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,50000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,4000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,3.0); //BLAH

__CONST__(life_enableFatigue,true); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 50; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 50; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,1000);
__CONST__(life_impound_boat,1500);
__CONST__(life_impound_air,2000);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west:
	{
		life_atmcash = 30000; //Starting Bank Money
		//life_paycheck = 400; //Paycheck Amount
	};
	case civilian:
	{
		life_atmcash = 100000; //Starting Bank Money
		life_paycheck = 500; //Paycheck Amount
	};

	case independent: {
		life_atmcash = 30000;
		life_paycheck = 650;
	};
};

/*
	Master Array of items?
*/

life_vShop_rentalOnly = ["B_MRAP_01_hmg_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..


life_inv_items =
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_wine",
	"life_inv_grapes",
	"life_inv_frog",
	"life_inv_frogp",
	"life_inv_crystalmeth",
	"life_inv_methu",
	"life_inv_phosphorous",
	"life_inv_ephedra",
	"life_inv_lithium",
	"life_inv_moonshine",
	"life_inv_mashu",
	"life_inv_corn",
	"life_inv_sugar",
	"life_inv_yeast",
	"life_inv_ziptie",
	"life_inv_goldbarp",
	"life_inv_underwatercharge",
	"life_inv_kidney",
	"life_inv_scalpel",
	"life_inv_uraniumu",
	"life_inv_uraniump"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_frog","civ"],
	["license_civ_crystalmeth","civ"],
	["license_civ_methu","civ"],
	["license_civ_moonshine","civ"],
	["license_civ_mashu","civ"],
	["license_civ_wine","civ"],
	["license_civ_vigilante","civ"],
	["license_civ_aerobatic","civ"],
	["license_civ_uranium","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_prof =
[
["Oil_Prof","civ"],
["Iron_Prof","civ"],
["Copper_Prof","civ"],
["Heroin_Prof","civ"],
["Canabis_Prof","civ"],
["Cocain_Prof","civ"],
["Salt_Prof","civ"],
["Fruit_Prof","civ"],
["Diamond_Prof","civ"],
["Rock_Prof","civ"],
["Sand_Prof","civ"]
];


//Setup License Variables
{missionNamespace setVariable[(_x select 0),[1,0]];} foreach life_prof;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["cannabis",300],["lithium",500],["heroinu",400],["heroinp",800],["cocaine",610],["cocainep",1120],["marijuana",720],["turtle",2600],["blastingcharge",10000],["boltcutter",500],["frog",410],["frogp",820],["crystalmeth",2780],["methu",600],["moonshine",2740],["mashu",1120],["phosphorous",500],["ephedra",500],["kidney",6000],["uraniumu",3000],["uraniump",5000]];

/*
	Sell / buy arrays
*/
sell_array =
[
	["apple",50],
	["heroinu",1850],
	["heroinp",2650],
	["salema",45],
	["ornate",40],
	["mackerel",375],
	["tuna",800],
	["mullet",350],
	["catshark",300],
	["rabbit",65],
	["oilp",3200],
	["turtle",3000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",2350],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",225],
	["redgull",50],
	["peach",55],
	["cocaine",3000],
	["cocainep",5000],
	["diamond",750],
	["diamondc",2000],
	["iron_r",3200],
	["copper_r",1500],
	["salt_r",1650],
	["glass",1450],
	["fuelF",500],
	["spikeStrip",1200],
	["cement",1950],
	["goldbar",95000],
	["wine",255],
	["grapes",70],
	["frog",1450],
	["frogp",2150],
	["crystalmeth",3500],
	["methu",2200],
	["moonshine",3400],
	["mashu",2100],
	["corn",500],
	["sugar",500],
	["yeast",500],
	["ziptie",50],
	["goldbarp",15000],
	["kidney",15000],
	["scalpel",80],
	["uraniumu",3000],
	["uraniump",4000]
];
__CONST__(sell_array,sell_array);

buy_array =
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["pickaxe",1200],
	["redgull",350],
	["fuelF",850],
	["peach",68],
	["spikeStrip",800],
	["blastingcharge",15000],
	["boltcutter",600],
	["defusekit",2500],
	["storagesmall",30000],
	["storagebig",50000],
	["ziptie",50],
	["underwatercharge",14000],
	["kidney",15000],
	["scalpel",200]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",541],
	["C_Hatchback_01_F",2868],
	["C_Offroad_01_F", 3750],
	["B_G_Offroad_01_F",3750],
	["C_SUV_01_F",7012.5],
	["O_Truck_03_device_F",51000],
	["C_Van_01_transport_F",7650],
	["C_Hatchback_01_sport_F",15300],
	["C_Van_01_fuel_F",4500],
	["I_Heli_Transport_02_F",125000],
	["C_Van_01_box_F",10200],
	["I_Truck_02_transport_F",11475],
	["I_Truck_02_covered_F",16200],
	["B_Truck_01_transport_F",31875],
	["B_Truck_01_box_F", 10200],
	["I_MRAP_03_F",90000],
	["B_Heli_Light_01_F",60000],
	["C_Heli_Light_01_civil_F",60000],
	["O_Heli_Light_02_unarmed_F",90000],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",1500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",2500],
	["B_Boat_Armed_01_minigun_F",16500],
	["B_SDV_01_F",25000],
	["B_G_Offroad_01_armed_F",69862],
	["B_Heli_Transport_03_unarmed_F",125000],
	["O_Heli_Transport_04_bench_F",125000],
	["O_Heli_Transport_04_covered_F",125000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",1000],
	["C_Hatchback_01_F",1400],
	["C_Offroad_01_F", 1200],
	["B_G_Offroad_01_F",1500],
	["C_SUV_01_F",3500],
	["O_Truck_03_device_F",120000],
	["C_Van_01_transport_F",14200],
	["C_Hatchback_01_sport_F",30000],
	["C_Van_01_fuel_F",3850],
	["I_Heli_Transport_02_F",620000],
	["C_Van_01_box_F",20400],
	["I_Truck_02_transport_F",228750],
	["I_Truck_02_covered_F",32400],
	["B_Truck_01_transport_F",63750],
	["B_Truck_01_box_F", 20400],
	["I_MRAP_03_F",612000],
	["B_Heli_Light_01_F",178500],
	["C_Heli_Light_01_civil_F",178500],
	["O_Heli_Light_02_unarmed_F",306000],
	["C_Rubberboat",800],
	["C_Boat_Civil_01_F",3000],
	["B_Boat_Transport_01_F",900],
	["O_Lifeboat",800],
	["C_Boat_Civil_01_police_F",5000],
	["B_Boat_Armed_01_minigun_F",21000],
	["B_SDV_01_F",50000],
	["C_Kart_01_Blu_F",2000],
	["C_Kart_01_Fuel_F",2000],
	["C_Kart_01_Red_F",2000],
	["C_Kart_01_Vrana_F",2000],
	["B_Heli_Transport_03_unarmed_F",820000],
	["O_Heli_Transport_04_bench_F",820000],
	["O_Heli_Transport_04_covered_F",820000]
];
__CONST__(life_garage_sell,life_garage_sell);