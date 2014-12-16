/*
	File: fn_clothing_kart.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bobby's Kart Racing Outfits
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg-<DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Donator Clothing Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(__GETC__(life_donator) < 0) then
		{
			_return set[count _return,["U_C_Driver_1_black",10000]];
			_return set[count _return,["U_C_Driver_1_blue",10000]];
			_return set[count _return,["U_C_Driver_1_red",10000]];
			_return set[count _return,["U_C_Driver_1_orange",10000]];
			_return set[count _return,["U_C_Driver_1_green",10000]];
			_return set[count _return,["U_C_Driver_1_white",10000]];
			_return set[count _return,["U_C_Driver_1_yellow",10000]];
			_return set[count _return,["U_C_Driver_1",10000]];
			_return set[count _return,["U_C_Driver_2",10000]];
			_return set[count _return,["U_C_Driver_3",10000]];
			_return set[count _return,["U_C_Driver_4",10000]];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_donator) < 0) then
		{
			_return set[count _return,["H_RacingHelmet_1_black_F",5000]];
			_return set[count _return,["H_RacingHelmet_1_red_F",5000]];
			_return set[count _return,["H_RacingHelmet_1_white_F",5000]];
			_return set[count _return,["H_RacingHelmet_1_blue_F",5000]];
			_return set[count _return,["H_RacingHelmet_1_yellow_F",5000]];
			_return set[count _return,["H_RacingHelmet_1_green_F",5000]];
			_return set[count _return,["H_RacingHelmet_1_F",5000]];
			_return set[count _return,["H_RacingHelmet_2_F",5000]];
			_return set[count _return,["H_RacingHelmet_3_F",5000]];
			_return set[count _return,["H_RacingHelmet_4_F",5000]];
		};
		if(__GETC__(life_donator) < 1) then
		{
			_return set[count _return,["H_Cap_headphones",5000]];
		};
		if(__GETC__(life_donator) < 2) then
		{
			_return set[count _return,["H_Beret_blk",5000]];
		};
	};
	
	//Glasses
	case 2:
	{
	};
	
	//Vest
	case 3:
	{
		if(__GETC__(life_donator) < 3) then
		{
			_return set[count _return,["V_TacVestCamo_khk",12500]];
			_return set[count _return,["V_TacVest_camo",12500]];
		};
		if(__GETC__(life_donator) < 5) then
		{
			_return set[count _return,["V_Chestrig_oli",20000]];
			_return set[count _return,["V_Chestrig_rgr",20000]];
			_return set[count _return,["V_PlateCarrierIA1_dgtl",20000]];
			_return set[count _return,["V_PlateCarrierIAGL_dgtl",20000]];
			_return set[count _return,["V_PlateCarrierIA2_dgtl",20000]];
		};
	};
	
	//Backpacks
	case 4:
	{
		[
		];
	};
};