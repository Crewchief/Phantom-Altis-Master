/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction["Drop Fishing Net",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction["Rob Person",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		
		//SUICIDE
		life_actions = life_actions + [player addAction["Activate Suicide Vest",life_fnc_suicideBomb,"",0,false,false,"",' vest player == "V_HarnessOGL_brn" && alive player && playerSide == civilian && !life_istazed && !(player getVariable ["restrained",false]) && !(player getVariable ["Escorting",false]) && !(player getVariable ["transporting",false])']];
		
		// take them organs (Restrained)
		//life_actions = life_actions + [player addAction["Harvest Organs",life_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && (cursorTarget getVariable ["Restrained",FALSE])']];
		
		
		// take them organs (Knockouted)
		life_actions = life_actions + [player addAction["Harvest Organs",life_fnc_takeOrgans,"",0,false,false,"",'
		!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
		
	};
	
	case west:
    {
		//Seize weapons
		life_actions = life_actions + [player addAction["Seize Weapons",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
		//seize Objects
		life_actions = life_actions + [player addAction["Seize Objects",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']];
		//Cop enter
		life_actions = life_actions + [player addAction["Cop Enter as Driver",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Cop Enter as Passenger",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5 && (!(cursorTarget isKindOf "B_Heli_Attack_01_F"))']]; 
		life_actions = life_actions + [player addAction["Exit",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
	};
	
	case independent:
	{
        // kidney surgery
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Operate Surgery</t>",life_fnc_kidneysurgery,"",1,false,true,"",' playerSide == independent && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];
	};
		
};