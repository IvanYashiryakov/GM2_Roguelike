function scr_setCellPosition(argument0, argument1, argument2) {
	// scr_setCellPosition(cell_x, cell_y, obj);
	// x = -1 or y = -1 for random posirion
	var currentX = argument2.cell_x;
	var currentY = argument2.cell_y;
	var targetX = argument0;
	var targetY = argument1;
	if (targetX < 0 or targetY < 0) {
	    do {
	        randomize();
	        targetX = random(FIELD_WIDTH) div 1;
	        targetY = random(FIELD_HEIGHT) div 1;
	    }
	    until (scr_cellEmpty(targetX, targetY));
	} else
	    if (!scr_cellFree(targetX, targetY))
	        return false;

	scr_setCellEmpty(currentX, currentY);
	scr_setCellObj(targetX, targetY, argument2.id);
	argument2.cell_x = targetX;
	argument2.cell_y = targetY;
	argument2.x = FIRST_CELL_X + CELL_SIZE/2 + targetX*CELL_SIZE;
	argument2.y = FIRST_CELL_Y + CELL_SIZE/2 + targetY*CELL_SIZE;

	return true;



}
