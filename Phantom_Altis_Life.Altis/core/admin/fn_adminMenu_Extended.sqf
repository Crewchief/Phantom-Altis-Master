#include <macro.h>
/*
	File: fn_adminMenu.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Avitus
	
	Description:
	Opens the admin menu, sorry nothing special in here. Take a look for yourself.
*/
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};
private["_display","_plist","_pside","_vlist","_ilist","_wlist"];
disableSerialization;
waitUntil {!isNull (findDisplay 2900)};
_display = findDisplay 2900;
_plist = _display displayCtrl 1500;
_vlist = _display displayCtrl 1501;
_ilist = _display displayCtrl 1502;
_wlist = _display displayCtrl 1503;

switch(__GETC__(life_adminlevel)) do
{
	case 1: 
	{
	ctrlShow[1620,false];
	ctrlShow[1612,false];
	ctrlShow[1611,false];
	ctrlShow[1603,false];
	ctrlShow[1606,false];
	ctrlShow[1608,false];
	ctrlShow[1601,false];
	ctrlShow[1602,false];
	ctrlShow[1630,false];
	ctrlShow[1629,false];
	ctrlShow[1628,false];
	ctrlShow[1627,false];
	ctrlShow[1626,false];
	ctrlShow[1625,false];
	ctrlShow[1623,false];
	ctrlShow[1621,false];
	ctrlShow[1607,false];
	ctrlShow[1604,false];
	ctrlShow[1613,false];
	ctrlShow[1615,false];
	ctrlShow[1614,false];
	ctrlShow[1502,false];
	ctrlShow[1503,false];
	ctrlShow[1501,false];
	ctrlShow[1624,false];
	ctrlShow[1609,false];
	ctrlShow[1616,false];
	ctrlShow[1619,false];
	};
	
case 2: 
	{
	ctrlShow[1630,false];
	ctrlShow[1629,false];
	ctrlShow[1628,false];
	ctrlShow[1627,false];
	ctrlShow[1626,false];
	ctrlShow[1625,false];
	ctrlShow[1623,false];
	ctrlShow[1621,false];
	ctrlShow[1607,false];
	ctrlShow[1604,false];
	ctrlShow[1613,false];
	ctrlShow[1615,false];
	ctrlShow[1614,false];
	ctrlShow[1502,false];
	ctrlShow[1503,false];
	ctrlShow[1501,false];
	ctrlShow[1624,false];
	ctrlShow[1624,false];
	ctrlShow[1616,false];
	};	
};

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};
//Purge List
lbClear _plist;

{
	_pside = switch(side _x) do {case west: {"Cop"}; case civilian : {"Civ"}; default {"?"};};
	_plist lbAdd format["%1 - %2", name _x,_pside];
	_plist lbSetdata [(lbSize _plist)-1,str(_x)];
} foreach playableUnits;

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};

////////////Init vehicle list
lbClear _vlist;

/*{
	_vlist lbAdd "TYPE | NAME";
	_vlist lbSetData [(lbSize _vlist) - 1,"ID"];
}*/

_vlist lbAdd "Bike | Quad";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Quadbike_01_F"];
	
	
_vlist lbAdd "Boat | Rescue Boat";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Lifeboat"];


_vlist lbAdd "Boat | Assault Boat";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Boat_Transport_01_F"];


_vlist lbAdd "Boat | Motorboat";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Boat_Civil_01_F"];


_vlist lbAdd "Boat | Speedboat HMG";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Boat_Armed_01_HMG_F"];


_vlist lbAdd "Boat | Speedboat Minigun";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Boat_Armed_01_Minigun_F"];


_vlist lbAdd "Boat | SDV";
_vlist lbSetData [(lbSize _vlist) - 1,"B_SVD_01_F,"];


_vlist lbAdd "Auto | HEMTT";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Truck_01_transport_F"];


_vlist lbAdd "Auto | HEMTT Container";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Truck_01_covered_F"];


_vlist lbAdd "Auto | Tempest";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Truck_03_transport_F"];


_vlist lbAdd "Auto | Tempest Covered";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Truck_03_covered_F"];


_vlist lbAdd "Auto | Boxer";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Van_01_box_F"];


_vlist lbAdd "Auto | SUV";
_vlist lbSetData [(lbSize _vlist) - 1,"C_SUV_01_F"];


_vlist lbAdd "Auto | Hatchback";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Hatchback_01_F"];


_vlist lbAdd "Auto | Hatchback Sport";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Hatchback_01_sport_F"];


_vlist lbAdd "Auto | Offroad";
_vlist lbSetData [(lbSize _vlist) - 1,"B_G_Offroad_01_F"];


_vlist lbAdd "Auto | Hunter";
_vlist lbSetData [(lbSize _vlist) - 1,"B_MRAP_01_F"];


_vlist lbAdd "Auto | Ifrit";
_vlist lbSetData [(lbSize _vlist) - 1,"O_MRAP_02_F"];


