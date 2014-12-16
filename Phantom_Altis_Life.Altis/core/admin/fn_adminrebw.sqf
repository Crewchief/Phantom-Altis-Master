/*
	File: fn_adminrebw.sqf
	Author: Avitus
*/

[] spawn {
  while {dialog} do {
   closeDialog 0;
   closeDialog 0;
   sleep 0.05;
  };
};

player addAction["<t color='#FF4000'>Rebel Weapon</t>",life_fnc_weaponshopmenu,"rebel"];