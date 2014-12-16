/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {500}; //Drivers License cost
	case "boat": {200}; //Boating license cost
	case "pilot": {35000}; //Pilot/air license cost
	case "gun": {30000}; //Firearm/gun license cost
	case "dive": {5000}; //Diving license cost
	case "oil": {10000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {2000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {25000}; //Heroin processing license cost
	case "marijuana": {19500}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {300000}; //Rebel license cost
	case "truck": {60000}; //Truck license cost
	case "diamond": {35000};
	case "salt": {12000};
	case "cocaine": {40000};
	case "sand": {14500};
	case "iron": {9500};
	case "copper": {8000};
	case "cement": {6500};
	case "mair": {15000};
	case "home": {150000};
	case "frog": {24000};
	case "crystalmeth": {55000};
	case "methu": {30000};
	case "moonshine": {55000};
	case "mashu": {30000};
	case "wine": {12000};
	case "vigilante": {60000};
	case "uranium": {60000};
};