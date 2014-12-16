/**
*	addMoney(NUMBER value)
*
*/

private ["_money"];

if((call life_adminlevel) < 1) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

_money = _this select 0;

if(_money <= 0) exitWith
{
	hint "Incorrect amount of money fn_adminAddMoney";
};

//Give money
life_cash = life_cash + _money;

//Hint + Infos
hint format["You have received $%1", _money];
[[888, name player, getPlayerUID player, format["Admin gave themselfs %1", _money]],"TON_fnc_logIt",false,false] call BIS_fnc_MP;


