/*
	File: fn_jailMe.sqf
	Author Bryan "Tonic" Boardwine
	
	Description:
	Once word is received by the server the rest of the jail execution is completed.
*/
private["_ret","_bad","_time","_bail","_esc","_countDown"];
_ret = [_this,0,[],[[]]] call BIS_fnc_param;
_bad = [_this,1,false,[false]] call BIS_fnc_param;

_closestJail = "jail_marker";
_releasePoint = "jail_release";
if((player distance (getMarkerPos "jail_marker")) >= (player distance (getMarkerPos "jail_marker_1"))) then
{
	_closestJail = "jail_marker_1";
	_releasePoint = "jail_release";
}else {
	_closestJail = "jail_marker_2";
	_releasePoint = "jail_release_1";
};

_bounty = 85000;
if(count _ret > 0) then {
	if(_ret select 3 >= 85000) then {
		_bounty = _ret select 3;
	};
};

[] call life_fnc_seizePlayerWeaponAction;

//Give them a jail uniform
_jail_uniform = uniform player;
_jail_backpack = backpack player;
removeUniform player;
removeBackpack player;
player forceAddUniform "U_C_WorkerCoveralls";


player setDamage 0;
life_thirst = 100;
life_hunger = 100;
[] call life_fnc_hudUpdate;

if(count _ret > 0) then { life_bail_amount = _bounty; _time = time + (_bounty * 0.0036); } else { life_bail_amount = 15000; _time = time + (_bounty * 0.0036); };
_esc = false;
_bail = false;

[_bad] spawn
{
	life_canpay_bail = false;
	if(_this select 0) then
	{
		sleep (10 * 60);
	}
		else
	{
		sleep (5 * 60);
	};
	life_canpay_bail = nil;
};

life_canpay_bail = false;

while {true} do
{
	if((round(_time - time)) > 0) then
	{
		_countDown = [(_time - time),"MM:SS.MS"] call BIS_fnc_secondsToString;
		hintSilent parseText format["Time Remaining:<br/> <t size='2'><t color='#FF0000'>%1</t></t><br/><br/>Can pay bail: %3<br/>Bail Price: $%2",_countDown,[life_bail_amount] call life_fnc_numberText,if(isNil "life_canpay_bail") then {"Yes"} else {"No"}];
	};
	
	if((player distance (getMarkerPos _closestJail) > 30) && (vehicle player == player)) then
	{
		player setPos (getMarkerPos _closestJail);
		hint "You cannot escape on foot.";
	};
	
	if((player distance (getMarkerPos _closestJail) > 30) && (vehicle player != player)) exitWith
	{
		_esc = true;
	};
	
	if(life_bail_paid) exitWith
	{
		_bail = true;
	};
	
	if((round(_time - time)) < 1) exitWith {hint ""};
	if(!alive player && ((round(_time - time)) > 0)) exitWith
	{
	
	};
	
	sleep 1;  
};


switch (true) do
{
	case (_bail) :
	{
		life_is_arrested = false;
		life_bail_paid = false;
		hint "You have paid your bail and are now free.";
		serv_wanted_remove = [player];
		player setPos (getMarkerPos _releasePoint);
		[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
		[5] call SOCK_fnc_updatePartial;
		disableUserInput false;

		//return their stuff
		removeUniform player;
		player forceAddUniform _jail_uniform;
	};
	
	case (_esc) :
	{
		life_is_arrested = false;
		hint "You have escaped from jail, you still retain your previous crimes and now have a count of escaping jail.";
		[[0,format["%1 has escaped from jail!",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[getPlayerUID player,profileName,"901"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		disableUserInput false;
		[5] call SOCK_fnc_updatePartial;
	};
	
	case (alive player && !_esc && !_bail) :
	{
		life_is_arrested = false;
		hint "You have served your time in jail and have been released.";
		[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
		player setPos (getMarkerPos _releasePoint);
		[5] call SOCK_fnc_updatePartial;
		disableUserInput false;

		//return their stuff
		removeUniform player;
		player forceAddUniform _jail_uniform;
		player forceAdduniform _jail_backpack;
	};
};