function scr_cellFreeOr(argument0, argument1) {
	// scr_cellFreeOrHero(cell_x, cell_y)
	if (scr_cellValid(argument0, argument1)) {
	    if (!ds_map_find_value(Field[argument0, argument1], "solid")) {
	        if (ds_map_find_value(Field[argument0, argument1], "itemType") == gameObjects.Exit) {
	            return false;
	        } else return true;
	    }
	}
	return false;



}
