#include <macro.h>
/*
	Tp a player to you.
*/
private["_unit"];

if((call life_adminlevel) < 2) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

_unit = lbData[1500,lbCurSel (1500)];
_unit = call compile format["%1", _unit];
if(isNull _unit) exitWith {}; //Not valid
if(!isPlayer _unit) exitWith {};

hint format ["Teleporting %1", name _unit];
_unit attachTo [vehicle player, [2, 2, 0]];
sleep 0.25;
detach _unit;

hint format["%1 brought to you.", name _unit];