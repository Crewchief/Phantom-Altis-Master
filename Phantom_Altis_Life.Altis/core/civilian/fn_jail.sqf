/*
	File: fn_jail.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the initial process of jailing.
*/
private["_bad","_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
hint format["%1", _unit];
if(isNull _unit) exitWith {}; //Dafuq?
if(_unit != player) exitWith {}; //Dafuq?
if(life_is_arrested) exitWith {}; //Dafuq i'm already arrested
_bad = [_this,1,false,[false]] call BIS_fnc_param;
player setVariable["restrained",false,true];
player setVariable["Escorting",false,true];
player setVariable["transporting",false,true];

titleText["You have been arrested, wait your time out. If you attempt to respawn or reconnect your time will increase!","PLAIN"];
hint "For being arrested you have lost the following licenses if you own them\n\nFirearms License\nDrivers License\nVigilante License";

_closestJail = "jail_marker";
if((player distance (getMarkerPos "jail_marker")) >= (player distance (getMarkerPos "jail_marker_1"))) then
{
	_closestJail = "jail_marker_1";
}else {
	_closestJail = "jail_marker_2";
};

player setPos (getMarkerPos _closestJail);

//even if arrested, make sure they're sent to the jail location
if(life_is_arrested) exitWith {}; //Dafuq i'm already arrested

if(_bad) then
{
	waitUntil {alive player};
	sleep 1;
};

//Check to make sure they goto check
if(player distance (getMarkerPos _closestJail) >= 15) then
{
	player setPos (getMarkerPos _closestJail);
};

[1] call life_fnc_removeLicenses;
if(life_inv_heroinu > 0) then {[false,"heroinu",life_inv_heroinu] call life_fnc_handleInv;};
if(life_inv_heroinp > 0) then {[false,"heroinp",life_inv_heroinp] call life_fnc_handleInv;};
if(life_inv_coke > 0) then {[false,"cocaine",life_inv_coke] call life_fnc_handleInv;};
if(life_inv_cokep > 0) then {[false,"cocainep",life_inv_cokep] call life_fnc_handleInv;};
if(life_inv_turtle > 0) then {[false,"turtle",life_inv_turtle] call life_fnc_handleInv;};
if(life_inv_cannabis > 0) then {[false,"cannabis",life_inv_cannabis] call life_fnc_handleInv;};
if(life_inv_marijuana > 0) then {[false,"marijuana",life_inv_marijuana] call life_fnc_handleInv;};
if(life_inv_frog > 0) then {[false,"frog",life_inv_frog] call life_fnc_handleInv;};
if(life_inv_frogp > 0) then {[false,"frogp",life_inv_frogp] call life_fnc_handleInv;};
if(life_inv_crystalmeth > 0) then {[false,"crystalmeth",life_inv_crystalmeth] call life_fnc_handleInv;};
if(life_inv_methu > 0) then {[false,"methu",life_inv_methu] call life_fnc_handleInv;};
if(life_inv_phosphorous > 0) then {[false,"phosphorous",life_inv_phosphorous] call life_fnc_handleInv;};
if(life_inv_ephedra > 0) then {[false,"ephedra",life_inv_ephedra] call life_fnc_handleInv;};
if(life_inv_moonshine > 0) then {[false,"moonshine",life_inv_moonshine] call life_fnc_handleInv;};
if(life_inv_mashu > 0) then {[false,"mashu",life_inv_mashu] call life_fnc_handleInv;};
if(life_inv_ccocaine > 0) then {[false,"ccocaine",life_inv_ccocaine] call life_fnc_handleInv;};
life_is_arrested = true;

removeAllWeapons player;
{player removeMagazine _x} foreach (magazines player);

[[player,_bad],"life_fnc_jailSys",false,false] spawn life_fnc_MP;
[5] call SOCK_fnc_updatePartial;