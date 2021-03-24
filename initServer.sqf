//PLUTO Opfor
[
	opfor,		        //0 camp
	[1000,5000,6000],	//1 revealRange [man,land,air]
	[1500,2000,3000],	//2 sensorRange [man,land,air]
	120,			    //3 QRFtimeout
	[1000,5000,12000],	//4 QRFrange [man,land,air]
	[60,90,120],		//5 QRFdelay [min,mid,max]
	240,			    //6 ARTYtimeout
	[20,30,60],		    //7 ARTYdelay [min,mid,max]
	[1,2,4],		    //8 ARTYrounds [min,mid,max]
	[0,40,100]		    //9 ARTYerror [min,mid,max]
] call GDC_fnc_pluto;

gdc_plutoDebug = true;

/* Cargo */

//KSK
[
   cargoCrate,
   true,
   [
      ["CUP_B_GER_Backpack_MG3",5],
      ["SatchelCharge_Remote_Mag", 4],
      ["DemoCharge_Remote_Mag", 6],
      ["ACE_M26_Clacker",2],
      ["ACE_Clacker",2],
      ["CUP_30Rnd_556x45_PMAG_QP_Tan",20],
      ["CUP_17Rnd_9x19_glock17", 30],
      ["CUP_HandGrenade_M67",10],
      ["CUP_Weapon_launch_M136",4],
      ["ACE_wirecutter",5],
      ["ACE_EntrenchingTool",5],
      ["ACE_EarPlugs",10],
      ["ACE_packingBandage",20],
      ["ACE_quikclot",10],
      ["ACE_elasticBandage",10],
      ["ACE_fieldDressing",20],
      ["ACE_salineIV_250",5],
      ["ACE_salineIV_500",5],
      ["ACE_salineIV",2],
      ["ACE_morphine",10],
      ["ACE_atropine",5],
      ["ACE_tourniquet",8],
      ["ACE_splint",10]
   ]
] call int_fnc_addCargo;

//Regular
_cargoBoxer = 
   [
      ["CUP_B_GER_Backpack_MG3",5],
      ["SatchelCharge_Remote_Mag", 4],
      ["DemoCharge_Remote_Mag", 6],
      ["ACE_M26_Clacker",2],
      ["ACE_Clacker",2],
      ["CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",20],
	  ["CUP_MAAWS_HEAT_M", 5],
	  ["CUP_MAAWS_HEDP_M", 5],
      ["CUP_17Rnd_9x19_glock17", 30],
      ["CUP_HandGrenade_M67",10],
      ["CUP_Weapon_launch_M136",4],
      ["ACE_wirecutter",5],
      ["ACE_EntrenchingTool",5],
      ["ACE_EarPlugs",10],
      ["ACE_packingBandage",20],
      ["ACE_quikclot",10],
      ["ACE_elasticBandage",10],
      ["ACE_fieldDressing",20],
      ["ACE_salineIV_250",5],
      ["ACE_salineIV_500",5],
      ["ACE_salineIV",2],
      ["ACE_morphine",10],
      ["ACE_atropine",5],
      ["ACE_tourniquet",8],
      ["ACE_splint",10]
   ];

[
   boxer_1,
   true,
   _cargoBoxer
] call int_fnc_addCargo;

[
   boxer_2,
   true,
   _cargoBoxer
] call int_fnc_addCargo;

[
   cargoOPFOR,
   true,
   [["CUP_Mine_M", 50]]
] call int_fnc_addCargo;

/* Group definition */
//Takistan units
	private _fsl_ENI    = "CUP_O_TK_Soldier";
	private _lat_ENI    = "CUP_O_TK_Soldier_LAT";
	private _aa_ENI     = "CUP_O_TK_Soldier_AA";
	private _at_ENI     = "CUP_O_TK_Soldier_HAT";
	private _ass_at_ENI = "CUP_O_TK_Soldier_AAT";
	private _lmg_ENI    = "CUP_O_TK_Soldier_AR";
	private _mg_ENI     = "CUP_O_TK_Soldier_MG";
	private _ass_mg_ENI = "CUP_O_TK_Soldier_AMG";
	private _gl_ENI     = "CUP_O_TK_Soldier_GL";
	private _tl_ENI     = "CUP_O_TK_Soldier_SL";
	private _sl_ENI     = "CUP_O_TK_Officer";
	private _medic_ENI  = "CUP_O_TK_Medic";

//2 à 3
GROUPE_ENI_PETIT = [
	[_gl_ENI, _fsl_ENI],
	[_lmg_ENI, _fsl_ENI],
	[_tl_ENI, _fsl_ENI, _fsl_ENI],
	[_tl_ENI, _lat_ENI, _fsl_ENI],
	[_tl_ENI, _lmg_ENI, _fsl_ENI]
];

//4 à 5
GROUPE_ENI_MOYEN = [
	[_gl_ENI, _fsl_ENI, _fsl_ENI, _lat_ENI],
	[_lmg_ENI, _fsl_ENI,_fsl_ENI, _fsl_ENI],
	[_tl_ENI, _mg_ENI, _ass_mg_ENI, _fsl_ENI, _lat_ENI],
	[_tl_ENI, _lat_ENI, _fsl_ENI, _fsl_ENI, _gl_ENI],
	[_tl_ENI, _lmg_ENI, _fsl_ENI, _at_ENI, _fsl_ENI]
];

//4 à 5
GROUPE_ENI_GRAND =
	[_sl_ENI, _medic_ENI, _tl_ENI, _gl_ENI, _fsl_ENI, _fsl_ENI, _tl_ENI, _mg_ENI, _ass_mg_ENI, _lat_ENI, _fsl_ENI];

isBluforDetected = false;

/* AI spawn */
execVM "spawn_IA\spawnPatrol_1.sqf";
execVM "spawn_IA\spawnPetrolStation.sqf";
execVM "spawn_IA\spawnCamp.sqf";
execVM "spawn_IA\spawnReinf.sqf";
execVM "spawn_IA\spawnMBTConvoy.sqf";