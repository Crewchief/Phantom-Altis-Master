#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "med_shop":
 	{
 		_return = [
 			["C_Offroad_01_F",25000 * life_donDis],
 			["I_Truck_02_covered_F",68000 * life_donDis],
 			["C_SUV_01_F",17000 * life_donDis]		
			
 			//["O_Truck_03_medical_F",45000],
 			//["B_Truck_01_medical_F",60000]
 		];
 	};
 	
 	case "med_air_hs": 
	{
 		_return = [
 			["B_Heli_Light_01_F",85000 * life_donDis],
 			["O_Heli_Light_02_unarmed_F",102000 * life_donDis]
 		];
 	};
	
	case "civ_car":
	{
		_return =[
			["B_Quadbike_01_F",3613 * life_donDis],
			["C_Hatchback_01_F",19125 * life_donDis],
			["C_Offroad_01_F",25000 * life_donDis],
			["C_SUV_01_F",46750 * life_donDis]
		];
			
		if(__GETC__(life_donatorlvl) > 2) then
		{
			_return pushback ["C_Hatchback_01_sport_F",102000 * life_donDis];
		};
		
		if(__GETC__(life_donator) > 1) then
		{
			_return pushback ["C_Kart_01_F",3500 * life_donDis];
			_return pushback ["C_Kart_01_Vrana_F",3500 * life_donDis];
			_return pushback ["C_Kart_01_Red_F",3500 * life_donDis];
			_return pushback ["C_Kart_01_Fuel_F",3500 * life_donDis];
			_return pushback ["C_Kart_01_Blu_F",3500 * life_donDis];
		};
	};
	
	case "civ_truck":
	{
		_return = [
			["C_Van_01_transport_F",151000 * life_donDis],
			["C_Van_01_box_F",168000 * life_donDis],
			["I_Truck_02_transport_F",220500 * life_donDis],
			["I_Truck_02_covered_F",308000 * life_donDis],
			["B_Truck_01_transport_F",512500 * life_donDis],
			["B_Truck_01_box_F",655000 * life_donDis]
		];	
	};
	
	case "reb_car":
	{
		_return = [
			["B_Quadbike_01_F",3613 * life_donDis]
		];
		
		if(license_civ_rebel) then
		{
			_return pushback ["B_G_Offroad_01_F",12750 * life_donDis];
			_return pushback ["O_Truck_03_transport_F",553000 * life_donDis];
			_return pushback ["O_Truck_03_covered_F",687000 * life_donDis];
			_return pushback ["O_Truck_03_device_F",740000 * life_donDis];	
			_return pushback ["O_MRAP_02_F",935000 * life_donDis];
			_return pushback ["B_G_Offroad_01_armed_F",465750 * life_donDis];
			_return pushback ["B_Heli_Light_01_F",552500 * life_donDis];
			_return pushback ["O_Heli_Transport_04_bench_F",820000 * life_donDis];
			_return pushback ["O_Heli_Light_02_unarmed_F",1020000 * life_donDis];
		};
		if(__GETC__(life_donatorlvl) > 2) then
		{
			_return pushback ["C_Hatchback_01_sport_F",102000 * life_donDis];
			_return pushback ["O_Heli_Transport_04_covered_F",1220000 * life_donDis];
		};
		if(__GETC__(life_donatorlvl) > 3) then
		{
			_return pushback ["I_Heli_Transport_02_F",2125000 * life_donDis];
		};
		if(__GETC__(life_donatorlvl) > 4) then
		{
			_return pushback ["I_MRAP_03_F",2040000 * life_donDis];
			_return pushback ["B_Heli_Transport_03_unarmed_F",3125000 * life_donDis];
		};
	};

	case "reb_boat":
	{
		_return = [
			["O_SDV_01_F",765000 * life_donDis]
		];
		
		if(__GETC__(life_donatorlvl) > 1) then
		{
			_return pushback ["O_Lifeboat",25000 * life_donDis];
			_return pushback ["C_Boat_Civil_01_rescue_F",30000 * life_donDis];
		};
	};
	
	case "cop_car":
	{
	
		_return =[
			["B_Quadbike_01_F",4250 * life_donDis]
		];
		if(__GETC__(life_coplevel) > 1) then
		{

			_return pushback ["C_Offroad_01_F",25000 * life_donDis];
		};
		if(__GETC__(life_coplevel) > 1) then
		{

			_return pushback ["C_SUV_01_F",42000 * life_donDis];
		};
		if(__GETC__(life_donatorlvl) > 2) then
		{
			_return pushback ["C_Hatchback_01_sport_F",90999 * life_donDis];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushback ["B_MRAP_01_F",200000 * life_donDis];
		};
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushback ["B_Heli_Light_01_F",600000 * life_donDis];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushback ["I_Heli_light_03_unarmed_F",750000 * life_donDis];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushback ["B_Heli_Transport_01_F",800000 * life_donDis];
		};
	};
	
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",22000 * life_donDis]
		];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushback ["C_Boat_Civil_01_police_F",20000 * life_donDis];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushback ["B_SDV_01_F",80000 * life_donDis];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",595000 * life_donDis],
			["C_Heli_Light_01_civil_F",600000 * life_donDis],
			["O_Heli_Light_02_unarmed_F",1020000 * life_donDis]
		];
		
		if(__GETC__(life_donatorlvl) > 3) then
		{
			_return pushback ["I_Heli_Transport_02_F",2125000 * life_donDis];
		};
		if(__GETC__(life_donatorlvl) > 4) then
		{
			_return pushback ["B_Heli_Transport_03_unarmed_F",3125000 * life_donDis];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000 * life_donDis],
			["C_Boat_Civil_01_F",22000 * life_donDis]
		];
		
		if(__GETC__(life_donatorlvl) > 1) then
		{
			_return pushback ["O_Lifeboat",5000 * life_donDis];
			_return pushback ["C_Boat_Civil_01_rescue_F",22000 * life_donDis];
		};
	};
};

_return;