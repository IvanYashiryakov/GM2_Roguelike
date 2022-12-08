function scr_getCellX(argument0) {
	// scr_getCellX(x);
	var xx = argument0 - FIRST_CELL_X;
	if (xx < 0)
	    return -1;
	xx = xx div CELL_SIZE;
	if (xx > FIELD_WIDTH - 1)
	    return -1;
	return xx;



}
