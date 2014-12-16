/*
	File: fn_admingeneral
	Author: Avitus
*/

[] spawn {
  while {dialog} do {
   closeDialog 0;
   closeDialog 0;
   sleep 0.05;
  };
};

player addAction["<t color='#FF4000'>General Store</t>",life_fnc_weaponShopMenu,"genstore"];