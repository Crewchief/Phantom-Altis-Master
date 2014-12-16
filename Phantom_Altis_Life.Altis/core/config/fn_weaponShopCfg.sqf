#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Shop",
					[
						["hgun_P07_snds_F","Taser",2000 * life_donDis],
						["16Rnd_9x21_Mag","Taser Cartridge",50 * life_donDis],
						
						["muzzle_snds_L",nil,650 * life_donDis],
						["Binocular",nil,450 * life_donDis],
						["ToolKit",nil,90 * life_donDis],
						["itemGPS",nil,200 * life_donDis],
						["itemMap",nil,10 * life_donDis],
						["Medikit",nil,1000 * life_donDis],
						["NVGoggles_OPFOR",nil,2000 * life_donDis]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["Binocular",nil,450 * life_donDis],
						["ToolKit",nil,90 * life_donDis],
						["FirstAidKit",nil,150 * life_donDis],
						["itemGPS",nil,200 * life_donDis],
						["itemMap",nil,10 * life_donDis],
						["Medikit",nil,1500 * life_donDis],
						["NVGoggles",nil,1200 * life_donDis],
						["B_AssaultPack_blk",nil,400 * life_donDis]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a Constable or K9 Officer rank!"};
			default
			{
				["Altis Constable / DEA Shop",
					[
						
						["arifle_MXC_Black_F","Rubber Rifle",35000 * life_donDis],		
						["30Rnd_65x39_caseless_mag_Tracer","Rubber Bullets",130 * life_donDis],
						["30Rnd_65x39_caseless_mag","Lethal Bullets",130 * life_donDis],
						
						//["arifle_sdar_F","Taser Rifle",20000 * life_donDis],
						//["B_556x45_dual","Taser Rifle Magazines", 150 * life_donDis],
						
						["acc_flashlight",nil,750 * life_donDis],
						["acc_pointer_IR",nil,750 * life_donDis],
						["optic_Hamr",nil,2500 * life_donDis],
						["HandGrenade_Stone","Flashbang",1700 * life_donDis],
						["SmokeShell",nil,700 * life_donDis]
						
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a Sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["arifle_MX_Black_F",nil,35000 * life_donDis],
						["30Rnd_65x39_caseless_mag_Tracer","Rubber Bullets",130 * life_donDis],
						["30Rnd_65x39_caseless_mag","Lethal Bullets",130 * life_donDis],
						
						["acc_flashlight",nil,750 * life_donDis],
						["acc_pointer_IR",nil,750 * life_donDis],
						["optic_Hamr",nil,2500 * life_donDis],
						["optic_MRCO",nil,2500 * life_donDis],
						["SmokeShell",nil,700 * life_donDis],
						["HandGrenade_Stone","Flashbang",1700 * life_donDis]
					]
				];
			};
		};
	};
	
	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"You are not at a Lieutenant rank!"};
			default
			{
				["Altis Lieutenant Shop",
					[
						["arifle_MXM_Black_F",nil,35000 * life_donDis],
						["30Rnd_65x39_caseless_mag_Tracer","Rubber Bullets",130 * life_donDis],
						["30Rnd_65x39_caseless_mag","Lethal Bullets",130 * life_donDis],
						
						["acc_flashlight",nil,750 * life_donDis],
						["acc_pointer_IR",nil,750 * life_donDis],
						["optic_MRCO",nil,2500 * life_donDis],
						["optic_Hamr",nil,2500 * life_donDis],
						["SmokeShell",nil,700 * life_donDis],
						["HandGrenade_Stone","Flashbang",1700 * life_donDis]
					]
				];
			};
		};
	};
	
	case "cop_chief":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"You are not the Chief!"};
			default
			{
				["The Chief's Locker",
					[
						["SmokeShellRed",nil,700 * life_donDis],
						["SmokeShellGreen",nil,700 * life_donDis],
						["SmokeShellYellow",nil,700 * life_donDis],
						["optic_Hamr",nil,2500 * life_donDis],
						["optic_DMS",nil,2500 * life_donDis],
						["optic_MRCO",nil,2500 * life_donDis],
						["muzzle_snds_H",nil,750 * life_donDis],
						["Rangefinder",nil,150 * life_donDis]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_SDAR_F",nil,2000 * life_donDis],
						["20Rnd_556x45_UW_mag",nil,300 * life_donDis],
						["hgun_Pistol_heavy_02_F",nil,2000 * life_donDis],
						["6Rnd_45ACP_Cylinder",nil,500 * life_donDis],
						["SMG_01_F",nil,5000 * life_donDis],
						["30Rnd_45ACP_Mag_SMG_01",nil,300 * life_donDis],
						["arifle_TRG20_F",nil,8000 * life_donDis],
						["arifle_TRG21_F",nil,8000 * life_donDis],
						["30Rnd_556x45_Stanag",nil,300 * life_donDis],
						["arifle_Mk20_plain_F",nil,9000 * life_donDis],
						["30Rnd_556x45_Stanag",nil,300 * life_donDis],
						["arifle_Katiba_C_F",nil,9000 * life_donDis],
						["arifle_Katiba_F",nil,10000 * life_donDis],
						["30Rnd_65x39_caseless_green",nil,400 * life_donDis],
						["srifle_DMR_01_F",nil,22000 * life_donDis],
						["10Rnd_762x51_Mag",nil,500 * life_donDis],
						["srifle_EBR_F",nil,26000 * life_donDis],
						["20Rnd_762x51_Mag",nil,500 * life_donDis],
						["LMG_Mk200_F",nil,130000 * life_donDis],
						["200Rnd_65x39_cased_Box",nil,15000 * life_donDis],
						
						["srifle_LRR_F",nil,180000 * life_donDis],
						["7Rnd_408_Mag",nil,20000 * life_donDis],
						
						
						["optic_ACO_grn",nil,500 * life_donDis],
						["optic_Holosight",nil,900 * life_donDis],
						["optic_Arco",nil,1500 * life_donDis],
						["optic_MRCO",nil,1500 * life_donDis],
						["HandGrenade",nil,3300 * life_donDis],
						["SmokeShell",nil,200 * life_donDis],
						["SmokeShellRed",nil,200 * life_donDis],
						["SmokeShellGreen",nil,200 * life_donDis],
						["SmokeShellYellow",nil,200 * life_donDis],
						["SmokeShellPurple",nil,200 * life_donDis],
						["SmokeShellBlue",nil,200 * life_donDis],
						["SmokeShellOrange",nil,200 * life_donDis],
						["NVGoggles",nil,2000 * life_donDis],
						["NVGoggles_INDEP",nil,2000 * life_donDis],
						["Binocular",nil,450 * life_donDis],
						["ItemGPS",nil,100 * life_donDis],
						["itemMap",nil,10 * life_donDis],
						["ToolKit",nil,90 * life_donDis],
						["FirstAidKit",nil,250 * life_donDis]
						//["Rangefinder",nil,150] level 3
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,600 * life_donDis],
						["16Rnd_9x21_Mag",nil,250 * life_donDis],
						["hgun_ACPC2_F",nil,1500 * life_donDis],
						["9Rnd_45ACP_Mag",nil,450 * life_donDis],
						["hgun_Pistol_heavy_02_F",nil,5000 * life_donDis],
						["6Rnd_45ACP_Cylinder",nil,500 * life_donDis],
						["hgun_PDW2000_F",nil,6500 * life_donDis],
						["30Rnd_9x21_Mag",nil,500 * life_donDis],
						["optic_ACO_grn_smg",nil,90 * life_donDis]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (__GETC__(life_donator) < 1): {"You are not a Donator!"};
			default
			{
				["Donator Store",
					[
						["storagesmall","Small House Storage",150000 * life_donDis],
						["storagebig","Large House Storage",300000 * life_donDis],
						["Binocular",nil,150 * life_donDis],
						["ItemGPS",nil,200 * life_donDis],
						["ToolKit",nil,250 * life_donDis],
						["FirstAidKit",nil,150 * life_donDis],
						["NVGoggles",nil,2000 * life_donDis]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150 * life_donDis],
				["ItemGPS",nil,499 * life_donDis],
				["itemMap",nil,10 * life_donDis],
				["ToolKit",nil,250 * life_donDis],
				["FirstAidKit",nil,150 * life_donDis],
				["NVGoggles",nil,2000 * life_donDis],
				["Chemlight_red",nil,300 * life_donDis],
				["Chemlight_yellow",nil,300 * life_donDis],
				["Chemlight_green",nil,300 * life_donDis],
				["Chemlight_blue",nil,300 * life_donDis]
				//["Rangefinder",nil,150] level 3
			]
		];
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,600 * life_donDis],
						["16Rnd_9x21_Mag",nil,250 * life_donDis],
						["hgun_ACPC2_F",nil,1500 * life_donDis],
						["9Rnd_45ACP_Mag",nil,450 * life_donDis],
						["hgun_Pistol_heavy_02_F",nil,5000 * life_donDis],
						["6Rnd_45ACP_Cylinder",nil,500 * life_donDis],
						["hgun_PDW2000_F",nil,16500 * life_donDis],
						["30Rnd_9x21_Mag",nil,500 * life_donDis],
						["optic_ACO_grn_smg",nil,2500 * life_donDis],
						["hgun_Pistol_heavy_02_F",nil,2000 * life_donDis],
						["6Rnd_45ACP_Cylinder",nil,500 * life_donDis],
						["SMG_01_F",nil,5000 * life_donDis],
						["30Rnd_45ACP_Mag_SMG_01",nil,300 * life_donDis],
						["arifle_TRG20_F",nil,8000 * life_donDis],
						["arifle_TRG21_F",nil,8000 * life_donDis],
						["30Rnd_556x45_Stanag",nil,300 * life_donDis],
						["arifle_Mk20_plain_F",nil,9000 * life_donDis],
						["30Rnd_556x45_Stanag",nil,300 * life_donDis]
					]
				];
			};
		};
	};
	
	case "vigilante":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_vigilante): {"You don't have a Vigilante license!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Vigilante Shop",
					[
						["SMG_02_F","Sting 9mm",5000 * life_donDis],
						["30Rnd_9x21_Mag","9mm 30Rnd Mag",1000 * life_donDis],	
						["acc_flashlight","Flashlight",20 * life_donDis],							
						["optic_ACO_grn","ACO (Green)",200 * life_donDis],
						["optic_Aco","ACO (Red)",200 * life_donDis]					
					]
				];
			};
		};
	};
};
