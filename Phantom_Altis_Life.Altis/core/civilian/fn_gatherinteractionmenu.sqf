/*
	File: fn_gatherinteractionmenu.sqf
	Author: Avitus
	
	Description:
	Auto Gather Interaction Menu
*/
#define Btn1 37450
#define Btn2 37451
#define Title 37401

private["_display","_Btn1","_Btn2"];
if(!dialog) then {
	createDialog "pInteraction_Menu";
};
disableSerialization;

_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;

if((player getVariable["Inuse",true])) then {
	_Btn1 ctrlSetText localize "STR_pInAct_GatherButton";
	_Btn1 buttonSetAction "call life_fnc_gather";
} else {
	_Btn2 ctrlSetText localize "STR_pInAct_GatherAbort";
	_Btn2 buttonSetAction "exitWith {life_action_inUse = false;}";
};

/*Check Distance to resource zone
if(player distance (getMarkerPos _resourceZones) < 150) then {

	_Btn1 ctrlEnable false;
};