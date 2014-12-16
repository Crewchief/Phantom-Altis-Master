/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {"Unprocessed Oil"};
	case "life_inv_oilp": {"Processed Oil"};
	case "life_inv_heroinu": {"Unprocessed Heroin"};
	case "life_inv_heroinp": {"Processed Heroin"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Apple"};
	case "life_inv_rabbit": {"Rabbit Meat"};
	case "life_inv_salema": {"Salema Meat"};
	case "life_inv_ornate": {"Ornate Meat"};
	case "life_inv_mackerel": {"Mackerel Meat"};
	case "life_inv_tuna": {"Tuna Meat"};
	case "life_inv_mullet": {"Mullet Meat"};
	case "life_inv_catshark": {"Cat Shark Meat"};
	case "life_inv_turtle": {"Turtle Meat"};
	case "life_inv_fishingpoles": {"Fishing Pole"};
	case "life_inv_water": {"Water Bottle"};
	case "life_inv_coffee": {"Coffee"};
	case "life_inv_turtlesoup": {"Turtle Soup"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Empty Fuel Can"};
	case "life_inv_fuelF": {"Full Fuel Can"};
	case "life_inv_pickaxe": {"Pickaxe"};
	case "life_inv_copperore": {"Copper Ore"};
	case "life_inv_ironore": {"Iron Ore"};
	case "life_inv_ironr": {"Iron Ingot"};
	case "life_inv_copperr": {"Copper Ingot"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_salt": {"Salt"};
	case "life_inv_saltr": {"Refined Salt"};
	case "life_inv_glass": {"Glass"};
	case "life_inv_diamond": {"Diamond Uncut"};
	case "life_inv_diamondr": {"Diamond Cut"};
	case "life_inv_tbacon": {"Tactical Bacon"};
	case "life_inv_redgull": {"RedGull"};
	case "life_inv_lockpick": {"Lockpick"};
	case "life_inv_peach": {"Peach"};
	case "life_inv_coke": {"Unprocessed Cocaine"};
	case "life_inv_cokep": {"Processed Cocaine"};
	case "life_inv_spikeStrip": {"Spike Strip"};
	case "life_inv_rock": {"Rock"};
	case "life_inv_cement": {"Cement Bag"};
	case "life_inv_goldbar": {"Gold Bar"};
	case "life_inv_blastingcharge": {"Blasting Charge"};
	case "life_inv_boltcutter": {"Bolt Cutter"};
	case "life_inv_defusekit": {"Bomb Defusal Kit"};
	case "life_inv_storagesmall": {"Small Storage Box"};
	case "life_inv_storagebig": {"Large Storage Box"};
	case "life_inv_wine": {"Wine"};
	case "life_inv_frog": {"Frog"};
	case "life_inv_frogp": {"Frog LSD"};
	case "life_inv_crystalmeth": {"Blue Crystal Meth"};
	case "life_inv_methu": {"Unprocessed Meth"};
	case "life_inv_phosphorous": {"Red Phosphorous"};
	case "life_inv_ephedra": {"Ephedra Plant"};
	case "life_inv_lithium": {"Lithium Rocks"};
	case "life_inv_moonshine": {"Moonshine"};
	case "life_inv_mashu": {"Sour Mash"};
	case "life_inv_corn": {"Corn"};
	case "life_inv_sugar": {"Sugar"};
	case "life_inv_yeast": {"Yeast"};
	case "life_inv_grapes": {"Grapes"};
	case "life_inv_ziptie": {"Ziptie"};
	case "life_inv_underwatercharge": {(localize "STR_Item_UCharge")};
	case "life_inv_goldbarp": {(localize "STR_Item_GoldScrap")};
	case "life_inv_kidney": {"Black Market Kidney"};
	case "life_inv_scalpel": {"Scalpel"};
	case "life_inv_uraniumu": {"Raw Uranium"};
	case "life_inv_uraniump": {"Uranium"};

	//License Block
	case "license_civ_driver": {"Driver License"};
	case "license_civ_air": {"Pilot License"};
	case "license_civ_heroin": {"Heroin Training"};
	case "license_civ_gang": {"Gang License"};
	case "license_civ_oil": {"Oil Processing"};
	case "license_civ_dive": {"Diving License"};
	case "license_civ_boat": {"Boating License"};
	case "license_civ_gun": {"Firearm License"};
	case "license_cop_air": {"Pilot License"};
	case "license_cop_swat": {"Swat License"};
	case "license_cop_cg": {"Coast Guard"};
	case "license_civ_rebel": {"Rebel Training"};
	case "license_civ_truck": {"Truck License"};
	case "license_civ_diamond": {"Diamond Processing"};
	case "license_civ_copper": {"Copper Processing"};
	case "license_civ_iron": {"Iron Processing"};
	case "license_civ_sand": {"Sand Processing"};
	case "license_civ_salt": {"Salt Processing"};
	case "license_civ_coke": {"Cocaine Training"};
	case "license_civ_marijuana": {"Marijuana Training"};
	case "license_civ_cement": {"Cement Mixing License"};
	case "license_med_air": {"Pilot License"};
	case "license_civ_home": {"Home Owners License"};
	case "license_civ_frog": {"Frog Poaching License"};
	case "license_civ_crystalmeth": {"Crystal Meth Processing"};
	case "license_civ_methu": {"Meth Processing"};
	case "license_civ_moonshine": {"Moonshine Processing"};
	case "license_civ_mashu": {"Sour Mash Processing"};
	case "license_civ_wine": {"Wine Processing"};
	case "license_civ_vigilante": {"Vigilante License"};
	case "license_civ_aerobatic": {"Aerobatic License"};
	case "license_civ_uranium": {"Uranium Research"};
};


//Prof Block
case "Oil_Prof": {(localize "STR_Prof_Oil")};
case "Iron_Prof": {(localize "STR_Prof_Iron")};
case "Copper_Prof": {(localize "STR_Prof_Copper")};
case "Rock_Prof": {(localize "STR_Prof_Rock")};
case "Fruit_Prof": {(localize "STR_Prof_Fruit")};
case "Salt_Prof": {(localize "STR_Prof_Salt")};
case "Sand_Prof": {(localize "STR_Prof_Sand")};
case "Diamond_Prof": {(localize "STR_Prof_Diamond")};
case "Cocain_Prof": {(localize "STR_Prof_Cocain")};
case "Canabis_Prof": {(localize "STR_Prof_Canabis")};
case "Heroin_Prof": {(localize "STR_Prof_Heroin")};