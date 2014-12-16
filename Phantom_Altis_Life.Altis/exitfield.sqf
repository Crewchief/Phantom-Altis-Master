/*
    Author: Avitus
    
    Description: Sends players back into the field.
*/
private["_paintspawn"];


	_pos = getMarkerPos "Airsoft_Spawn" ;
    (vehicle player) setpos [_pos select 0, _pos select 1, 0];
	
	[] spawn life_fnc_stripDownPlayer;
	[] spawn life_fnc_civloadout;