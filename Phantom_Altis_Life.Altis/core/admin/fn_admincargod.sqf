
{if(isnil"Car_God")then
{Car_God=0};

if(Car_God==0)then
{cutText[format["CarGodmode ON"],"PLAIN DOWN"];hint format["CarGodmode ON"];Car_God=1;

Car_God_lol=true;
while{ECar_God_lol}do
{if((vehicle player isKindOf"LandVehicle")||(vehicle player isKindOf"Air")||(vehicle player isKindOf"Ship"))then
{if((fuel(vehicle player))<0.9)then
{vehicle player setFuel 1;};
if((damage(vehicle player))!=0)then
{vehicle player setdammage 0;};};sleep 0.01;};}else
{cutText[format["CarGodmode OFF"],"PLAIN DOWN"];

hint format["CarGodmode OFF"];

Car_God_lol=false;
Car_God=0;};};