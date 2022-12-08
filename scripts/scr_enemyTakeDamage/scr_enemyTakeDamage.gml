function scr_enemyTakeDamage(argument0, argument1, argument2) {
	// scr_enemyTakeDamage(damage, obj, byHero);
	argument1.Health -= argument0;

	if (argument1.Health <= 0)
	    with (argument1.id) {
	        scr_setCellEmpty(cell_x, cell_y);
	        scr_getExp(charExpForKill);
	        instance_destroy();
	        return true;
	    }
	if (argument2 and !argument1.charFrozen) {
	    argument1.charCurrentSkipStep = 0;
	    argument1.charHited = true;
	}



}