_vlist lbAdd "Auto | Strider";
_vlist lbSetData [(lbSize _vlist) - 1,"I_MRAP_03_F"];


_vlist lbAdd "Auto | Van";
_vlist lbSetData [(lbSize _vlist) - 1,"B_G_Van_01_transport_F"];


_vlist lbAdd "Auto | Zamak Covered";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Truck_02_covered_F"];


_vlist lbAdd "Auto | Zamak Transport";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Truck_02_transport_F"];


_vlist lbAdd "Auto | Offroad HMG";
_vlist lbSetData [(lbSize _vlist) - 1,"B_G_Offroad_01_armed_F"];


_vlist lbAdd "Auto | Hunter HMG";
_vlist lbSetData [(lbSize _vlist) - 1,"B_MRAP_01_hmg_F"];


_vlist lbAdd "Auto | Ifrit HMG";
_vlist lbSetData [(lbSize _vlist) - 1,"O_MRAP_02_hmg_F"];


_vlist lbAdd "Auto | Strider HMG";
_vlist lbSetData [(lbSize _vlist) - 1,"I_MRAP_03_hmg_F"];


_vlist lbAdd "Auto | Hunter GMG";
_vlist lbSetData [(lbSize _vlist) - 1,"B_MRAP_01_gmg_F"];


_vlist lbAdd "Auto | Ifrit GMG";
_vlist lbSetData [(lbSize _vlist) - 1,"O_MRAP_02_gmg_F"];


_vlist lbAdd "Auto | Strider GMG";
_vlist lbSetData [(lbSize _vlist) - 1,"I_MRAP_03_gmg_F"];


_vlist lbAdd "Panzer | MSE-3 Marid";
_vlist lbSetData [(lbSize _vlist) - 1,"O_APC_Wheeled_02_rcws_F"];


_vlist lbAdd "Panzer | IFV-6c Panther";
_vlist lbSetData [(lbSize _vlist) - 1,"B_APC_Tracked_01_rcws_F"];


_vlist lbAdd "Panzer | AMV-7 Marshall";
_vlist lbSetData [(lbSize _vlist) - 1,"B_APC_Wheeled_01_cannon_F"];


_vlist lbAdd "Panzer | BTR-K Kamysh";
_vlist lbSetData [(lbSize _vlist) - 1,"O_APC_Tracked_02_cannon_F"];


_vlist lbAdd "Panzer | AFV-4 Gorgon";
_vlist lbSetData [(lbSize _vlist) - 1,"I_APC_Wheeled_03_cannon_F"];


_vlist lbAdd "Panzer | IFV-6a Cheetah";
_vlist lbSetData [(lbSize _vlist) - 1,"B_APC_Tracked_01_AA_F"];


_vlist lbAdd "Panzer | ZSU-39 Tigris";
_vlist lbSetData [(lbSize _vlist) - 1,"O_APC_Tracked_02_AA_F"];


_vlist lbAdd "Panzer | M5 Sandstorm MLRS";
_vlist lbSetData [(lbSize _vlist) - 1,"B_MBT_01_mlrs_F"];


_vlist lbAdd "Panzer | 2S9 Sochor";
_vlist lbSetData [(lbSize _vlist) - 1,"O_MBT_02_arty_F"];


_vlist lbAdd "Panzer | M4 Scorcher";
_vlist lbSetData [(lbSize _vlist) - 1,"B_MBT_01_arty_F"];


_vlist lbAdd "Panzer | M2A1 Slammer";
_vlist lbSetData [(lbSize _vlist) - 1,"B_MBT_01_cannon_F"];


_vlist lbAdd "Panzer | T-100 Varsuk";
_vlist lbSetData [(lbSize _vlist) - 1,"O_MBT_02_cannon_F"];


_vlist lbAdd "Panzer | FV-720 Mora";
_vlist lbSetData [(lbSize _vlist) - 1,"I_APC_tracked_03_cannon_F"];


_vlist lbAdd "Panzer | MBT-52 Kuma";
_vlist lbSetData [(lbSize _vlist) - 1,"I_MBT_03_cannon_F"];


_vlist lbAdd "Heli | MH-9 Hummingbird";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Heli_Light_01_F"];


_vlist lbAdd "Heli | MH-9 Hummingbird Armed";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Heli_Light_01_armed_F"];


_vlist lbAdd "Heli | PO-30 Orca";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Light_02_unarmed_F"];


_vlist lbAdd "Heli | PO-30 Orca Armed";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Light_02_F"];


_vlist lbAdd "Heli | WY-55 Hellcat";
_vlist lbSetData [(lbSize _vlist) - 1,"I_Heli_light_03_unarmed_F"];


_vlist lbAdd "heli | WY-55 Hellcat Armed";
_vlist lbSetData [(lbSize _vlist) - 1,"I_Heli_light_03_F"];


