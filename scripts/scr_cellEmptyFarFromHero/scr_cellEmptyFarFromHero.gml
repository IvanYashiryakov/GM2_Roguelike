function scr_cellEmptyFarFromHero(argument0, argument1, argument2, argument3) {
	// scr_cellEmptyFarFromHero(cell_x, cell_y, obj, cellsFromObj)

	if (scr_cellValid(argument0, argument1)) {
	    if (abs(argument0 - argument2.cell_x) + abs(argument1 - argument2.cell_y) < argument3)
	        return false;
	    var type0 = ds_map_find_value(Field[argument0, argument1], "itemType");
	    var type1 = ds_map_find_value(Field[argument0, argument1], "contentType");
	    return type0 == gameObjects.Empty and type1 == gameObjects.Empty;
	} else return false;




}
