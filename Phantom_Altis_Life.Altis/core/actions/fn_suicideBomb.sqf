/*
    ALAH SNACKBAR!
    Created By: TAW_Tonic
    Edited By: MidgetGrimm,PeterBeer, and Xetoxyc
    Tested and Approved by: 617th PMC  
*/
private["_test"];
if(vest player != "V_HarnessOGL_gry") exitWith {};
_test = "Bo_Mk82" createVehicle [0,0,9999];
_test setPos (getPos player);
_test setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};

[[0,format["%1 has set off their suicide vest.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
*/
private["_boom", "_list"];
if(vest player != "V_HarnessOGL_gry") exitWith {};

life_isSuiciding = true;

[[0,format["Somebody will blow up in 10 seconds"]],"life_fnc_broadcast",true,false] spawn life_fnc_MP; // 10 second warning shown in chat
sleep 2;

[player, "AllahuAkbar", 50] call life_fnc_globalSound;
sleep 8;
//BOOM

if(vest player != "V_HarnessOGL_gry") exitWith {life_isSuicide = false;};
	
removeVest player;
_boom = "Bo_Mk82" createVehicle [0,0,9999];
_boom setPos (getPos player);
_boom setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};

life_isSuicide = false;

[[0,format["%1 blew their load.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;