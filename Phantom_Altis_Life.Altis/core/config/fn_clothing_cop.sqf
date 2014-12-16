#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_Rangemaster","Cop Uniform",25 * life_donDis]];
		_ret set[count _ret,["U_B_Wetsuit","Wetsuit",1250 * life_donDis]];
		
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","SWAT Uniform",550 * life_donDis]];
		};
		if (license_cop_swat) then
		{
			_ret set[count _ret,["U_B_CTRG_3","SWAT 2 Uniform",550 * life_donDis]];
		};
		[] call life_fnc_updateClothing; //Avitus
	};
	
	//Hats
	case 1:
	{
		_ret =
		[
			["H_MilCap_blue","Cop Blue Hat",500 * life_donDis],
			["H_MilCap_gry","Cop Grey Hat",500 * life_donDis]
		];
		/*
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_Beret_blk_POLICE","Beret",500 * life_donDis]];
		};
		*/
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["H_Beret_Colonel","Upgraded Beret",500 * life_donDis]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["H_PilotHelmetHeli_B","Captain Hat",500 * life_donDis]];
			_ret set[count _ret,["H_CrewHelmetHeli_B","Alternative Captain Hat",500 * life_donDis]];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black","Black Shades",500 * life_donDis],
			["G_Shades_Blue","Blue Shades",500 * life_donDis],
			["G_Sport_Blackred","Black Red Shades",500 * life_donDis],
			["G_Sport_Checkered","Checkered Shades",500 * life_donDis],
			["G_Sport_Blackyellow","Black Yellow Shades",500 * life_donDis],
			["G_Sport_BlackWhite","Black White Shades",500 * life_donDis],
			["G_Aviator","Aviators",500 * life_donDis],
			["G_Squares","Square Glasses",500 * life_donDis],
			["G_Lowprofile","Lowprofile Glasses",500 * life_donDis],
			["G_Combat","Combat Goggles",500 * life_donDis],
			["G_Diving",nil,500 * life_donDis]
		];
	};
	
	//Vest
	case 3:
	{
		_ret =
		[
			["V_RebreatherB","Rebreather", 500 * life_donDis],
			["V_TacVest_blk_POLICE","Cop Tactical Vest",500 * life_donDis]
		];
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["V_TacVest_blk","Main Cop Tactical Vest",500 * life_donDis]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["V_PlateCarrier1_blk","Improved Tactical Vest",500 * life_donDis]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Bergen_blk","Black Bergen Backpack",500 * life_donDis]
		];
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["B_Kitbag_mcamo_Eng","Improved Backpack",500 * life_donDis]];
		};
	};
};

_ret;