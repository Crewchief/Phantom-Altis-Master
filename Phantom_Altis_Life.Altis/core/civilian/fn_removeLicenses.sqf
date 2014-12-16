/*
	File: fn_removeLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for stripping certain licenses off of civilians as punishment.
*/
private["_state"];
_state = [_this,0,1,[0]] call BIS_fnc_param;

switch (_state) do
{
	//Death while being wanted
	case 0: {};
	
	//Jail licenses
	case 1:
	{
		license_civ_gun = false;
	};
	
	//Remove motor vehicle licenses
	case 2: {};
	
	//Killing someone while owning a gun license
	case 3: {};

};