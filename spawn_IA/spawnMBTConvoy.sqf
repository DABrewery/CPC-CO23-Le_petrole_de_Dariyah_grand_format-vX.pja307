sleep 5400;

private _vehClassName = "CUP_O_T72_TKA"; 
private _spawnPos = getMarkerPos "marker_spawnConvoy"; private _destinationPos = getMarkerPos "mrkConvoyDest";

[
	["CUP_O_BRDM2_ATGM_TKA", getMarkerPos "mrkSpawnConvoy_1"],
	[[_vehClassName,getMarkerPos "mrkSpawnConvoy_2"],
	[_vehClassName,getMarkerPos "mrkSpawnConvoy_3"],
	[_vehClassName,getMarkerPos "mrkSpawnConvoy_4"],
	[_vehClassName,getMarkerPos "mrkSpawnConvoy_5"],
	[_vehClassName,getMarkerPos "mrkSpawnConvoy_6"],
	["CUP_O_BRDM2_HQ_TKA",getMarkerPos "mrkSpawnConvoy_6"]
	],_destinationPos
] call int_fnc_spawnConvoy;