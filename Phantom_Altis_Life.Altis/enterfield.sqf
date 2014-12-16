/*
    Author: Avitus
    
    Description: Sends players back into the field.
*/
private["_paintspawn"];


_paintspawn = ["paint_1","paint_2","paint_3","paint_4","paint_5","paint_6","paint_7","paint_8","paint_9","paint_10","paint_11","paint_12","paint_13","paint_14","paint_15","paint_16","paint_17"];


	[] call life_fnc_saveGear;
	
    hint "Do NOT SYNC data or press ESC while in the arena, you will lose all previously saved gear! GOODLUCK!";
    player allowDamage true;
    _pos = getMarkerPos (_paintspawn select (floor(random (count _paintspawn))));
    (vehicle player) setpos [_pos select 0, _pos select 1, 0];
	
	[] spawn life_fnc_paintballloadout;