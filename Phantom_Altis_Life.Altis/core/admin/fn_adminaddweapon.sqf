/*
	File: fn_adminaddweapon
	Author: Avitus

*/

if((call life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

private["_unit"];
disableSerialization;

_unit = lbData[1503,lbCurSel (1503)];

hint _unit;

if(isNil "_unit") exitWith {hint "a";};

//Spawn
player addweapon (_unit);