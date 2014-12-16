//fn_wantedadd2.sqf

private["_display","_list","_side"];
disableSerialization;
waitUntil {!isNull (findDisplay 9900)};
_display = findDisplay 9900;
_list = _display displayCtrl 9902;

//Purge List
lbClear _list;


{
    _side = switch(side _x) do {case west: {"Cop"}; case civilian : {"Civ"}; default {"Unknown"};};
    _list lbAdd format["%1 - %2", name _x,_side];
    _list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach playableUnits;


_list2 = _display displayCtrl 9991;
lbClear _list2;

_text = "Resisting Arrest";
_data = "12";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Parking Ticket";
_data = "9";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Attempted Manslaughter";
_data = "29";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Use of firearms within city limits";
_data = "27";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of firearms without a license";
_data = "24";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Disobeying an order from an officer";
_data = "42";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];



_text = "Intent to Distribute";
_data = "62";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Marijuana";
_data = "47";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Frog LSD";
_data = "48";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Cocaine";
_data = "49";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Heroin";
_data = "52";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Moonshine";
_data = "50";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Meth";
_data = "51";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Turtle Meat";
_data = "53";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Uranium";
_data = "53";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];



_text = "Harassment to a Police Officer";
_data = "18";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

/*
_text = "Following a Police Officer";
_data = "16";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];
*/

_text = "Possession of police equipment";
_data = "43";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Loitering a Police zone";
_data = "19";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Destruction of Police Property";
_data = "22";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Impersonating a police officer";
_data = "41";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];




_text = "Speeding";
_data = "5";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Reckless Driving";
_data = "6";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Attempted Vehicle Theft";
_data = "2";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Vehicle Theft";
_data = "3";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Failure to stop at a police checkpoint";
_data = "57";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Driving without a license";
_data = "1";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Driving without lights";
_data = "4";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Vehicle Collision";
_data = "59";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Manipulation of Altis checkpoint gates";
_data = "44";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Landing in a no-fly zone";
_data = "35";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Flying below 150m in a City";
_data = "36";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Flying without a Pilots License";
_data = "38";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];



_text = "Murder";
_data = "31";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Vehicular Manslaughter";
_data = "13";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Rape";
_data = "261";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Attempted Rape";
_data = "261A";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Public Disorder";
_data = "39";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Domestic Violence $15000";
_data = "15";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Littering";
_data = "45";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];



_text = "Possession of a illegal firearm";
_data = "26";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Driving illegal vehicle";
_data = "10";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Threatening for the release of a prisoner";
_data = "54";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Hostages";
_data = "28";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Terroristic demands";
_data = "55";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Destruction of Property";
_data = "56";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Assault on a City";
_data = "34";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Weapon Trafficking";
_data = "58";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Bank Robbery $250000";
_data = "30";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];


//_index = lbAdd [_list2, "Name"];
//lbSetData [_list2, _index, "pfad/zum/bild.paa"];
//lbSetValue [_list2, _index, "pfad/zum/bild.paa"];

//Case "14" DELETED

//Case 23 DELETED

//Case 37 DELETED

//_text = "Drug Possession $1000";
//_data = "261A";
//_list2 lbAdd format["%1",_text];
//_list2 lbSetData [(lbSize _list2)-1,_data];

//_text = "Intent to distribute $30000";
//_data = "482";
//_list2 lbAdd format["%1",_text];
//_list2 lbSetData [(lbSize _list2)-1,_data];

//_text = "Firing Weapon near a city $2500";
//_data = "25";
//_list2 lbAdd format["%1",_text];
//_list2 lbSetData [(lbSize _list2)-1,_data];


//_text = "Attempted Theft of a Police Vehicle $7500";
//_data = "7";
//_list2 lbAdd format["%1",_text];
//_list2 lbSetData [(lbSize _list2)-1,_data];

//_text = "Theft of a Police Vehicle $20000";
//_data = "8";
//_list2 lbAdd format["%1",_text];
//_list2 lbSetData [(lbSize _list2)-1,_data];


//_text = "Vehicle Hit and Run accident $5000";
//_data = "11";
//_list2 lbAdd format["%1",_text];
//_list2 lbSetData [(lbSize _list2)-1,_data];


//_text = "Domestic Violence $15000";
//_data = "15";
//_list2 lbAdd format["%1",_text];
//_list2 lbSetData [(lbSize _list2)-1,_data];


//_text = "Killing a Police Officer $75000";
//_data = "20";
//_list2 lbAdd format["%1",_text];
//_list2 lbSetData [(lbSize _list2)-1,_data];


//_text = "Uprising $35000";
//_data = "32";
//_list2 lbAdd format["%1",_text];
//_list2 lbSetData [(lbSize _list2)-1,_data];

//Case 33 DELETED


//_text = "Trade in Exotic goods $25000";
//_data = "40";
//_list2 lbAdd format["%1",_text];
//_list2 lbSetData [(lbSize _list2)-1,_data];


//_text = "Pick Pocketing $500";
//_data = "46";
//_list2 lbAdd format["%1",_text];
//_list2 lbSetData [(lbSize _list2)-1,_data];


//_text = "Fire on Police / Officials / Property $5000";
//_data = "21";
//_list2 lbAdd format["%1",_text];
//_list2 lbSetData [(lbSize _list2)-1,_data];


//_text = "Insulting $2500";
//_data = "17";
//_list2 lbAdd format["%1",_text];
//_list2 lbSetData [(lbSize _list2)-1,_data];



