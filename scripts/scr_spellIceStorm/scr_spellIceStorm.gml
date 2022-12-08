function scr_spellIceStorm(argument0, argument1) {
	// scr_spellIceStorm(cell_x, cell_y);

	if (ds_map_find_value(Field[argument0, argument1], "contentType") == gameObjects.Enemy) {
	    with (obj_parentEnemy) {
	        charHited = true;
	        charFrozen = true;
	        charStepsToSkip = ds_map_find_value(spIceStorm, "SpecialVar");
	        charCurrentSkipStep = 0;
	    }
	    EnemyMove = true;
	    return true;
	}
	return false;



}
