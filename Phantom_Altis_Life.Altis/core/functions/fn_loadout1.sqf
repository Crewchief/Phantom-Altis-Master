/*
    Author: Avitus
    
    Description: Loadout 1
*/
private["_handle"];


_handle = [] spawn life_fnc_stripDownPlayer;
	waitUntil {scriptDone _handle};

[] spawn {
    while {true} do {
        if (life_fatigue < getFatigue player) then {
            player setFatigue life_fatigue;
        };
        sleep 1.5;
    };
};

life_carryWeight = 0;

player addBackpack "B_Bergen_blk";
player addUniform "U_C_Driver_3";
player addvest "V_TacVest_blk";

player additem "G_Shades_Black";
player assignitem "G_Shades_Black";

player additem "H_Watchcap_blk";
player assignitem "H_Watchcap_blk";

player additem "ItemGPS";
player assignitem "ItemGPS";

player additem "ItemMap";
player assignitem "ItemMap";

player additem "ItemCompass";
player assignitem "ItemCompass";

player additem "ItemWatch";
player assignitem "ItemWatch";

player additem "NVGoggles_OPFOR";
player assignitem "NVGoggles_OPFOR";

_weapon = [player, "arifle_MXM_Black_F", 10] call BIS_fnc_addWeapon;
player addPrimaryWeaponItem "muzzle_snds_H";
player addPrimaryWeaponItem "optic_Nightstalker";
player addPrimaryWeaponItem "acc_flashlight";

[true,"redgull",15] call life_fnc_handleInv;
[true,"lockpick",15] call life_fnc_handleInv;
[true,"ziptie",5] call life_fnc_handleInv;
[true,"scalpel",5] call life_fnc_handleInv;
[true,"boltcutter",1] call life_fnc_handleInv;