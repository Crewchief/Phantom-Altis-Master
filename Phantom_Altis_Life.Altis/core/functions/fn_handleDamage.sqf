/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;
_curWep = "";
_curMag = "";

if(isPlayer _source && _source isKindOf "Man") then {
	_curWep = currentWeapon _source;
	_curMag = currentMagazine _source;
};

//rubber bullets
if (((_curMag == "30Rnd_65x39_caseless_mag_Tracer") || (_curWep in ["SMG_02_F","hgun_P07_F","hgun_P07_snds_F"]))&&(_projectile in ["B_65x39_Caseless","B_9x21_Ball"])) then {
	if ((((getDammage _unit) + _damage) >= 0.9) || (_damage >= 0.9)) then {
		_damage = 0;
		[_source] spawn life_fnc_handleDowned;
	};
};

//Paintball
if(!isNull _source) then {
    if(_source != _unit) then {
        _curMag = currentMagazine _source;
        if (_curMag in ["30Rnd_556x45_Stanag_Tracer_Red"] && _projectile in ["B_556x45_Ball_Tracer_Red"]) then {
            if((side _source == west && playerSide != west)) then {
                private["_isVehicle","_isQuad"];
                _isVehicle = if(vehicle player != player) then {true} else {false};
                _isQuad = if(_isVehicle) then {if(typeOf(vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
                _damage = false;    
                
                if(_isVehicle || _isQuad) then {
                    player action ["Eject",vehicle player];
                    [_unit,_source] spawn life_fnc_paintball;
                } else {
                    [_unit,_source] spawn life_fnc_paintball;
                };
            };
            
            if((side _source == civilian && playerSide != civilian)) then {
                private["_isVehicle","_isQuad"];
                _isVehicle = if(vehicle player != player) then {true} else {false};
                _isQuad = if(_isVehicle) then {if(typeOf(vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
                _damage = false;    
                
                if(_isVehicle || _isQuad) then {
                    player action ["Eject",vehicle player];
                    [_unit,_source] spawn life_fnc_paintball;
                } else {
                    [_unit,_source] spawn life_fnc_paintball;
                };
            };
            
            if((side _source == civilian && playerSide != west)) then {
                private["_isVehicle","_isQuad"];
                _isVehicle = if(vehicle player != player) then {true} else {false};
                _isQuad = if(_isVehicle) then {if(typeOf(vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
                _damage = false;    
                
                if(_isVehicle || _isQuad) then {
                    player action ["Eject",vehicle paintball];
                    [_unit,_source] spawn life_fnc_paintball;
                } else {
                    [_unit,_source] spawn life_fnc_paintball;
                };
            };
            
            if((side _source == west && playerSide != civilian)) then {
                private["_isVehicle","_isQuad"];
                _isVehicle = if(vehicle player != player) then {true} else {false};
                _isQuad = if(_isVehicle) then {if(typeOf(vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
                _damage = false;    
                
                if(_isVehicle || _isQuad) then {
                    player action ["Eject",vehicle player];
                    [_unit,_source] spawn life_fnc_paintball;
                } else {
                    [_unit,_source] spawn life_fnc_paintball;
                };
            };
            
            if(side _source == west && playerSide == west) then {
                _damage = false;
            };
        };
    };
};

[] call life_fnc_hudUpdate;
_damage;