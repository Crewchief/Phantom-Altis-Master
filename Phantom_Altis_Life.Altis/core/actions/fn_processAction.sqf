/*
	File: fn_processAction.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP","_vals","_delayInt"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 6)) exitWith {};
if ((vehicle player) != player) exitWith { hint "This action cannot be performed from within a vehicle." };
if (side player == west) exitWith {hint "You cannot preform this action as an officer."};

//unprocessed item,processed item, cost if no license,Text to display, capture index (I.e Processing  (percent) ..."
_itemInfo = switch (_type) do
{
	case "oil": {[["oilu"],"oilp",1200,"Processing Oil",0];};
	case "diamond": {[["diamond"],"diamondc",1350,"Processing Diamond",0]};
	case "heroin": {[["heroinu"],"heroinp",2100,"Processing Heroin",0]};
	case "copper": {[["copperore"],"copper_r",750,"Processing Copper",0]};
	case "iron": {[["ironore"],"iron_r",1120,"Processing Iron",0]};
	case "sand": {[["sand"],"glass",650,"Processing Sand",0]};
	case "salt": {[["salt"],"salt_r",450,"Processing Salt",0]};
	case "cocaine": {[["cocaine"],"cocainep",1500,"Processing Cocaine",0]};
	case "marijuana": {[["cannabis"],"marijuana",500,"Processing Marijuana",0]};
	case "heroin": {[["heroinu"],"heroinp",1720,"Processing Heroin",0]};
	case "cement": {[["rock"],"cement",350,"Mixing Cement",0]};
	case "platinum": {[["platinum"],"platinumr",1550,"Processing Platinum",0]};
	case "silver": {[["silver"],"silverr",1150,"Processing Silver",0]};
	case "frog": {[["frog"],"frogp",1700,"Processing Frog LSD",0]};
	case "methu": {[["lithium","phosphorous","ephedra"],"methu",500,"Processing Unprocessed Meth",0]};
	case "crystalmeth": {[["methu"],"crystalmeth",2300,"Breaking up the Ice",0]};
	case "mashu": {[["sugar","yeast","corn"],"mashu",500,"Processing into Sour Mash",0]};
	case "moonshine": {[["mashu"],"moonshine",2200,"Brewing Moonshine",0]};
	case "wine": {[["grapes","yeast"],"wine",250,"Processing into Wine",0]};
	case "uranium": {[["uraniumu"],"uraniump",250,"Processing into Uranium",0]};
	default {[]};
};

//Error checking
if(count _itemInfo == 0) exitWith {hint "You don't have the items necessary"};

//Setup vars
_oldItem = [];
_vals = [];
{_oldItem = _oldItem + [_x];} foreach (_itemInfo select 0);
if(count _oldItem == 0) exitWith {hint "You don't have the items necessary"};
{_vals = _vals + [missionNamespace getVariable ([_x,0] call life_fnc_varHandle)];} foreach _oldItem;
_oldVal = _vals select 0;
{if (_x < _oldVal) then {_oldVal = _x};} foreach _vals;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;

//Added for Proccessing at Gang hideouts
if(_vendor in [weed_processor,coke_processor,heroin_processor]) then {
_hasLicense = true;
} else {
_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
};

_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
if(_oldVal == 0) exitWith {};
_cost = _cost * _oldVal;

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;
if((!_hasLicense)&&(life_cash < _cost)) exitWith {
	hint format["You need $%1 to process without a license!",[_cost] call life_fnc_numberText];
	5 cutText ["","PLAIN"]; life_is_processing = false;
};
_delayInt = _oldVal * 0.03;
while{true} do {
	sleep _delayInt;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};
	if(player distance _vendor > 10) exitWith {};
};

if(player distance _vendor > 10) exitWith {hint "You need to stay within 10m to process."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if((!_hasLicense)&&(life_cash < _cost)) exitWith {hint format["You need $%1 to process without a license!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!(alive player)) exitWith {hint "You need to be alive to process."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
//Removes the old items
{
	if(!([false,_x,_oldVal] call life_fnc_handleInv)) exitWith {
		5 cutText ["","PLAIN"]; life_is_processing = false;
	};
} foreach _oldItem;

//Adds the new item
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {
	5 cutText ["","PLAIN"];
	{[true,_x,_oldVal] call life_fnc_handleInv;} foreach _oldItem;
	life_is_processing = false;
};

5 cutText ["","PLAIN"];

if(_hasLicense) then
{
_time = 0.3;
_cpUp = 0.01;
_profName = [_type] call life_fnc_profType;
_data  = missionNamespace getVariable "_profName";
if( _profName != "" ) then
{
switch ( _data select 0 ) do
{
case 1: { _time = 0.4; _cpUp = 0.01; };
case 2: { _time = 0.35; _cpUp = 0.01; };
case 3: { _time = 0.3; _cpUp = 0.01; };
case 4: { _time = 0.25; _cpUp = 0.01; };
case 5: { _time = 0.2; _cpUp = 0.01; };
case 6: { _time = 0.2; _cpUp = 0.02; };
case 7: { _time = 0.2; _cpUp = 0.03; };
case 8: { _time = 0.2; _cpUp = 0.04; };
case 9: { _time = 0.15; _cpUp = 0.05; };
case 10: { _time = 0.1; _cpUp = 0.07; };
};
};
while{true} do
{
sleep _time;
_cP = _cP + _cpUp;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
if(_cP >= 1) exitWith {};
if(player distance _vendor > 10) exitWith {};
};

if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
5 cutText ["","PLAIN"];
titleText[format[localize "STR_Process_Processed",_oldVal,_itemName],"PLAIN"];
if( _profName != "" ) then
{
[_profName,40] call life_fnc_addExp;
};
life_is_processing = false;
}
else
{
if(life_cash < _cost) exitWith {hint format[localize "STR_Process_License",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};

_time = 0.9;
_cpUp = 0.01;

_profName = [_type] call life_fnc_profType;
_data  = missionNamespace getVariable "_profName";
if( _profName != "" ) then
{
switch ( _data select 0) do
{
case 1: { _time = 0.9; _cpUp = 0.01; };
case 2: { _time = 0.8; _cpUp = 0.01; };
case 3: { _time = 0.7; _cpUp = 0.01; };
case 4: { _time = 0.6; _cpUp = 0.01; };
case 5: { _time = 0.5; _cpUp = 0.01; };
case 6: { _time = 0.4; _cpUp = 0.01; };
case 7: { _time = 0.3; _cpUp = 0.01; };
case 8: { _time = 0.2; _cpUp = 0.01; };
case 9: { _time = 0.2; _cpUp = 0.02; };
case 10: { _time = 0.2; _cpUp = 0.03; };
};
};
while{true} do
{
sleep _time;
_cP = _cP + _cpUp;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
if(_cP >= 1) exitWith {};
if(player distance _vendor > 10) exitWith {};
};

if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if(life_cash < _cost) exitWith {hint format[localize "STR_Process_License",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
5 cutText ["","PLAIN"];
titleText[format[localize "STR_Process_Processed2",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
life_cash = life_cash - _cost;
if( _profName != "" ) then
{
[_profName,40] call life_fnc_addExp;
};
life_is_processing = false;
};