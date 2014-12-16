/*

	Updates player clothing by replacing vanilla by custom ones
        by Audacious

*/

private["_uniform","_backpack"];

///Uniform
////////////////

_uniform = uniform player;

switch(true) do
{
	case (playerSide == west && _uniform == "U_Rangemaster"):
	{
		if( (call life_coplevel) == 1) then
		{
			player setObjectTextureGlobal  [0, "images\police_cadet.jpg"]; 
		};
		if( (call life_coplevel) == 2) then
		{
			player setObjectTextureGlobal  [0, "images\police_constable.jpg"]; 
		};
		if( (call life_coplevel) == 3) then
		{
			player setObjectTextureGlobal  [0, "images\police_constable.jpg"]; 
		};
		if( (call life_coplevel) == 4) then
		{
			player setObjectTextureGlobal  [0, "images\police_sergeant.jpg"]; 
		};
		/*if( (call life_coplevel) == 5) then
		{
			player setObjectTextureGlobal  [0, "images\police_captain.jpg"]; 
		};
		
		if( (call life_coplevel) == 6) then
		{
			player setObjectTextureGlobal  [0, "images\police_captain.jpg"]; 
		};
		*/
	};
	
	case (playerSide == west && _uniform == "U_B_CombatUniform_mcam"):
	{
		if( (call life_coplevel) > 4) then
		{
			player setObjectTextureGlobal  [0, "images\swat.jpg"]; 
		};
	};
	
	case (playerSide == west && _uniform == "U_B_CTRG_3"):
	{
		if( (call life_coplevel) > 1) then
		{
			player setObjectTextureGlobal  [0, "images\swat_2.jpg"];
		}
	};
		
		
	case (playerSide == independent && _uniform == "U_C_WorkerCoveralls"):
	{
		if( (call life_medlevel) > 1) then
		{
			player setObjectTextureGlobal  [0, "\images\medic_uniform.jpg"];
		}
		else
		{
			player setObjectTextureGlobal  [0, "\images\medic_uniform.jpg"]; 
		};
		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
};					