/*
	File: fn_adminmarket.sqf
	Author: Avitus
*/

[] spawn {
  while {dialog} do {
   closeDialog 0;
   closeDialog 0;
   sleep 0.05;
  };
};

player addAction["<t color='#FF4000'>Market</t>",life_fnc_virt_menu,"market"];