//Grid macros
#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)

class life_extended_admin_menu {
	idd = 2900;
	name= "life_extended_admin_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_adminMenu_Extended;";
	
	class controlsBackground 
	{
		class RscText_1006: Life_RscText
		{
			idc = 1800;
			x = 0.231875 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.53625 * safezoneW;
			h = 0.528 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};	
		class player_PlayerInfo: Life_RscText
		{
			idc = 1004;
			text = "Player Info"; //--- ToDo: Localize;
			x = 0.39 * safezoneW + safezoneX;
			y = 0.588 * safezoneH + safezoneY;
			w = 0.185625 * safezoneW;
			h = 0.165 * safezoneH;
			colorBackground[] = {1,1,1,0};
			sizeEx = 0.7 * GUI_GRID_H;
		};
	};
	
	class controls 
	{
	    class player_playerList: Life_RscListBox
	    {
	    	idc = 1500;
			x = 0.39 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.33 * safezoneH;
			onLBSelChanged = "[_this] spawn life_fnc_adminQuery_Extended";
	    };
	    class veh_List: Life_RscListBox
		{
			idc = 1501;
			x = 0.479375 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.09625 * safezoneW;
			h = 0.308 * safezoneH;
		};
		class avitus_weapons: Life_RscListBox
		{
			idc = 1503;
			x = 0.5825 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.089375 * safezoneW;
			h = 0.484 * safezoneH;
		};
		class avitus_items: Life_RscListBox
		{
			idc = 1502;
			x = 0.67875 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.484 * safezoneH;
		};
		class avitus_weaponspawn: Life_RscButtonMenu
		{
			idc = 1614;
			text = "Add Weapon"; //--- ToDo: Localize;
			x = 0.5825 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.089375 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] spawn life_fnc_adminaddweapon;";
		};
		class avitus_itemspawn: Life_RscButtonMenu
		{
			idc = 1615;
			text = "Add Item"; //--- ToDo: Localize;
			x = 0.67875 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] spawn life_fnc_adminadditem;";
		};
		class veh_b_spawn: Life_RscButtonMenu
		{
			idc = 1613;
			text = "Spawn"; //--- ToDo: Localize;
			x = 0.479375 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.09625 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] spawn life_fnc_adminSpawnVehicle;";
		};
		class player_b_tpHere: Life_RscButtonMenu
		{
			idc = 1602;
			text = "Summon"; //--- ToDo: Localize;
			x = 0.23875 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			tooltip = "Teleport player to your position"; //--- ToDo: Localize;
			onButtonClick = "[] spawn life_fnc_adminTpHere;";
		};
		class player_b_tpTo: Life_RscButtonMenu
		{
			idc = 1601;
			text = "Teleport"; //--- ToDo: Localize;
			x = 0.23875 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			tooltip = "Teleport to player position"; //--- ToDo: Localize;
			onButtonClick = "[] spawn life_fnc_adminTpTo;";
		};
		class player_b_restrain: Life_RscButtonMenu
		{
			idc = 1608;
			text = "Restrain"; //--- ToDo: Localize;
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			tooltip = "Restrains player"; //--- ToDo: Localize;
			onButtonClick = "[] spawn life_fnc_adminRestrain;";
		};
		class player_b_unrestrain: Life_RscButtonMenu
		{
			idc = 1609;
			text = "Unrestrain"; //--- ToDo: Localize;
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			tooltip = "Un-restrains players, stops them from being escorted and other stuff."; //--- ToDo: Localize;
			onButtonClick = "[] spawn life_fnc_adminUnrestrain;";
		};
		class tool_b_health: Life_RscButtonMenu
		{
			idc = 1606;
			text = "Heal"; //--- ToDo: Localize;
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[true,false,false] spawn life_fnc_adminInstaHealth;";
		};
		class Spectate : Life_RscButtonMenu {
			idc = 1610;
			text = "Spectate"; //--- ToDo: Localize;
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "closeDialog 0; [] call life_fnc_adminSpectate;";
		};
		class Compensate : Life_RscButtonMenu {
			idc = 1600;
			text = "Comp"; //--- ToDo: Localize;
			x = 0.23875 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "createDialog ""Life_Admin_Compensate"";";
		};
		class Debug : Life_RscButtonMenu {
			idc = 1618;
			text = "                                            Debug Menu"; //--- ToDo: Localize;
			x = 0.231875 * safezoneW + safezoneX;
			y = 0.764 * safezoneH + safezoneY;
			w = 0.53625 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] call life_fnc_adminDebugCon;";
		};
		class avitus_god: Life_RscButtonMenu
		{
			idc = 1603;
			text = "God Mode"; //--- ToDo: Localize;
			x = 0.23875 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] call life_fnc_adminGodMode;";
		};
		class avitus_fill1: Life_RscButtonMenu
		{
			idc = 1604;
			text = "Fill"; //--- ToDo: Localize;
			x = 0.23875 * safezoneW + safezoneX;
			y = 0.698 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class avitus_fill2: Life_RscButtonMenu
		{
			idc = 1607;
			text = "Fill"; //--- ToDo: Localize;
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.698 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class avitus_repair: Life_RscButtonMenu
		{
			idc = 1611;
			text = "Repair"; //--- ToDo: Localize;
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "cursorTarget setDamage 0;";
		};
		class avitus_recoil: Life_RscButtonMenu
		{
			idc = 1612;
			text = "Revive"; //--- ToDo: Localize;
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] call life_fnc_revive;";
		};
		class avitus_fill3: Life_RscButtonMenu
		{
			idc = 1616;
			text = "Fill"; //--- ToDo: Localize;
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class avitus_givekey: Life_RscButtonMenu
		{
			idc = 1617;
			text = "Give Key"; //--- ToDo: Localize;
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] spawn life_fnc_adminkey;";
		};
		class avitus_invisible: Life_RscButtonMenu
			{
			idc = 1619;
			text = "Invis"; //--- ToDo: Localize;
			x = 0.23875 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class avitus_cargod: Life_RscButtonMenu
		{
			idc = 1620;
			text = "Car God"; //--- ToDo: Localize;
			x = 0.23875 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] spawn life_fnc_admincargod;";
		};
		class avitus_smoke: Life_RscButtonMenu
		{
			idc = 1621;
			text = "Smoke"; //--- ToDo: Localize;
			x = 0.23875 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] spawn life_fnc_adminsmoke;";
		};
		class avitus_atm: Life_RscButtonMenu
		{
			idc = 1622;
			text = "ATM"; //--- ToDo: Localize;
			x = 0.23875 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] spawn life_fnc_adminatm;";
		};
		class avitus_market: Life_RscButtonMenu
		{
			idc = 1623;
			text = "Market"; //--- ToDo: Localize;
			x = 0.23875 * safezoneW + safezoneX;
			y = 0.544 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] spawn life_fnc_adminmarket;";
		};
		class avitus_generalstore: Life_RscButtonMenu
		{
			idc = 1624;
			text = "General"; //--- ToDo: Localize;
			x = 0.23875 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] spawn life_fnc_admingeneral;";
		};
		class avitus_clothingstore: Life_RscButtonMenu
		{
			idc = 1625;
			text = "Clothing"; //--- ToDo: Localize;
			x = 0.23875 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class avitus_rebelclothing: Life_RscButtonMenu
		{
			idc = 1626;
			text = "Rebel C"; //--- ToDo: Localize;
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] spawn life_fnc_adminrebelc;";
		};
		class avitus_rebelgunstore: Life_RscButtonMenu
		{
			idc = 1627;
			text = "Rebel W"; //--- ToDo: Localize;
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class rebel: Life_RscButtonMenu
		{
			idc = 1628;
			text = "Rebel M"; //--- ToDo: Localize;
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.544 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
		};
				class vigw: Life_RscButtonMenu
		{
			idc = 1629;
			text = "Vig W"; //--- ToDo: Localize;
			x = 0.23875 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class gangweapon: Life_RscButtonMenu
		{
			idc = 1630;
			text = "Gang W"; //--- ToDo: Localize;
			x = 0.314375 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
};