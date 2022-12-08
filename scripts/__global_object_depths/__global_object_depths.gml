function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_enemy
	global.__objectDepths[1] = 0; // obj_enemy02
	global.__objectDepths[2] = 0; // obj_enemy03
	global.__objectDepths[3] = -20; // obj_enemyDieExp
	global.__objectDepths[4] = 0; // obj_enemyHited
	global.__objectDepths[5] = 0; // obj_parentEnemy
	global.__objectDepths[6] = 0; // obj_cancel
	global.__objectDepths[7] = 0; // obj_hero
	global.__objectDepths[8] = 0; // obj_HeroBag
	global.__objectDepths[9] = 0; // obj_trash
	global.__objectDepths[10] = -30; // obj_itemInfo
	global.__objectDepths[11] = -10; // obj_HUD
	global.__objectDepths[12] = 0; // obj_lvlUpPane
	global.__objectDepths[13] = 0; // obj_lvlUpSelect
	global.__objectDepths[14] = 0; // obj_perk
	global.__objectDepths[15] = 0; // obj_rndSpell
	global.__objectDepths[16] = 0; // obj_spellBall
	global.__objectDepths[17] = 0; // obj_spellSelect
	global.__objectDepths[18] = 0; // obj_Restart
	global.__objectDepths[19] = 0; // obj_control
	global.__objectDepths[20] = 0; // obj_emptyCell
	global.__objectDepths[21] = 0; // obj_exit
	global.__objectDepths[22] = 0; // obj_first_run
	global.__objectDepths[23] = 0; // obj_gameControl
	global.__objectDepths[24] = 0; // obj_parent
	global.__objectDepths[25] = 0; // obj_parentGUI
	global.__objectDepths[26] = 0; // obj_wall


	global.__objectNames[0] = "obj_enemy";
	global.__objectNames[1] = "obj_enemy02";
	global.__objectNames[2] = "obj_enemy03";
	global.__objectNames[3] = "obj_enemyDieExp";
	global.__objectNames[4] = "obj_enemyHited";
	global.__objectNames[5] = "obj_parentEnemy";
	global.__objectNames[6] = "obj_cancel";
	global.__objectNames[7] = "obj_hero";
	global.__objectNames[8] = "obj_HeroBag";
	global.__objectNames[9] = "obj_trash";
	global.__objectNames[10] = "obj_itemInfo";
	global.__objectNames[11] = "obj_HUD";
	global.__objectNames[12] = "obj_lvlUpPane";
	global.__objectNames[13] = "obj_lvlUpSelect";
	global.__objectNames[14] = "obj_perk";
	global.__objectNames[15] = "obj_rndSpell";
	global.__objectNames[16] = "obj_spellBall";
	global.__objectNames[17] = "obj_spellSelect";
	global.__objectNames[18] = "obj_Restart";
	global.__objectNames[19] = "obj_control";
	global.__objectNames[20] = "obj_emptyCell";
	global.__objectNames[21] = "obj_exit";
	global.__objectNames[22] = "obj_first_run";
	global.__objectNames[23] = "obj_gameControl";
	global.__objectNames[24] = "obj_parent";
	global.__objectNames[25] = "obj_parentGUI";
	global.__objectNames[26] = "obj_wall";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
