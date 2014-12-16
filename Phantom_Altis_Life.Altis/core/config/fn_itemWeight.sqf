/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {7};
	case "oilp": {6};
	case "heroinu": {3};
	case "heroinp": {2};
	case "cannabis": {2};
	case "marijuana": {1};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {5};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {3};
	case "salt": {3};
	case "salt_r": {2};
	case "glass": {2};
	case "diamond": {4};
	case "diamondc": {2};
	case "cocaine": {3};
	case "cocainep": {2};
	case "spikeStrip": {15};
	case "rock": {6};
	case "cement": {5};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "frog": {3};
	case "frogp": {2};
	case "crystalmeth": {3};
	case "methu": {2};
	case "phosphorous": {2};
	case "ephedra": {2};
	case "lithium": {2};
	case "moonshine": {3};
	case "mashu": {2};
	case "corn": {1};
	case "sugar": {1};
	case "yeast": {1};
	case "wine": {2};
	case "grapes": {1};
	case "underwatercharge": {18};
	case "goldbarp": {12};
	case "kidney": {15};
	case "scalpel": {1};
	case "uraniumu": {8};
	case "uraniump": {6};
	default {1};
};