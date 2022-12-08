function scr_spellFireStorm(argument0, argument1) {
	// scr_spellFireStorm(cell_x, cell_y);

	if (ds_map_find_value(Field[argument0, argument1], "contentType") == gameObjects.Enemy) {
	    with (obj_parentEnemy) {
	        scr_enemyTakeDamage(ds_map_find_value(spFireStorm, "Damage"), self, false);
	    }
	    EnemyMove = true;
	    return true;
	}
	return false;



}
