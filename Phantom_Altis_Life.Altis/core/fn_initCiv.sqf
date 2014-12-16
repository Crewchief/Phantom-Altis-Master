/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
private["_spawnPos","_playerPosition"];
civ_spawn_5 = nearestObjects[getMarkerPos  "civ_spawn_5", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
if(life_is_alive) then {
			_mati = "last_spawn_marker";
			createMarkerLocal [_mati, civ_Position];
			_return = [[_mati,"Last Position","\a3\ui_f\data\map\MapControl\power_ca.paa"]];
			//_return set [count _return, [_mati, format ["Last Position"], "\a3\ui_f\data\map\MapControl\power_ca.paa"]];
		};
waitUntil {!(isNull (findDisplay 46))};

_playerPosition = civ_position;
diag_log format ["%1",_playerPosition]; //For debugging

if (!life_is_alive) then
 {
 	[] call life_fnc_spawnMenu;
 	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
 	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
	life_is_alive = true; // Just in-case the player disconnects before choosing a spawn position I guess? Otherwise debug island it is!
 }
else
 {
	if(life_is_arrested) then
    {
        life_is_arrested = false;
        [player,true] spawn life_fnc_jail;
    }
    else
    {
        player setPos civ_position;
        hint format["Your character is still alive. You have been placed at your last saved position."];
    };
	life_is_alive = true;
 };
 
player addRating 9999999;

//Introcam
[] spawn life_fnc_IntroCam;