_vlist lbAdd "Heli | CH-49 Mohawk";
_vlist lbSetData [(lbSize _vlist) - 1,"I_Heli_Transport_02_F"];


_vlist lbAdd "Heli | UH-80 Ghosthawk";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Heli_Transport_01_camo_F"];


_vlist lbAdd "Heli | Mi-48 Kajman";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Attack_02_F"];


_vlist lbAdd "Heli | AH-99 Blackfoot";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Heli_Attack_01_F"];

_vlist lbAdd "Heli | Huron";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Heli_Transport_03_F"];

_vlist lbAdd "Heli | Huron Black";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Heli_Transport_03_unarmed_F"];

_vlist lbAdd "Heli | M900";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Heli_Light_01_civil_F"];

_vlist lbAdd "Heli | Taru";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Transport_04_F"];

_vlist lbAdd "Heli | Taru Ammo";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Transport_04_ammo_F"];

_vlist lbAdd "Heli | Taru Bench";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Transport_04_bench_F"];

_vlist lbAdd "Heli | Taru Cargo";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Transport_04_box_F"];

_vlist lbAdd "Heli | Taru Medic";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Transport_04_medevac_F"];

_vlist lbAdd "Heli | Taru Repair";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Transport_04_repair_F"];

_vlist lbAdd "Heli | Taru Transport";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Transport_04_covered_F"];

_vlist lbAdd "Jet | A-143 Buzzard Fighter";
_vlist lbSetData [(lbSize _vlist) - 1,"I_Plane_Fighter_03_AA_F"];


_vlist lbAdd "Jet | A-143 Buzzard Fighter Support";
_vlist lbSetData [(lbSize _vlist) - 1,"I_Plane_Fighter_03_CAS_F"];


_vlist lbAdd "Jet | To 199 Neophron";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Plane_CAS_02_F"];


_vlist lbAdd "Jet | A-164 Wipeout";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Plane_CAS_01_F"];


//item list

lbClear _ilist;
_ilist lbAdd "Watch";
_ilist lbsetData [(lbSize _ilist) -1, "ItemWatch"];

_ilist lbAdd "Compass";
_ilist lbsetData [(lbSize _ilist) -1, "ItemCompass"];

_ilist lbAdd "GPS";
_ilist lbsetData [(lbSize _ilist) -1, "ItemGPS"];

_ilist lbAdd "Radio";
_ilist lbsetData [(lbSize _ilist) -1, "ItemRadio"];

_ilist lbAdd "Map";
_ilist lbsetData [(lbSize _ilist) -1, "ItemMap"];

_ilist lbAdd "Mine Detector";
_ilist lbsetData [(lbSize _ilist) -1, "MineDetector"];

_ilist lbAdd "Binoculars";
_ilist lbsetData [(lbSize _ilist) -1, "Binocular"];

_ilist lbAdd "Rangefinder";
_ilist lbsetData [(lbSize _ilist) -1, "Rangefinder"];

_ilist lbAdd "NV Goggles (Brown)";
_ilist lbsetData [(lbSize _ilist) -1, "NVGoggles"];

_ilist lbAdd "NV Goggles (Black)";
_ilist lbsetData [(lbSize _ilist) -1, "NVGoggles_OPFOR"];

_ilist lbAdd "NV Goggles (Green)";
_ilist lbsetData [(lbSize _ilist) -1, "NVGoggles_INDEP"];

_ilist lbAdd "First Aid Kit";
_ilist lbsetData [(lbSize _ilist) -1, "FirstAidKit"];

_ilist lbAdd "Medikit";
_ilist lbsetData [(lbSize _ilist) -1, "Medikit"];

_ilist lbAdd "Toolkit";
_ilist lbsetData [(lbSize _ilist) -1, "Toolkit"];

_ilist lbAdd "Laser Designator";
_ilist lbsetData [(lbSize _ilist) -1, "Laserdesignator"];

_ilist lbAdd "UAV Terminal B";
_ilist lbsetData [(lbSize _ilist) -1, "B_UavTerminal"];

_ilist lbAdd "UAV Terminal O";
_ilist lbsetData [(lbSize _ilist) -1, "O_UavTerminal"];

_ilist lbAdd "UAV Terminal I";
_ilist lbsetData [(lbSize _ilist) -1, "I_UavTerminal"];

_ilist lbAdd "Suppressor (6.5 mm)";
_ilist lbsetData [(lbSize _ilist) -1, "muzzle_snds_H"];

_ilist lbAdd "Suppressor (9 mm)";
_ilist lbsetData [(lbSize _ilist) -1, "muzzle_snds_L"];

_ilist lbAdd " Suppressor (5.56 mm)";
_ilist lbsetData [(lbSize _ilist) -1, "muzzle_snds_M"];

_ilist lbAdd "Suppressor (7.62 mm)";
_ilist lbsetData [(lbSize _ilist) -1, "muzzle_snds_B"];

