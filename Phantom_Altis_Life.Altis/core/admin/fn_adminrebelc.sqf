/*
	File: fn_adminrebelc.sqf
	Author: Avitus
*/

[] spawn {
  while {dialog} do {
   closeDialog 0;
   closeDialog 0;
   sleep 0.05;
  };
};

player addAction["<t color='#FF4000'>Rebel Clothing</t>",life_fnc_clothingmenu,"reb"];