function scr_setCellEmpty(argument0, argument1) {
	// scr_setCellEmpty(cell_x, cell_y)
	if (scr_cellValid(argument0, argument1)) {
	    ds_map_replace(Field[argument0, argument1], "content", EmptyCell);
	    ds_map_replace(Field[argument0, argument1], "contentType", gameObjects.Empty);
	    ds_map_replace(Field[argument0, argument1], "solid", false);
	}
	//if (Field[argument0, argument1].type != gameObjects.Wall)
	//    Field[argument0, argument1] = EmptyCell;



}
