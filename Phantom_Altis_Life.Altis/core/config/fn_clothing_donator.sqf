

/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Edited by: [noLife]casp0or
	
	Description:
	Master configuration file for Donator Clothing Store.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Donator Clothing Store"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_B_GhillieSuit",nil,250],
		["U_O_GhillieSuit",nil,250],
		["U_C_Driver_1_green",nil,250],
		["U_C_Driver_1_red",nil,250],
		["U_C_Driver_1_blue",nil,250],
		["U_C_Driver_1_white",nil,250],
		["U_C_Driver_1_yellow",nil,250],
		["U_C_Driver_1_orange",nil,250],
		["U_C_Driver_4",nil,250],
		["U_C_Driver_3",nil,250],
		["U_C_Driver_2",nil,250],
		["U_C_Driver_1",nil,250],
		["U_I_GhillieSuit",nil,250],
		["U_B_Wetsuit",nil,250],
		["U_B_CombatUniform_mcam",nil,250],
		["U_B_CombatUniform_mcam_tshirt",nil,250],
		["U_B_CombatUniform_mcam_vest",nil,250],
		["U_B_SpecopsUniform_sgg",nil,250],
		["U_I_G_resistanceLeader_F",nil,250],
		["U_B_CTRG_1",nil,250],
		["U_B_CTRG_2",nil,250],
		["U_B_CTRG_3",nil,250],
		["U_O_SpecopsUniform_ocamo",nil,250],
		["U_O_CombatUniform_oucamo",nil,250],
		["U_I_CombatUniform_shortsleeve",nil,250],
		["U_I_CombatUniform_tshirt",nil,250],
		["U_B_PilotCoveralls",nil,250],
		["U_O_PilotCoveralls",nil,250],
		["U_I_pilotCoveralls",nil,250],
		["U_B_HeliPilotCoveralls",nil,250],
		["U_I_HeliPilotCoveralls",nil,250],
		["U_BG_Guerilla1_1",nil,250],
		["U_BG_Guerilla3_1",nil,250],
		["U_BG_Guerilla3_2",nil,250],
		["U_BG_leader",nil,250],
		["U_OG_Guerilla1_1",nil,250],
		["U_OG_Guerilla2_2",nil,250],
		["U_OG_Guerilla3_1",nil,250],
		["U_OG_Guerilla3_2",nil,250],
		["U_OG_leader",nil,250],
		["U_IG_Guerilla1_1",nil,250],
		["U_IG_Guerilla2_2",nil,250],
		["U_IG_Guerilla3_1",nil,250],
		["U_IG_Guerilla3_2",nil,250],
		["U_IG_leader",nil,250],
		["U_C_WorkerCoveralls",nil,250],
		["U_C_Poor_1",nil,250],
		["U_C_Poloshirt_redwhite",nil,250],
		["U_C_Poloshirt_salmon",nil,250],
		["U_C_Poloshirt_tricolour",nil,250],
		["U_C_Poloshirt_blue",nil,250],
		["U_C_Poloshirt_burgundy",nil,250],
		["U_C_Poloshirt_stripped",nil,250],
		["U_C_Journalist",nil,250],
		["U_C_Scientist",nil,250],
		["U_NikosAgedBody",nil,250],
		["U_C_Poor_2",nil,250],
		["U_NikosBody",nil,250],
		["U_OrestesBody",nil,250],
		["U_Marshal",nil,250]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",130],
			["H_RacingHelmet_1_red_F","Racing Helmet",130],
			["H_RacingHelmet_1_green_F","Racing Helmet",130],
			["H_RacingHelmet_1_black_F","Racing Helmet",130],
			["H_RacingHelmet_1_blue_F","Racing Helmet",130],
			["H_RacingHelmet_1_white_F","Racing Helmet",130],
			["H_RacingHelmet_1_yellow_F","Racing Helmet",130],
			["H_RacingHelmet_1_orange_F","Racing Helmet",130],
			["_RacingHelmet_2_F","Racing Helmet",130],
			["H_RacingHelmet_3_F","Racing Helmet",130],
			["H_RacingHelmet_4_F","Racing Helmet",130],
			["H_Bandanna_gry","Grey Bandanna",150],
			["H_Bandanna_cbr",nil,165],
			["H_Bandanna_surfer",nil,135],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","Sage Bandanna",160],
			["H_StrawHat","Straw Fedora",225],
			["H_BandMask_blk","Hat & Bandanna",300],
			["H_Booniehat_tan",nil,425],
			["H_Beret_blk",nil,425],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_camo",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_marshal",nil,130],
			["H_Cap_press",nil,130],
			["H_Cap_oli_hs",nil,130],
			["H_Cap_blk_ION",nil,130],
			["H_Cap_blk_CMMG",nil,130],
			["H_HelmetB",nil,150],
			["H_HelmetB_camo",nil,250],
			["H_HelmetB_light",nil,150],
			["H_HelmetB_paint",nil,150],
			["H_HelmetCrew_I",nil,250],
			["H_HelmetCrew_O",nil,350],
			["H_HelmetSpecB_blk",nil,150],
			["H_PilotHelmetFighter_B",nil,150],
			["H_PilotHelmetFighter_O",nil,350],
			["H_PilotHelmetHeli_O",nil,150],
			["H_Booniehat_grn",nil,150],
			["H_Watchcap_camo",nil,550],
			["H_MilCap_dgtl",nil,150],
			["H_Cap_headphones",nil,250],
			["H_Shemag_olive",nil,350],
			["H_Shemag_tan",nil,150],
			["H_ShemagOpen_khk",nil,150],
			["H_HelmetIA",nil,150],
			["H_HelmetLeaderO_oucamo",nil,450],
			["H_Cap_tan",nil,150]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Lowprofile",55],
			["G_Balaclava_blk",nil,55],
			["G_Balaclava_combat",55],
			["G_Balaclava_lowprofile",nil,55],
			["G_Balaclava_oli",nil,55],
			["G_Bandanna_blk",nil,20],
			["G_Bandanna_khk",nil,20],
			["G_Bandanna_Aviator",nil,20],
			["G_Bandanna_oli",nil,20]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_RebreatherB",nil,3000],
			["V_RebreatherIR",nil,3000],
			["V_RebreatherIA",nil,3000],
			["V_PlateCarrier1_rgr",nil,3000],
			["V_PlateCarrier1_blk",nil,3000],
			["V_PlateCarrier3_rgr",nil,3000],
			["V_PlateCarrierGL_rgr",nil,3000],
			["V_PlateCarrierIA1_dgtl",nil,3000],
			["V_PlateCarrierIA2_dgtl",nil,3000],
			["V_HarnessO_brn",nil,3000],
			["V_HarnessO_gry",nil,3000],
			["V_HarnessOSpec_brn",nil,3000],
			["V_BandollierB_blk",nil,3000],
			["V_BandollierB_khk",nil,3000],
			["V_Chestrig_khk",nil,3000],
			["V_Chestrig_oli",nil,3000],
			["V_TacVest_blk",nil,3000],
			["V_TacVest_brn",nil,3000],
			["V_TacVest_camo",nil,3000],
			["V_TacVest_khk",nil,3000],
			["V_TacVest_oli",nil,3000],
			["V_TacVestIR_blk",nil,3000],
			["V_Press_F","Press",3000]
		];	
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000],
			["B_Parachute",nil,15000]
		];
	};
};