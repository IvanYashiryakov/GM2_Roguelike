function scr_getCellY(argument0) {
	// scr_getCellY(y);
	var yy = argument0 - FIRST_CELL_Y;
	if (yy < 0)
	    return -1;
	yy = yy div CELL_SIZE;
	if (yy > FIELD_HEIGHT - 1)
	    return -1;
	return yy;



}
