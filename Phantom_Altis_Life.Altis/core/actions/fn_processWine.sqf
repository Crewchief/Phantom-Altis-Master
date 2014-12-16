private ["_amount1", "_amount2", "_amount3"];
_amount1 = life_inv_grapes;
_amount2 = life_inv_yeast;
_amount3 = "";

if (_amount1 < _amount2) then 
{
	_amount3 = (_amount2 - (_amount2 - _amount1));
	_amount2 = (_amount2 - (_amount2 - _amount1));
};
if (_amount2 < _amount1) then 
{
	_amount3 = (_amount1 - (_amount1 - _amount2));
	_amount1 = (_amount1 - (_amount1 - _amount2));
};
if (_amount1 == _amount2) then 
{
	_amount3 = _amount1;
};
if (life_inv_grapes <= 0) exitWith { hint "You need Grapes"; };
if (life_inv_yeast <= 0) exitWith { hint "You need Yeast"; };
if(vehicle player != player) exitWith {hint "You cant process, if your in a vehicle!"};

//License check - change first line if your dont use license for it
if(license_civ_wine) then
 {
	if(([false,"yeast",_amount2] call life_fnc_handleInv) && ([false,"grapes",_amount1] call life_fnc_handleInv)) then 
	{
	titleText["You are now processing wine.", "PLAIN"];
	titleFadeOut 5;
	sleep 6;
	if (([true, "wine", _amount3] call life_fnc_handleInv)) then 
	{
	titleText [format ["You made %1 wine.", _amount3], "PLAIN"];
	};
	};
};