_ilist lbAdd "Suppressor LMG (6.5 mm)";
_ilist lbsetData [(lbSize _ilist) -1, "muzzle_snds_H_MG"];

_ilist lbAdd "ARCO";
_ilist lbsetData [(lbSize _ilist) -1, "optic_Arco"];

_ilist lbAdd "RCO";
_ilist lbsetData [(lbSize _ilist) -1, "optic_Hamr"];

_ilist lbAdd "ACO (Red)";
_ilist lbsetData [(lbSize _ilist) -1, "optic_Aco"];

_ilist lbAdd "ACO (Green)";
_ilist lbsetData [(lbSize _ilist) -1, "optic_ACO_grn"];

_ilist lbAdd "ACO SMG (Red";
_ilist lbsetData [(lbSize _ilist) -1, "optic_Aco_smg"];

_ilist lbAdd "ACO SMG (Green)";
_ilist lbsetData [(lbSize _ilist) -1, "optic_ACO_grn_smg"];

_ilist lbAdd "MK17 Holosight";
_ilist lbsetData [(lbSize _ilist) -1, "optic_Holosight"];

_ilist lbAdd "Mk17 Holosight SMG";
_ilist lbsetData [(lbSize _ilist) -1, "optic_Holosight_smg"];

_ilist lbAdd "SOS";
_ilist lbsetData [(lbSize _ilist) -1, "optic_SOS"];

_ilist lbAdd "Flashlight";
_ilist lbsetData [(lbSize _ilist) -1, "acc_flashlight"];

_ilist lbAdd "IR Laser Pointer";
_ilist lbsetData [(lbSize _ilist) -1, "acc_pointer_IR"];

_ilist lbAdd "MRCO";
_ilist lbsetData [(lbSize _ilist) -1, "optic_MRCO"];

_ilist lbAdd "Suppressor (.45 ACP)";
_ilist lbsetData [(lbSize _ilist) -1, "muzzle_snds_acp"];

_ilist lbAdd "DMS";
_ilist lbsetData [(lbSize _ilist) -1, "optic_DMS"];

_ilist lbAdd "Yorris J2";
_ilist lbsetData [(lbSize _ilist) -1, "optic_Yorris"];

_ilist lbAdd "MRD";
_ilist lbsetData [(lbSize _ilist) -1, "optic_MRD"];

_ilist lbAdd "LRPS";
_ilist lbsetData [(lbSize _ilist) -1, "optic_LRPS"];

_ilist lbAdd "NVS";
_ilist lbsetData [(lbSize _ilist) -1, "optic_NVS"];

_ilist lbAdd "Nightstalker";
_ilist lbsetData [(lbSize _ilist) -1, "optic_Nightstalker"];

_ilist lbAdd "TWS";
_ilist lbsetData [(lbSize _ilist) -1, "optic_tws"];

_ilist lbAdd "TWS MG";
_ilist lbsetData [(lbSize _ilist) -1, "optic_tws_mg"];

_ilist lbAdd "Flash Bang";
_ilist lbsetData [(lbSize _ilist) -1, "HandGrenade_Stone"];

_ilist lbAdd "Hand Grenade";
_ilist lbsetData [(lbSize _ilist) -1, "HandGrenade"];

_ilist lbAdd "Mini Grenade";
_ilist lbsetData [(lbSize _ilist) -1, "MiniGrenade"];

_ilist lbAdd "Smoke White";
_ilist lbsetData [(lbSize _ilist) -1, "SmokeShell"];

_ilist lbAdd "Smoke Yellow";
_ilist lbsetData [(lbSize _ilist) -1, "SmokeShellYellow"];

_ilist lbAdd "Smoke Green";
_ilist lbsetData [(lbSize _ilist) -1, "SmokeShellGreen"];

_ilist lbAdd "Smoke Red";
_ilist lbsetData [(lbSize _ilist) -1, "SmokeShellRed"];

_ilist lbAdd "Smoke Purple";
_ilist lbsetData [(lbSize _ilist) -1, "SmokeShellPurple"];

_ilist lbAdd "Smoke Orange";
_ilist lbsetData [(lbSize _ilist) -1, "SmokeShellOrange"];

_ilist lbAdd "Smoke Blue";
_ilist lbsetData [(lbSize _ilist) -1, "SmokeShellBlue"];

_ilist lbAdd "Chem Green";
_ilist lbsetData [(lbSize _ilist) -1, "Chemlight_green"];

_ilist lbAdd "Chem Red";
_ilist lbsetData [(lbSize _ilist) -1, "Chemlight_red"];

_ilist lbAdd "Chem Yellow";
_ilist lbsetData [(lbSize _ilist) -1, "Chemlight_yellow"];

_ilist lbAdd "Chem Blue";
_ilist lbsetData [(lbSize _ilist) -1, "Chemlight_blue"];

_ilist lbAdd "B IR Grenade";
_ilist lbsetData [(lbSize _ilist) -1, "B_IR_Grenade"];

