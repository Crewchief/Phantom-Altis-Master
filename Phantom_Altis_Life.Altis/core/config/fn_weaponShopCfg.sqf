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
			//At least Public 0
			if (__GETC__(life_coplevel) >= 0 ) then	{
				_items = [
						["CADET =======",nil,0],
						["hgun_P07_snds_F","Taser Pistol",2000],
						["16Rnd_9x21_Mag","Taser Pistol Magazine",50],
						["arifle_sdar_F","Taser Rifle",10000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["muzzle_snds_L",nil,650],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["MediKit",nil,5000],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000]
					];
			};
			//At least Patrol
			if (__GETC__(life_coplevel) >= 2) then {
				_items = _items + [
						["PATROL ======",nil,0],
						["SMG_02_ACO_F",nil,15000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_TRG20_F",nil,35000],
						["30Rnd_556x45_Stanag",nil,130],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["acc_flashlight",nil,750],
						["MineDetector",nil,1000]
					];
			};
			//At least Sergeant
			if (__GETC__(life_coplevel) >= 3) then {
					_items = _items + [
						["SERGEANT ====",nil,0],
						["arifle_MX_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["arifle_MXC_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["optic_DMS",nil,15500],
						["optic_ACO_grn",nil,5000],
						["muzzle_snds_H",nil,2750],
						["B_UavTerminal",nil,5000]
					];
			};
			//Command
			if (__GETC__(life_coplevel) >= 4) then {
					_items = _items + [
						["COMMAND =====",nil,0],
						["arifle_MXC_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,100]
					];
			};
			//SWAT
			if (__GETC__(life_coplevel) == 5) then {
					_items = _items + [
						["SWAT ========",nil,0],
						["arifle_MX_SW_Black_F",nil,60000],
						["100Rnd_65x39_caseless_mag",nil,1000],
						["srifle_EBR_F",nil,40000],
						["20Rnd_762x51_Mag",nil,1000],
						["LMG_Mk200_F","SwatCommandOnly",50000],
						["200Rnd_65x39_cased_Box",nil,1000],
						["srifle_LRR_LRPS_F",nil,50000],
						["7Rnd_408_Mag",nil,3000],
						["srifle_LRR_camo_F",nil,50000],
						["7Rnd_408_Mag",nil,3000],
						["launch_O_Titan_F","OnlyForJets",75000],
						["Titan_AA",nil,10000],
						["optic_MRCO",nil,12500],					
						["optic_SOS",nil,5000],
						["optic_tws_mg",nil,35000],
						["optic_Hamr",nil,1000],
						["optic_tws",nil,1000],
						["optic_LRPS",nil,1000],
						["acc_pointer_IR",nil,2500],
						["muzzle_snds_H_MG",nil,5000],
						["muzzle_snds_B",nil,2500],
						["HandGrenade_Stone","FlashBang",3750],
						["NVGoggles_OPFOR","SWAT NV's",1000]
					];
			};
			//DEA
			if (__GETC__(life_coplevel) >= 6) then {
					_items = _items + [
						["DEA =========",nil,0],
						["srifle_EBR_F",nil,40000],
						["20Rnd_762x51_Mag",nil,1000],
						["LMG_Mk200_F","AdministrationOnly",50000],
						["200Rnd_65x39_cased_Box",nil,1000]
					];
			};
			//PMC
			if (__GETC__(life_coplevel) >= 7) then {
					_items = items + [
						["PMC =========",nil,0],
						["LMG_Mk200_F",nil,50000],
						["200Rnd_65x39_cased_Box",nil,1000],
						["srifle_GM6_F",nil,50000],
						["5Rnd_127x108_APDS_Mag",nil,1000],
						["srifle_GM6_camo_F",nil,50000],
						["5Rnd_127x108_APDS_Mag",nil,1000],
						["LMG_Zafir_F",nil,70000],
						["150Rnd_762x51_Box",nil,1000],
						["launch_NLAW_F",nil,50000],
						["NLAW_F",nil,10000],
						["optic_Nightstalker",nil,25000]
					];
			};
			return ["APD Armory", _items];
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
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
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
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
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
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
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
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
