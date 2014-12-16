/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Rebel Clothing Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret =
		[
			["U_B_GhillieSuit",nil,15000 * life_donDis],
			["U_O_GhillieSuit",nil,15000 * life_donDis],
			["U_I_GhillieSuit",nil,15000 * life_donDis],
			["U_B_CombatUniform_mcam_tshirt",nil,8000 * life_donDis],
			["U_I_CombatUniform_shortsleeve",nil,8000 * life_donDis],
			["U_IG_leader",nil,5000 * life_donDis],
			["U_IG_Guerilla1_1",nil,5000 * life_donDis],
			["U_BG_leader","Guerilla Smocks 1",500 * life_donDis],
			["U_O_PilotCoveralls",nil,6000 * life_donDis],
			["U_O_CombatUniform_ocamo",nil,8000 * life_donDis],
			["U_O_CombatUniform_oucamo",nil,8000 * life_donDis],
			["U_O_SpecopsUniform_ocamo",nil,8000 * life_donDis],
			["U_O_OfficerUniform_ocamo",nil,8000 * life_donDis],
			["U_I_OfficerUniform",nil,8000 * life_donDis],
			["U_O_Wetsuit",nil,10000 * life_donDis]
		];
		
		if(__GETC__(life_donatorlvl) > 0) then
		{
			_ret set[count _ret,["U_C_Driver_1_black","Black Racing Uniform",500 * life_donDis]];
			_ret set[count _ret,["U_C_Driver_1_blue","Blue Racing Uniform",500 * life_donDis]];
			_ret set[count _ret,["U_C_Driver_1_red","Red Racing Uniform",500 * life_donDis]];
			_ret set[count _ret,["U_C_Driver_1_orange","Orange Racing Uniform",500 * life_donDis]];
			_ret set[count _ret,["U_C_Driver_1_green","Green Racing Uniform",500 * life_donDis]];
			_ret set[count _ret,["U_C_Driver_1_white","White Racing Uniform",500 * life_donDis]];
			_ret set[count _ret,["U_C_Driver_1_yellow","White Racing Uniform",500 * life_donDis]];
			_ret set[count _ret,["U_C_Driver_2",nil,500 * life_donDis]];
			_ret set[count _ret,["U_C_Driver_1",nil,500 * life_donDis]];
			_ret set[count _ret,["U_C_Driver_3",nil,500 * life_donDis]];
			_ret set[count _ret,["U_C_Driver_4",nil,500 * life_donDis]];
		};
	};
	
	//Hats
	case 1:
	{
		_ret =
		[
			["H_HelmetB_camo","ECH (Camo)",15000 * life_donDis],
			["H_Shemag_khk","Shemag mask (Khaki)",500 * life_donDis],
			["H_Shemag_tan","Shemag mask (Tan)",500 * life_donDis],
			["H_Shemag_olive","Shemag (Olive)",500 * life_donDis],
			["H_ShemagOpen_khk","Shemag (Khaki)",500 * life_donDis],
			["H_ShemagOpen_tan","Shemag (Tan)",500 * life_donDis],
			["H_Hat_camo","Hat (Camo)", 500 * life_donDis],
			["H_Shemag_olive_hs","Shemag (Olive,Headset)",500 * life_donDis],
			["H_Cap_red",nil,50 * life_donDis],
			["H_Cap_blu",nil,50 * life_donDis],
			["H_Cap_oli",nil,50 * life_donDis],
			["H_Cap_grn",nil,50 * life_donDis],
			["H_Cap_tan",nil,50 * life_donDis],
			["H_Cap_blk",nil,50 * life_donDis],
			["H_Cap_blk_CMMG",nil,50 * life_donDis],
			["H_Cap_blk_ION",nil,50 * life_donDis],
			["H_Booniehat_grn",nil,50 * life_donDis],
			["H_Booniehat_tan",nil,50 * life_donDis],
			["H_Booniehat_dirty",nil,50 * life_donDis],
			["H_Bandanna_surfer",nil,50 * life_donDis],
			["H_Bandanna_khk",nil,50 * life_donDis],
			["H_Bandanna_cbr",nil,50 * life_donDis],
			["H_Bandanna_sgg",nil,50 * life_donDis],
			["H_Bandanna_gry",nil,50 * life_donDis],
			["H_StrawHat",nil,50 * life_donDis],
			["H_StrawHat_dark",nil,50 * life_donDis],
			["H_Hat_blue",nil,50 * life_donDis],
			["H_Hat_brown",nil,50 * life_donDis],
			["H_Hat_grey",nil,50 * life_donDis],
			["H_Watchcap_blk",nil,50 * life_donDis],
			["H_Watchcap_khk",nil,50 * life_donDis],
			["H_Watchcap_sgg",nil,50 * life_donDis],
			["H_Watchcap_camo",nil,50 * life_donDis],
			["H_Hat_checker",nil,50]
		];
		
		if(__GETC__(life_donatorlvl) > 0) then
		{
			_ret set[count _ret,["H_RacingHelmet_1_black_F","Black Racing Helmet",500 * life_donDis]];
			_ret set[count _ret,["H_RacingHelmet_1_red_F","Red Racing Helmet",500 * life_donDis]];
			_ret set[count _ret,["H_RacingHelmet_1_white_F","White Racing Helmet",500 * life_donDis]];
			_ret set[count _ret,["H_RacingHelmet_1_blue_F","Blue Racing Helmet",500 * life_donDis]];
			_ret set[count _ret,["H_RacingHelmet_1_yellow_F","Yellow Racing Helmet",500 * life_donDis]];
			_ret set[count _ret,["H_RacingHelmet_1_green_F","Green Racing Helmet",500 * life_donDis]];
			_ret set[count _ret,["H_RacingHelmet_1_F",nil,500 * life_donDis]];
			_ret set[count _ret,["H_RacingHelmet_2_F",nil,500 * life_donDis]];
			_ret set[count _ret,["H_RacingHelmet_3_F",nil,500 * life_donDis]];
			_ret set[count _ret,["H_RacingHelmet_4_F",nil,500 * life_donDis]];
		};		
		if(__GETC__(life_ddonatorlvl) > 1) then
		{
			_ret set[count _ret,["H_Cap_headphones","Hat with Headphones",500 * life_donDis]];
			_ret set[count _ret,["H_Cap_marshal","Hat with Headphones2",500 * life_donDis]];
		};
		if(__GETC__(life_donatorlvl) > 2) then
		{
			_ret set[count _ret,["H_Beret_blk","Beret (Black)",500 * life_donDis]];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret =
		[
			["G_Shades_Black",nil,500 * life_donDis],
			["G_Shades_Blue",nil,500 * life_donDis],
			["G_Sport_Blackred",nil,500 * life_donDis],
			["G_Sport_Checkered",nil,500 * life_donDis],
			["G_Sport_Blackyellow",nil,500 * life_donDis],
			["G_Sport_BlackWhite",nil,500 * life_donDis],
			["G_Squares",nil,500 * life_donDis],
			["G_Lowprofile",nil,500 * life_donDis],
			["G_Aviator","Aviators",500 * life_donDis],
			["G_Combat",nil,500 * life_donDis]
		];
	};
	
	//Vest
	case 3:
	{
		_ret =
		[
			["V_TacVest_brn",nil,12500 * life_donDis],
			["V_BandollierB_cbr",nil,4500 * life_donDis],
			["V_HarnessO_brn",nil,7500 * life_donDis],
			["V_HarnessOGL_brn","Suicide Vest",600000 * life_donDis]
		];
		
		if(__GETC__(life_donatorlvl) > 3) then
		{
			_ret set[count _ret,["V_TacVestCamo_khk",nil,25000 * life_donDis]];
			_ret set[count _ret,["V_TacVestCamo_khk",nil,25000 * life_donDis]];
		};
		if(__GETC__(life_donatorlvl) > 5) then
		{
			_ret set[count _ret,["V_Chestrig_oli",nil,25000 * life_donDis]];
			_ret set[count _ret,["V_Chestrig_rgr",nil,20000 * life_donDis]];
			_ret set[count _ret,["V_PlateCarrierIA1_dgtl",nil,20000 * life_donDis]];
			_ret set[count _ret,["V_PlateCarrierIAGL_dgtl",nil,20000 * life_donDis]];
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,20000 * life_donDis]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_AssaultPack_blk",nil,600 * life_donDis],
			["B_AssaultPack_cbr",nil,600 * life_donDis],
			["B_AssaultPack_khk",nil,600 * life_donDis],
			["B_AssaultPack_sgg",nil,600 * life_donDis],
			["B_AssaultPack_rgr",nil,600 * life_donDis],
			["B_FieldPack_cbr",nil,1000 * life_donDis],
			["B_FieldPack_blk",nil,1000 * life_donDis],
			["B_Kitbag_mcamo",nil,1500 * life_donDis],
			["B_Kitbag_sgg",nil,1500 * life_donDis],
			["B_Kitbag_cbr",nil,1500 * life_donDis],
			["B_Bergen_sgg",nil,1500 * life_donDis],
			["B_Carryall_oucamo",nil,2500 * life_donDis]
		];
	};
};
_ret;