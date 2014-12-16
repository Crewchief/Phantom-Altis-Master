/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Avitus for Automatic Gathering

	Description:
	Main functionality for gathering.
*/
closeDialog 0;
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone"];
_resourceZones = ["apple_1","apple_2","apple_3","apple_4","apple_5","peaches_1","peaches_2","peaches_3","peaches_4","peaches_5","heroin_1","cocaine_1","weed_1","lithium_1","lithium_2","phosphorous_1","phosphorous_2","ephedra_1","sugar_1","sugar_2","corn_1","corn_2","yeast_1","yeast_2","yeast_2_1","yeast_3","frog_1","frog_2","frog_3","frog_4","frog_5","grape_1","grape_2","grape_3","grape_4","uranium_1"];
_zone = "";

//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 150) exitWith {_zone = _x;};
} foreach _resourceZones;

{
	if(player distance (getMarkerPos _x) < 150) exitWith {hint"Use the interaction key to gather! (Left windows key by default)";};
} foreach _resourceZones;

if(_zone == "") exitWith {
	hint localize "STR_NOTF_notNearResource";
	life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4","apple_5"]): {_gather = "apple"; _val = 3;};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4","peaches_5"]): {_gather = "peach"; _val = 3;};
	case (_zone in ["heroin_1"]): {_gather = "heroinu"; _val = 1;};
	case (_zone in ["cocaine_1"]): {_gather = "cocaine"; _val = 1;};
	case (_zone in ["weed_1"]): {_gather = "cannabis"; _val = 1;};
	case (_zone in ["grape_1","grape_2","grape_3","grape_4"]): {_gather = "grapes"; _val = 1;};
	case (_zone in ["lithium_1","lithium_2"]): {_gather = "lithium"; _val = 1;};
	case (_zone in ["phosphorous_1","phosphorous_2"]): {_gather = "phosphorous"; _val = 1;};
	case (_zone in ["ephedra_1"]): {_gather = "ephedra"; _val = 1;};
	case (_zone in ["sugar_1","sugar_2"]): {_gather = "sugar"; _val = 1;};
	case (_zone in ["corn_1","corn_2"]): {_gather = "corn"; _val = 1;};
	case (_zone in ["yeast_1","yeast_2","yeast_2_1","yeast_3"]): {_gather = "yeast"; _val = 1;};
	case (_zone in ["frog_1","frog_2","frog_3","frog_4","frog_5"]): {_gather = "frog"; _val = 1;};
	case (_zone in ["uranium_1"]): {_gather = "uraniumu"; _val = 1;};
	default {""};
};
//gather check??
if(vehicle player != player) exitWith {hint localize "STR_NOTF_GatherVeh";};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};

life_action_inUse = true;

_time = 0;
_profName = [_gather] call life_fnc_profType;

if( _profName != "" ) then
{
_data = missionNamespace getVariable (_profName);
_time = ( 3 - (0.25 * (_data select 0)));
};

while {life_carryWeight < life_maxWeight} do
{
	if (speed player > 1) exitWith { titleText["Gathering aborted. You must remain still while gathering.","PLAIN"]; };
	if (life_carryWeight >= life_maxWeight) exitWith { titleText[format[localize "STR_NOTF_Gather_Complete",_itemName],"PLAIN"]; };
	if(_diff == 0) exitWith { titleText[format[localize "STR_NOTF_Gather_Complete",_itemName],"PLAIN"]; };
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep _time;

	if(([true,_gather,_diff] call life_fnc_handleInv)) then
	{
		_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
		titleText[format[localize "STR_NOTF_Gather_InProgress",_itemName],"PLAIN"];
		titleFadeOut 2;
		if( _profName != "" ) then
		{
			[_profName,25] call life_fnc_addExp;
		};
	};
};

life_action_inUse = false;
