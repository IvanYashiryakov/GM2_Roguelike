function scr_cellEmpty(argument0, argument1) {
	// scr_cellEmpty(cell_x, cell_y)

	if (scr_cellValid(argument0, argument1)) {
	    var type0 = ds_map_find_value(Field[argument0, argument1], "itemType");
	    var type1 = ds_map_find_value(Field[argument0, argument1], "contentType");
	    return type0 == gameObjects.Empty and type1 == gameObjects.Empty;
	} else return false;




}