_ilist lbAdd "O IR Grenade";
_ilist lbsetData [(lbSize _ilist) -1, "O_IR_Grenade"];

_ilist lbAdd "I IR Grenade";
_ilist lbsetData [(lbSize _ilist) -1, "I_IR_Grenade"];

_ilist lbAdd "Demo Charge";
_ilist lbsetData [(lbSize _ilist) -1, "DemoCharge_Remote_Mag"];

_ilist lbAdd "Satchel Charge";
_ilist lbsetData [(lbSize _ilist) -1, "SatchelCharge_Remote_Mag"];

_ilist lbAdd "AT Mine";
_ilist lbsetData [(lbSize _ilist) -1, "ATMine_Range_Mag"];

_ilist lbAdd "Claymore";
_ilist lbsetData [(lbSize _ilist) -1, "ClaymoreDirectionalMine_Remote_Mag"];

_ilist lbAdd "APERS Mine";
_ilist lbsetData [(lbSize _ilist) -1, "APERSMine_Range_Mag"];

_ilist lbAdd "APERS Bound Mine";
_ilist lbsetData [(lbSize _ilist) -1, "APERSBoundingMine_Range_Mag"];

_ilist lbAdd "Slam Mine";
_ilist lbsetData [(lbSize _ilist) -1, "SLAMDirectionalMine_Wire_Mag"];

_ilist lbAdd "Trip Mine";
_ilist lbsetData [(lbSize _ilist) -1, "APERSTripMine_Wire_Mag"];

_ilist lbAdd "PCML Ammo";
_ilist lbsetData [(lbSize _wlist) -1, "NLAW_F"];

_ilist lbAdd "RPG32_F";
_ilist lbsetData [(lbSize _wlist) -1, "RPG32_F"];

_ilist lbAdd "RPG32_HE_F";
_ilist lbsetData [(lbSize _wlist) -1, "RPG32_HE_F"];

_ilist lbAdd "7.62mm";
_ilist lbsetData [(lbSize _wlist) -1, "20Rnd_762x51_Mag"];

_ilist lbAdd "12.7mm";
_ilist lbsetData [(lbSize _ilist) -1, "5Rnd_127x108_Mag"];

_ilist lbAdd "12.7mm APDS";
_ilist lbsetData [(lbSize _ilist) -1, "5Rnd_127x108_APDS_Mag"];

_ilist lbAdd "Caliber.408";
_ilist lbsetData [(lbSize _ilist) -1, "7Rnd_408_Mag"];

_ilist lbAdd "200Rnd 6.5x39mm";
_ilist lbsetData [(lbSize _ilist) -1, "200Rnd_65x39_cased_Box"];

_ilist lbAdd "200Rnd 6.5x39mm T";
_ilist lbsetData [(lbSize _ilist) -1, "200Rnd_65x39_cased_Box_Tracer"];

_ilist lbAdd "16Rnd 9x21";
_ilist lbsetData [(lbSize _ilist) -1, "16Rnd_9x21_Mag"];

_ilist lbAdd "30Rnd 9x21";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_9x21_Mag"];

_ilist lbAdd "30Rnd 6.5mm";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_65x39_caseless_green"];

_ilist lbAdd "30Rnd 6.5mm T";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_65x39_caseless_green_mag_Tracer"];

_ilist lbAdd "1Rnd Grenade";
_ilist lbsetData [(lbSize _ilist) -1, "1Rnd_HE_Grenade_shell"];

_ilist lbAdd "Flare Gr W";
_ilist lbsetData [(lbSize _ilist) -1, "UGL_FlareWhite_F"];

_ilist lbAdd "Smoke Gr W";
_ilist lbsetData [(lbSize _ilist) -1, "1Rnd_Smoke_Grenade_shell"];

_ilist lbAdd "30Rnd 6.5mm";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_65x39_caseless_mag"];

_ilist lbAdd "30Rnd 6.5mm T";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_65x39_caseless_mag_Tracer"];

_ilist lbAdd "100Rnd 6.5mm";
_ilist lbsetData [(lbSize _ilist) -1, "100Rnd_65x39_caseless_mag"];

_ilist lbAdd "100Rnd 6.5mm T";
_ilist lbsetData [(lbSize _ilist) -1, "100Rnd_65x39_caseless_mag_Tracer"];

_ilist lbAdd "5.56mm";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_556x45_Stanag"];

_ilist lbAdd "5.56mm TR";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_556x45_Stanag_Tracer_Red"];

_ilist lbAdd "5.56mm TG";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_556x45_Stanag_Tracer_Green"];

_ilist lbAdd "5.56mm TY";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_556x45_Stanag_Tracer_Yellow"];

_ilist lbAdd "150Rnd 7.62mm";
_ilist lbsetData [(lbSize _ilist) -1, "150Rnd_762x51_Box"];

