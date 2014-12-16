enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf";            //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "credits.sqf";             //Rolling Credits when log in
[] execVM "IgiLoad\IgiLoadInit.sqf"; // Vehicle load script
[] execVM "core\admin\anticheat.sqf";
[] execVM "zlt_fastrope.sqf";        //Fast Rope
[] execVM "nosidechat.sqf";

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

if(isDedicated && isNil("life_market_prices")) then
{
	[] call life_fnc_marketconfiguration;
	diag_log "Market prices generated!";
	
	"life_market_prices" addPublicVariableEventHandler
	{
		diag_log format["Market prices updated! %1", _this select 1];
	};

};

StartProgress = true;
onPlayerDisconnected { [_id, _name, _uid] call compile preProcessFileLineNumbers "core\functions\fn_onPlayerDisconnect.sqf"};

//add stuff so zeus can control it, add all ai on map once upon start, then add all players once every 5 minutes
[] spawn
{
	sleep 240;
	{
		if (side _x == west) then 
		{ 
			Zeus addCuratorEditableObjects [[_x],true];
		}; 
		if (side _x == independent) then 
		{ 
			Zeus addCuratorEditableObjects [[_x],true];
		};
		if (side _x == civilian) then 
		{ 
			Zeus addCuratorEditableObjects [[_x],true];
		};
	}foreach allUnits;
	
	sleep 60;
		
	while {true} do {
		sleep 300;
		{
			if (side _x == west) then 
			{ 
				Zeus addCuratorEditableObjects [[_x],true];
			}; 
			if (side _x == independent) then 
			{ 
				Zeus addCuratorEditableObjects [[_x],true];
			};
			if (side _x == civilian) then 
			{ 
				Zeus addCuratorEditableObjects [[_x],true];
			};
		}foreach playableUnits;
	};
};

{_x setMarkerAlphaLocal 0} forEach ["mrkRed","mrkRed_1","mrkRed_1_1","mrkRed_1_3","mrkGreen","mrkRed_1","mrkRed_2","mrkRed_3","mrkRed_4","mrkRed_5","mrkRed_6"]