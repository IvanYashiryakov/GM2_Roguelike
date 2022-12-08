function scr_getTargetCellObj(argument0, argument1, argument2) {
	// scr_getTargetCellObj(cell_x, cell_y, moveDirection);
	var targetX = argument0;
	var targetY = argument1;
	switch (argument2) {
	    case 0: targetX++; break;
	    case 1: targetY--; break;
	    case 2: targetX--; break;
	    case 3: targetY++; break;
		default: return false;
	}
	return ds_map_find_value(Field[targetX, targetY], "content");
	//return Field[targetX, targetY];



}
