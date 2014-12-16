/*
	File: Kidney Surgery
	Author: Backer
*/
private["_unit"];

_unit = cursorTarget;

if(!(_unit getVariable ["missingOrgan",FALSE])) exitWith {hint "This player does not need surgery!"};  //Check if kidney lose
if (side player == independent) then {hint "Hes a medic, he can live without a kideny!"}; 
sleep 15;
if(player distance (_this select 0) > 5) exitWith {hint "You are too far away to operate on this person!"};
if (side player == independent) then {hint "The surgery was successful!"}; 
_unit setVariable["missingOrgan",false,true]; 
sleep 0.1; //little wait
_unit setdamage 0;  
_unit setFatigue .5;

//Take fee for services.
if(life_atmcash > (call life_kidney_fee)) then {
	life_atmcash = life_atmcash - (call life_kidney_fee);
} else {
	life_atmcash = 0;
};

life_cash = life_cash + 20000;  