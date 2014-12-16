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
		_ret pushBack ["U_Rangemaster","Cop Uniform",25];
		if(__GETC__(life_coplevel) > 1) then
		{
			
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_vest","Standard Sergeant Uniform",150];
			_ret pushBack ["U_B_CombatUniform_mcam_tshirt","Sergeant Fatigues",150];
			_ret pushBack ["U_B_survival_uniform","Water Operations",200];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["U_B_CTRG_1","Staff Sergeant Uniform",150];
			_ret pushBack ["U_B_GhillieSuit","Ghillie suit(for sniper ops only)",200];
			_ret pushBack ["U_B_PilotCoveralls","Pilot Uniform",200];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["U_B_CTRG_3","Police Command Uniform",200];
			_ret pushBack ["U_B_SpecopsUniform_sgg","Police Command Fatigues",150];
		};
	};
	
	//Hats
	case 1:
	{
		_ret pushBack ["H_Cap_blk","Police Cap",25];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["H_CrewHelmetHeli_B","Gas Mask",100];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["H_Booniehat_tan","Boonie Hat",50];
			_ret pushBack ["H_HelmetB_snakeskin","Combat Helmet",150];
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["H_PilotHelmetHeli_B","Heli Pilot",100];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_Rangemaster_belt",nil,800];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["V_PlateCarrier2_rgr",nil,1500];
			_ret pushBack ["V_PlateCarrierGL_rgr",nil,1500];
			_ret pushBack ["V_TacVest_blk_POLICE",nil,1500];
			
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["V_TacVestIR_blk",nil,1750];
			_ret pushBack ["V_RebreatherB",nil,1500];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;