_ilist lbAdd "150Rnd 7.62mm T";
_ilist lbsetData [(lbSize _ilist) -1, "150Rnd_762x51_Box_Tracer"];

_ilist lbAdd "9Rnd .45mm";
_ilist lbsetData [(lbSize _ilist) -1, "9Rnd_45ACP_Mag"];

_ilist lbAdd "30Rnd 5.56mm";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_556x45_Stanag"];

_ilist lbAdd "30Rnd 5.56mm TR";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_556x45_Stanag_Tracer_Red"];

_ilist lbAdd "30Rnd 5.56mm TG";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_556x45_Stanag_Tracer_Green"];

_ilist lbAdd "30Rnd 5.56mm TY";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_556x45_Stanag_Tracer_Yellow"];

_ilist lbAdd ".45 ACP";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_45ACP_Mag_SMG_01"];

_ilist lbAdd ".45 ACP TG";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_45ACP_Mag_SMG_01_tracer_green"];

_ilist lbAdd "30Rnd 9mm";
_ilist lbsetData [(lbSize _ilist) -1, "30Rnd_9x21_Mag"];

_ilist lbAdd "7.62mm";
_ilist lbsetData [(lbSize _ilist) -1, "20Rnd_762x51_Mag"];

_ilist lbAdd "11Rnd .45 Mag";
_ilist lbsetData [(lbSize _ilist) -1, "11Rnd_45ACP_Mag"];

_ilist lbAdd "6Rnd .45 Cylinder";
_ilist lbsetData [(lbSize _ilist) -1, "6Rnd_45ACP_Cylinder"];


// weapons list

lbClear _wlist;

_wlist lbAdd "PCML";
_wlist lbsetData [(lbSize _wlist) -1, "launch_NLAW_F"];

_wlist lbAdd "Rocket Launcher";
_wlist lbsetData [(lbSize _wlist) -1, "launch_RPG32_F"];

_wlist lbAdd "Mk18";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_EBR_F"];

_wlist lbAdd "Mk18 Arco";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_EBR_ACO_F"];

_wlist lbAdd "Mk18 Mrco";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_EBR_MRCO_pointer_F"];

_wlist lbAdd "Mk18 SOS";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_EBR_SOS_F"];

_wlist lbAdd "Mk18 ARCO";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_EBR_ARCO_pointer_F"];

_wlist lbAdd "Lynx";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_GM6_F"];

_wlist lbAdd "Lynx SOS";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_GM6_SOS_F"];

_wlist lbAdd "Lynx LRPS";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_GM6_LRPS_F"];

_wlist lbAdd "LRR";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_LRR_F"];

_wlist lbAdd "LRR SOS";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_LRR_SOS_F"];

_wlist lbAdd "LRR LRPS";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_LRR_LRPS_F"];

_wlist lbAdd "Mk200";
_wlist lbsetData [(lbSize _wlist) -1, "LMG_Mk200_F"];

_wlist lbAdd "Mk200 MRCO";
_wlist lbsetData [(lbSize _wlist) -1, "LMG_Mk200_MRCO_F"];

_wlist lbAdd "Mk200 LP";
_wlist lbsetData [(lbSize _wlist) -1, "LMG_Mk200_pointer_F"];

_wlist lbAdd "P07 9mm";
_wlist lbsetData [(lbSize _wlist) -1, "hgun_P07_F"];

_wlist lbAdd "P07 9mm S";
_wlist lbsetData [(lbSize _wlist) -1, "hgun_P07_snds_F"];

_wlist lbAdd "Rook-40";
_wlist lbsetData [(lbSize _wlist) -1, "hgun_Rook40_F"];

_wlist lbAdd "Rook-40 S";
_wlist lbsetData [(lbSize _wlist) -1, "hgun_Rook40_snds_F"];

_wlist lbAdd "Katiba";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_F"];

_wlist lbAdd "Katiba C";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_C_F"];

_wlist lbAdd "Katiba GL";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_GL_F"];

_wlist lbAdd "Katiba C ACO LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_C_ACO_pointer_F"];

_wlist lbAdd "Katiba C ACO";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_C_ACO_F"];

_wlist lbAdd "Katiba ACO";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_ACO_F"];

_wlist lbAdd "Katiba ACO LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_ACO_pointer_F"];

_wlist lbAdd "Katiba ARCO";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_ARCO_F"];

_wlist lbAdd "Katiba ARCO LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_ARCO_pointer_F"];

_wlist lbAdd "Katiba ACO GL";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_GL_ACO_F"];

_wlist lbAdd "Katiba ARCO GL LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_GL_ARCO_pointer_F"];

_wlist lbAdd "Katiba ACO GL LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_GL_ACO_pointer_F"];

_wlist lbAdd "Katiba GL NStalker LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_GL_Nstalker_pointer_F"];

_wlist lbAdd "Katiba GL ACO LP S";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_GL_ACO_pointer_snds_F"];

