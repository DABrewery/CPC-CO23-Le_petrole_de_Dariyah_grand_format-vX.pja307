/* 
	Quick and dirty function that spawns an armored group of 3 and orders it to go to a waypoint 
	As for now, only the destination waypoint can be passed as a parameter	
*/




params [
	["_firstVehicle",[],[[]]],
	["_otherVehicles",[],[[]]],
	"_destinationPos"
];

// Spawn the first vehicle and the set convoy params
private _leadVeh = _firstVehicle#0 createVehicle _firstVehicle#1; 
createVehicleCrew _leadVeh;
_leadVeh setConvoySeparation 50; 
_leadVehGrp = group driver _leadVeh;

_leadVeh addEventHandler ["FiredNear", {
	params ["_unit"];
	(group _unit) setBehaviour "COMBAT";
	(group _unit) setFormation "LINE";
}];

// Spawn the other vehicles
{
	sleep 5;
	private _otherVeh = _x#0 createVehicle _x#1;
	createVehicleCrew _otherVeh;
	_otherVeh setConvoySeparation 50;
	private _crew = crew _otherVeh;
	// Join the leading group
	_crew join _leadVehGrp;

} forEach _otherVehicles;

//sleep 5;

// Set the group behavior.
_leadVehGrp setBehaviour "CARELESS";
_leadVehGrp setFormation "COLUMN";

// Convoy movement, gets on SAD behavior at the end of the movement
_waypoint = _leadVehGrp addWaypoint [_destinationPos, 0]; 
_waypoint setWaypointType "Move";
_waypoint setWaypointStatements ["true","(group this) setBehaviour 'SAD';(group this) setFormation 'LINE'"];