private["_uid", "_name"];

if((lbCurSel 1500) == -1) exitWith
{
    hint "Error: No players selected.";  
};

_uid = lbData[1500,lbCurSel (1500)];
_name = lbText[1500,lbCurSel (1500)];

serverCommand format [ "#exec kick %1", "_uid"];

//[[0,format["ADMIN: %1 kicked.",_name]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
hint format["%1 kicked.", _name];
