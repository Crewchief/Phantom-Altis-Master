/*
	File: fn_handleDamage.sqf
	Author: Clueless - Zachary Coon
*/
//Function Values
private["_unit","_damage","_source","_projectile","_part"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

//Custom Values by  Clueless / Zac
private ["_isCop","_inVehicle","_inVulnerableVehicle","_distance","_SourceWeapon","_isSourceCop","_isSourceVehicle","_isSourceTazer","_isWithinRange"];
_isCop = (side _unit == west);
_inVehicle = if(vehicle _unit != _unit) then {true} else {false};//Destination _unit in vehicle?
_inVulnerableVehicle = if(_inVehicle) then {if(typeOf (vehicle _unit) in ["B_Quadbike_01_F","C_Kart_01_F"]) then {true} else {false}} else {false};
_distance = _source distance _unit;//Meters Distance between source _unit, and destination _unit
_SourceWeapon = currentWeapon _source;
_isSourceCop = (side _source == west);
_isSourceVehicle = (_source != vehicle _source);//Source _unit in vehicle?
_isSourceTazer = (_projectile in ["B_9x21_Ball","B_556x45_dual"] && _SourceWeapon in ["hgun_P07_snds_F","arifle_SDAR_F"]);
_isWithinRange = (_distance <= if(_projectile == "B_556x45_dual") then {100} else {35});

//Internal Debugging.
if(!isNil "TON_Debug") then {
	systemChat format["PART: %1 || DAMAGE: %2 || SOURCE: %3 || PROJECTILE: %4 || FRAME: %5",_part,_damage,_source,_projectile,diag_frameno];
};

if (!isNull _source) then {
	if (_source != _unit) then {
		//Disable VDM by Clueless / Zac
		if ( _isSourceVehicle ) then { _damage = damage _unit; };
		
		//COP TAZER STUFF BY Clueless / Zac
		if (_isSourceCop && _isSourceTazer) then {
			_damage = damage _unit;
			if (_damage >= 0.25) then {_damage = _damage - 0.1; };
			if (!_isCop && _isWithinRange) then {
				if (_inVulnerableVehicle) then { _unit action ["Eject",vehicle _unit];				};
				if ((!_inVehicle or _inVulnerableVehicle) && !life_istazed && !(_unit getVariable["restrained",false]) ) then {
					[_unit,_source] spawn life_fnc_tazed;
				};
			};
		};
	};
} else {
	//LOWER VEHICLE DAMAGE
	if ( _inVehicle ) then {
		switch ( typeOf (vehicle _unit) ) do {
			//FUCK GOKARTS
			case "C_Kart_01_F": {
				_damage = _damage * 3;
			};
			//LONG LIVE SUVs
			case "C_SUV_01_F": {
				_damage = _damage * 0.1;
			};
			//Lower overall damage done to cars
			default {
				_damage = _damage * 0.2;
			};
		};
	};
};

[] call life_fnc_hudUpdate;
_damage;