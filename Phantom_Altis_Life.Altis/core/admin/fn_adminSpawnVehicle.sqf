/*
	spawnVehicle()

*/

if((call life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

private["_unit", "_position", "_veh"];
disableSerialization;

_unit = lbData[1501,lbCurSel (1501)];

hint _unit;

if(isNil "_unit") exitWith {hint "a";};

//
_position = position player;

//Spawn
_veh = _unit createVehicle (_position);
//[[0,format["ADMIN: %1 spawned: %2",name player, _unit]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

sleep 2;

hint format["Vehicle Spawned!\nID: %1", _unit];




