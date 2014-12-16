/*
	File: fn_revive.sqf
	Author: Avitus
	
	Description:
	Revives the target.
*/
private["_unit"];

if((call life_adminlevel) < 1) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

//_unit = cursorTarget;
_unit = lbData[1500,lbCurSel (1500)];
_unit = call compile format["%1", _unit];


if(isNull _unit) exitWith {}; //Not valid
if(!isPlayer _unit) exitWith {};

//Broadcast!
[[player], "life_fnc_revived", _unit,FALSE] spawn life_fnc_MP;
hint format["%1 Revived.", name _unit];