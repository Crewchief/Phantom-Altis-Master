/*
	File: fn_adminATM
	Author: Avitus
*/

[] spawn {
  while {dialog} do {
   closeDialog 0;
   closeDialog 0;
   sleep 0.05;
  };
};

player addAction["<t color='#ADFF2F'>ATM</t>",life_fnc_atmMenu];