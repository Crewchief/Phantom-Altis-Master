/*
	File: fn_adminaddweapon
	Author: Avitus

*/

if((call life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

private["_unit","_itm"];
disableSerialization;

_unit = lbData[1502,lbCurSel (1502)];

hint _unit;

if(isNil "_unit") exitWith {hint "a";};

//Spawn
player additem (_unit);