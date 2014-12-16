#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};


[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
[] spawn
{
while {(uniform player) == "U_Rangemaster"} do
    {
	switch (__GETC__(life_coplevel)) do 
		{
			case 1: {
			player setObjectTextureGlobal [0,"images\police_cadet.jpg"];
			life_paycheck = 3000;
			};
			
			case 2: {
			player setObjectTextureGlobal [0,"images\police_constable.jpg"];
			life_paycheck = 5000;
			};
			
			case 3: {
			player setObjectTextureGlobal [0,"images\police_constable.jpg"];
			life_paycheck = 5300;
			};
			
			case 4: {
			player setObjectTextureGlobal [0,"images\police_sergeant.jpg"];
			life_paycheck = 6250;
			};
			
			case 5: {
			player setObjectTextureGlobal [0,"images\police_captain.jpg"];
			life_paycheck = 7000;
			};
			
			case 6: {
			player setObjectTextureGlobal [0,"textures\cop_uniform.jpg"];
			life_paycheck = 8000;
			};
		};
    if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
    sleep 30;
    };
};

//Show Ranks
player setVariable["coplevel", __GETC__(life_coplevel), true];
player setVariable["medlevel", __GETC__(life_medicLevel), true];
player setVariable["adminlevel", __GETC__(life_adminlevel), true];