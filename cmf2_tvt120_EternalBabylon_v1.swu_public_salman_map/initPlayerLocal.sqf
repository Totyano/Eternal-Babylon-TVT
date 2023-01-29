// Add markers to each objective
//[] spawn CCO_fnc_initObjectiveMarkers; // @Totyano is this gonna be implemented otherwise remove since you don't have the script

opfWaves		= 0;
opfMaxWaves		= 5;
bluWaves		= 0;
bluMaxWaves		= 5;
if (vehicleVarName player isEqualTo "BLU_COY") then {
	_bluaction = ["bforcerespawn","Force a Respawn","",{[] spawn CCO_fnc_forceBLU;},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions","ACE_Equipment"], _bluaction, true] call ace_interact_menu_fnc_addActionToObject;
};
if (vehicleVarName player isEqualTo "OPF_COY") then {
	_opfaction = ["oforcerespawn","Force a Respawn","",{[] spawn CCO_fnc_forceOPF;},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions","ACE_Equipment"], _opfaction, true] call ace_interact_menu_fnc_addActionToObject;
};