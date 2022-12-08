function scr_cellSolid(argument0, argument1) {
	// scr_cellSolid(cell_x, cell_y)
	if (scr_cellValid(argument0, argument1)) {
	    return ds_map_find_value(Field[argument0, argument1], "solid");
	} else return true;



}
