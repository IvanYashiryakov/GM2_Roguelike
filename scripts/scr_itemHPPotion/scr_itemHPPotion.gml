function scr_itemHPPotion(argument0, argument1) {
	// scr_itemHPPotion(cell_x, cell_y);
	if (argument0 != Hero.cell_x or argument1 != Hero.cell_y)
	    return false;

	if (Hero.HealthMax > Hero.Health) {
	    Hero.Health += ds_map_find_value(spHPPotion, "SpecialVar");
	    if (Hero.HealthMax < Hero.Health)
	        Hero.Health = Hero.HealthMax;
	    EnemyMove = true;
	    return true;
	} else return false;



}