_wlist lbAdd "Katiba ACO LP S";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_ACO_pointer_snds_F"];

_wlist lbAdd "Katiba GL ACO LP S";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_ARCO_pointer_snds_F"];

_wlist lbAdd "Katiba GL ACO LP S";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Katiba_GL_ACO_pointer_snds_F"];

_wlist lbAdd "MXC";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MXC_F"];

_wlist lbAdd "MX";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_F"];

_wlist lbAdd "MX GL";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_GL_F"];

_wlist lbAdd "MX SW";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_SW_F"];

_wlist lbAdd "MXM";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MXM_F"];

_wlist lbAdd "MX LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_pointer_F"];

_wlist lbAdd "MX HP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_Holo_pointer_F"];

_wlist lbAdd "MX Hamr";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_Hamr_pointer_F"];

_wlist lbAdd "MX ACO LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_ACO_pointer_F"];

_wlist lbAdd "MX ACO";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_ACO_F"];

_wlist lbAdd "MX GL ACO";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_GL_ACO_F"];

_wlist lbAdd "MX GL ACO LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_GL_ACO_pointer_F"];

_wlist lbAdd "MX GL Hamr LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_GL_Hamr_pointer_F"];

_wlist lbAdd "MXC Holo";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MXC_Holo_F"];

_wlist lbAdd "MXC Holo LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MXC_Holo_pointer_F"];

_wlist lbAdd "MXC ACO";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MXC_ACO_F"];

_wlist lbAdd "MXC Holo LP S";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MXC_Holo_pointer_snds_F"];

_wlist lbAdd "MXC SOS LP S";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MXC_SOS_point_snds_F"];

_wlist lbAdd "MXC ACO LP S";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MXC_ACO_pointer_snds_F"];

_wlist lbAdd "MXC ACO LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MXC_ACO_pointer_F"];

_wlist lbAdd "MX ACO LP S";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_ACO_pointer_snds_F"];

_wlist lbAdd "MX RCO LP S";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_RCO_pointer_snds_F"];

_wlist lbAdd "MXM SOS LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MXM_SOS_pointer_F"];

_wlist lbAdd "MXM RCO LP S";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MXM_RCO_pointer_snds_F"];

_wlist lbAdd "MXM DMS";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MXM_DMS_F"];

_wlist lbAdd "MX SW LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_SW_pointer_F"];

_wlist lbAdd "MX SW Hamr LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_SW_Hamr_pointer_F"];

_wlist lbAdd "MXM Hamr LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MXM_Hamr_pointer_F"];

_wlist lbAdd "MXC Black";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MXC_Black_F"];

_wlist lbAdd "MX Black";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MX_Black_F"];

_wlist lbAdd "MXM Black";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_MXM_Black_F"];

_wlist lbAdd "SDAR";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_SDAR_F"];

_wlist lbAdd "TRG-21";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_TRG21_F"];

_wlist lbAdd "TRG-20";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_TRG20_F"];

_wlist lbAdd "TRG-21 GL";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_TRG21_GL_F"];

_wlist lbAdd "TRG-20 Holo";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_TRG20_Holo_F"];

_wlist lbAdd "TRG-20 ACO LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_TRG20_ACO_pointer_F"];

_wlist lbAdd "TRG-20 LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_TRG20_ACO_pointer_F"];

_wlist lbAdd "TRG-20 F";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_TRG20_ACO_F"];

_wlist lbAdd "TRG-21 ACO LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_TRG21_ACO_pointer_F"];

_wlist lbAdd "TRG-21 ARCO LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_TRG21_ARCO_pointer_F"];

_wlist lbAdd "TRG-21 MRCO";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_TRG21_MRCO_F"];

_wlist lbAdd "TRG-21 GL MRCO";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_TRG21_GL_MRCO_F"];

_wlist lbAdd "TRG-21 GL ACO LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_TRG21_GL_ACO_pointer_F"];

_wlist lbAdd "Titan";
_wlist lbsetData [(lbSize _wlist) -1, "launch_B_Titan_F"];

_wlist lbAdd "Titan AA";
_wlist lbsetData [(lbSize _wlist) -1, "Titan_AA"];

_wlist lbAdd "Titan Compact";
_wlist lbsetData [(lbSize _wlist) -1, "launch_B_Titan_short_F"];

_wlist lbAdd "Titan AT";
_wlist lbsetData [(lbSize _wlist) -1, "Titan_AT"];

_wlist lbAdd "Titan AP";
_wlist lbsetData [(lbSize _wlist) -1, "Titan_AP"];

_wlist lbAdd "Zafir";
_wlist lbsetData [(lbSize _wlist) -1, "LMG_Zafir_F"];

_wlist lbAdd "Zafir LP";
_wlist lbsetData [(lbSize _wlist) -1, "LMG_Zafir_pointer_F"];

_wlist lbAdd "ACP-C2 .45";
_wlist lbsetData [(lbSize _wlist) -1, "hgun_ACPC2_F"];

