function scr_cellContains(argument0, argument1, argument2) {
	// scr_cellContains(cell_x, cell_y, gameObjects.obj)
	if (scr_cellValid(argument0, argument1)) {
	    var type0 = ds_map_find_value(Field[argument0, argument1], "contentType");
	    return type0 == argument2;
	} else return false;



}
