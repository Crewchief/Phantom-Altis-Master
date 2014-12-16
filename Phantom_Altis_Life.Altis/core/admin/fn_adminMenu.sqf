#include <macro.h>
/*
	File: fn_adminMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the admin menu, sorry nothing special in here. Take a look for yourself.
*/
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};
private["_display","_list","_side"];
disableSerialization;
waitUntil {!isNull (findDisplay 2900)};
_display = findDisplay 2900;
_list = _display displayCtrl 2902;
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};
//Purge List
lbClear _list;

{
	_side = switch(side _x) do {case west: {"Cop"}; case civilian : {"Civ"}; default {"Unknown"};};
	_list lbAdd format["%1 - %2", name _x,_side];
	_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach playableUnits;

switch(__GETC__(life_adminlevel)) do
{
	case 1: 
	{
	ctrlShow[1620,false];
	ctrlShow[1617,false];
	ctrlShow[1612,false];
	ctrlShow[1611,false];
	ctrlShow[1603,false];
	ctrlShow[1606,false];
	ctrlShow[1608,false];
	ctrlShow[1601,false];
	ctrlShow[1602,false];
	};
	
case 2: 
	{
	ctrlShow[1630,false];
	ctrlShow[1629,false];
	ctrlShow[1628,false];
	ctrlShow[1627,false];
	ctrlShow[1626,false];
	ctrlShow[1625,false];
	ctrlShow[1623,false];
	ctrlShow[1621,false];
	ctrlShow[1607,false];
	ctrlShow[1604,false];
	ctrlShow[1613,false];
	ctrlShow[1615,false];
	ctrlShow[1614,false];
	ctrlShow[1502,false];
	ctrlShow[1503,false];
	ctrlShow[1501,false];
	};
	
};

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};