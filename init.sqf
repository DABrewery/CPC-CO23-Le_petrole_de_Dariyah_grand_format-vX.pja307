//Récupère la liste de tous les marqueurs LUCY pour les masquer et les blacklister pour GDC_fnc_chooseSpawnPos
private _tbMrk = allMapMarkers select {["mrk", _x, true] call BIS_fnc_inString};

//Masque les marqueurs
{_x setMarkerAlpha 0.0} forEach _tbMrk;

//LUCY (-> lancé dans l'init.sqf)
[0.5,"mkr_spawn_static_unit",true,600.0,false,3600.0,true,true,"COLONEL"] call GDC_fnc_lucyInit;

// Shared global variables
opside = opfor;

//Extraction héliportée
["ACRE_PRC148",5,blufor,"CUP_B_UH1D_slick_GER_KSK_Des", "marker_objective"] call GDC_fnc_extra;

//Lance le briefing
execVM "briefing.sqf";
