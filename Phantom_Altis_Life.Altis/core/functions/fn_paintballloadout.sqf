/*
    Author: Avitus
    
    Description: PainTBALL LOADOUT.
*/
private["_paintspawn","_handle"];


_handle = [] spawn life_fnc_stripDownPlayer;
	waitUntil {scriptDone _handle};
	
	player addUniform "U_O_Protagonist_VR";
	player addBackpack "B_Bergen_blk";
	
	
	player addItem "H_CrewHelmetHeli_B";
	player assignItem "H_CrewHelmetHeli_B";
	
	player addWeapon "arifle_TRG20_ACO_pointer_F";
	player addMagazine "arifle_TRG20_ACO_pointer_F";
	player addMagazine "30Rnd_556x45_Stanag_Tracer_Red";
	player addMagazine "30Rnd_556x45_Stanag_Tracer_Red";
	player addMagazine "30Rnd_556x45_Stanag_Tracer_Red";
	player addMagazine "30Rnd_556x45_Stanag_Tracer_Red";
	player addItem "ItemCompass";
	player assignItem "ItemCompass";
	player addItem "ItemWatch";
	player assignItem "ItemWatch";
	player addItem "ItemRadio";
	player assignItem "ItemRadio";