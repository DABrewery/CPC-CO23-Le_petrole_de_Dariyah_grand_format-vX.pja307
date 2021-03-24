private _obj = _this#0#0;
private _offsetFireH = 5;

//Explosion énorme
_bomb = "BO_GBU12_LGB" createVehicle (getPos (_obj));
_bomb setDamage 1;

//Flammes
private _pos1 = getPos (_obj); 
private _pos2 = [(getPos (_obj))#0,(getPos (_obj))#1,_offsetFireH]; 
private _fire = "#particlesource" createVehicle (_pos2);
_fire setParticleClass ("ace_cookoff_CookOff");
_fire setParticleFire [0.1,1.5,0.05];
private _refract = "#particlesource" createVehicle (_pos2);
_refract setParticleClass ("ObjectDestructionRefractSmall");
sleep 3;

//Fumée
private _smoke = "#particlesource" createVehicle (_pos1);  
_smoke setParticleClass ("fxp_CarFuelDestSmoke");

//On met les IA en alerte dès qu'une cuve est détruite
{_x setBehaviour "COMBAT";} forEach (allunits inAreaArray "mrkZnCamp");