_wlist lbAdd "ACP-C2 .45";
_wlist lbsetData [(lbSize _wlist) -1, "hgun_ACPC2_snds_F"];

_wlist lbAdd "Mk20 (C)";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Mk20_F"];

_wlist lbAdd "Mk20";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Mk20_plain_F"];

_wlist lbAdd "Mk20C (C)";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Mk20C_F"];

_wlist lbAdd "Mk20C";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Mk20C_plain_F"];

_wlist lbAdd "Mk20 GL (C)";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Mk20_GL_F"];

_wlist lbAdd "Mk20 GL";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Mk20_GL_plain_F"];

_wlist lbAdd "Mk20 ACO (C)";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Mk20C_ACO_F"];

_wlist lbAdd "Mk20 ACO (C) LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Mk20C_ACO_pointer_F"];

_wlist lbAdd "Mk20 Holo (C)";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Mk20_Holo_F"];

_wlist lbAdd "Mk20 ACO (C)";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Mk20_ACO_F"];

_wlist lbAdd "Mk20 ACO LP (C)";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Mk20_ACO_pointer_F"];

_wlist lbAdd "Mk20 MRCO (C)";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Mk20_MRCO_F"];

_wlist lbAdd "Mk20 MRCO";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Mk20_MRCO_plain_F"];

_wlist lbAdd "Mk20 MRCO LP";
_wlist lbsetData [(lbSize _wlist) -1, "arifle_Mk20_MRCO_pointer_F"];

_wlist lbAdd "Vermin";
_wlist lbsetData [(lbSize _wlist) -1, "SMG_01_F"];

_wlist lbAdd "Vermin Holo";
_wlist lbsetData [(lbSize _wlist) -1, "SMG_01_Holo_F"];

_wlist lbAdd "Vermin Holo LP S";
_wlist lbsetData [(lbSize _wlist) -1, "SMG_01_Holo_pointer_snds_F"];

_wlist lbAdd "Vermin ACO";
_wlist lbsetData [(lbSize _wlist) -1, "SMG_01_ACO_F"];

_wlist lbAdd "Sting";
_wlist lbsetData [(lbSize _wlist) -1, "SMG_02_F"];

_wlist lbAdd "Sting ACO";
_wlist lbsetData [(lbSize _wlist) -1, "SMG_02_ACO_F"];

_wlist lbAdd "Sting ARCO LP";
_wlist lbsetData [(lbSize _wlist) -1, "SMG_02_ARCO_pointg_F"];

_wlist lbAdd "Rahim";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_DMR_01_F"];

_wlist lbAdd "Rahim ACO";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_DMR_01_ACO_F"];

_wlist lbAdd "Rahim MRCO";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_DMR_01_MRCO_F"];

_wlist lbAdd "Rahim SOS";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_DMR_01_SOS_F"];

_wlist lbAdd "Rahim DMS";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_DMR_01_DMS_F"];

_wlist lbAdd "Rahim DMS S";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_DMR_01_DMS_snds_F"];

_wlist lbAdd "Rahim ARCO";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_DMR_01_ARCO_F"];

_wlist lbAdd "Rahim DMS";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_EBR_DMS_F"];

_wlist lbAdd "Rahim Hamr LP";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_EBR_Hamr_pointer_F"];

_wlist lbAdd "Rahim DMS LP S";
_wlist lbsetData [(lbSize _wlist) -1, "srifle_EBR_DMS_pointer_snds_F"];

_wlist lbAdd "4-five";
_wlist lbsetData [(lbSize _wlist) -1, "hgun_Pistol_heavy_01_F"];

_wlist lbAdd "4-five S";
_wlist lbsetData [(lbSize _wlist) -1, "hgun_Pistol_heavy_01_snds_F"];

_wlist lbAdd "4-five MRD";
_wlist lbsetData [(lbSize _wlist) -1, "hgun_Pistol_heavy_01_MRD_F"];

_wlist lbAdd "Zubr";
_wlist lbsetData [(lbSize _wlist) -1, "hgun_Pistol_heavy_02_F"];

_wlist lbAdd "Zubr Yorris";
_wlist lbsetData [(lbSize _wlist) -1, "hgun_Pistol_heavy_02_Yorris_F"];

_wlist lbAdd "PDW2000";
_wlist lbsetData [(lbSize _wlist) -1, "hgun_PDW2000_F"];

_wlist lbAdd "PDW2000 S";
_wlist lbsetData [(lbSize _wlist) -1, "hgun_PDW2000_snds_F"];

_wlist lbAdd "PDW2000 Holo";
_wlist lbsetData [(lbSize _wlist) -1, "hgun_PDW2000_Holo_F"];

_wlist lbAdd "PDW2000 Holo S";
_wlist lbsetData [(lbSize _wlist) -1, "hgun_PDW2000_Holo_snds_F"];