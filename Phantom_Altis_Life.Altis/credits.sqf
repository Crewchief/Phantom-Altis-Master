/*
	File: welcomecredits.sqf
	Author: HellsGate
	Date: 14/12/2013
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 7; //<-- How long is the text on the screen for ? Recommended: 1 

sleep 60; //Wait in seconds before the credits start after player is in-game

_role1 = "Welcome";
_role1names = ["Invision Altis Life Server."];
_role2 = "Lead Developer:";
_role2names = ["Avitus"];
_role3 = "Assistant Developer:";
_role3names = ["Brendan"];
_role4 = "Admins:";
_role4names = ["Prayers"];
_role5 = "Moderators:";
_role5names = ["AmeriCam,"];
_role6 = "TeamSpeak and Website Address:";
_role6names = ["invisionentertainment.net"];
_role7 = "NOTICE:";
_role7names = ["Rules and Changelog are found in the briefing section on the map"];
_role8 = "News:";
_role8names = ["This server is BRAND NEW, ALL prices have been scaled down in order to keep values more realistic. With this said, $1,000,000 is = to most servers $5,000,000"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#1964D4' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.4
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names]
];