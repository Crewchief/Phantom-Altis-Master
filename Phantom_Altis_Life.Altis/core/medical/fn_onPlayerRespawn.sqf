#include <macro.h>
/*
	File: fn_onPlayerRespawn.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Does something but I won't know till I write it...
*/
private["_unit","_corpse"];
_unit = _this select 0;
_corpse = _this select 1;
life_corpse = _corpse;

//Comment this code out if you want them to keep the weapon on the ground.
private["_containers"];
_containers = nearestObjects[getPosATL _corpse,["WeaponHolderSimulated"],5]; //Fetch list of containers (Simulated = weapons)
{deleteVehicle _x;} foreach _containers; //Delete the containers.

//Set some vars on our new body.
_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE]; //Again why the fuck am I setting this? Can anyone tell me?
_unit setVariable["steam64id",(getPlayerUID player),true]; //Reset the UID.
_unit setVariable["realname",profileName,true]; //Reset the players name.
_unit setVariable["missingOrgan",FALSE,TRUE]; //I DONT KNOW WHY SOMETIMES THEY ARE CAPS or not
_unit setVariable["hasOrgan",FALSE,TRUE]; 

//Load our gear as a cop incase something horrible happens
if(playerSide == west) then {
	[] spawn life_fnc_loadGear;
};

_unit addRating 9999999999999999; //Set our rating to a high value, this is for a ARMA engine thing.
player playMoveNow "amovppnemstpsraswrfldnon";

[] call life_fnc_setupActions;
[[_unit,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;
player enableFatigue (__GETC__(life_enableFatigue));
[] call life_fnc_updateClothing;

if(playerSide == west) then {
	private["_getRank"];
	_getRank = switch (__GETC__(life_coplevel)) do {case 1: {1}; case 2: {2}; case 3: {3}; case 4: {4}; case 5: {5}; case 6: {6}; default {0};};
	player setVariable["coplevel",_getRank,TRUE];
};
life_is_alive = true;