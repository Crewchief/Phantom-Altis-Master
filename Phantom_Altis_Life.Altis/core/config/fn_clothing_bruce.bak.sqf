/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret =
		[
			["U_C_Poloshirt_blue","Poloshirt Blue",250 * life_donDis],
			["U_C_Poloshirt_burgundy","Poloshirt Burgundy",250 * life_donDis],
			["U_C_Poloshirt_redwhite","Poloshirt Red/White",250 * life_donDis],
			["U_C_Poloshirt_salmon","Poloshirt Salmon",250 * life_donDis],
			["U_C_Poloshirt_stripped","Poloshirt stripped",250 * life_donDis],
			["U_C_Poloshirt_tricolour","Poloshirt Tricolor",350 * life_donDis],
			["U_C_Poor_2","Rag tagged clothes",250 * life_donDis],
			["U_IG_Guerilla2_2","Green stripped shirt & Pants",650 * life_donDis],
			["U_IG_Guerilla3_1","Brown Jacket & Pants",735 * life_donDis],
			["U_IG_Guerilla2_3","The Outback Rangler",1200 * life_donDis],
			["U_C_HunterBody_grn","The Hunters Look",1500 * life_donDis],
			["U_C_WorkerCoveralls","Mechanic Coveralls",2500 * life_donDis]
		];
	};
	
	//Hats
	case 1:
	{
		_ret =
		[
			["H_Bandanna_camo","Camo Bandanna",500 * life_donDis],
			["H_Bandanna_surfer","Surfer Bandanna",500 * life_donDis],
			["H_Bandanna_gry","Grey Bandanna",500 * life_donDis],
			["H_Bandanna_cbr",nil,500 * life_donDis],
			["H_Bandanna_surfer",nil,500 * life_donDis],
			["H_Bandanna_khk","Khaki Bandanna",500 * life_donDis],
			["H_Bandanna_sgg","Sage Bandanna",500 * life_donDis],
			["H_StrawHat","Straw Fedora",500 * life_donDis],
			["H_BandMask_blk","Hat & Bandanna",500 * life_donDis],
			["H_Booniehat_tan",nil,500 * life_donDis],
			["H_Hat_blue",nil,500 * life_donDis],
			["H_Hat_brown",nil,500 * life_donDis],
			["H_Hat_checker",nil,500 * life_donDis],
			["H_Hat_grey",nil,500 * life_donDis],
			["H_Hat_tan",nil,500 * life_donDis],
			["H_Cap_blu",nil,500 * life_donDis],
			["H_Cap_grn",nil,500 * life_donDis],
			["H_Cap_grn_BI",nil,500 * life_donDis],
			["H_Cap_oli",nil,500 * life_donDis],
			["H_Cap_red",nil,500 * life_donDis],
			["H_Cap_tan",nil,500 * life_donDis]
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
		if(__GETC__(life_donatorlvl) > 1) then
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
			["G_Shades_Black",nil,25 * life_donDis],
			["G_Shades_Blue",nil,20 * life_donDis],
			["G_Sport_Blackred",nil,20 * life_donDis],
			["G_Sport_Checkered",nil,20 * life_donDis],
			["G_Sport_Blackyellow",nil,20 * life_donDis],
			["G_Sport_BlackWhite",nil,20 * life_donDis],
			["G_Squares",nil,10 * life_donDis],
			["G_Aviator",nil,100 * life_donDis],
			["G_Lady_Mirror",nil,150 * life_donDis],
			["G_Lady_Dark",nil,150 * life_donDis],
			["G_Lady_Blue",nil,150 * life_donDis],
			["G_Lowprofile",nil,30 * life_donDis],
			["G_Combat",nil,55 * life_donDis]
		];
	};
	
	//Vest
	case 3:
	{
		_ret = 
		[
			["V_BandollierB_cbr",nil,4500 * life_donDis]
		];
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