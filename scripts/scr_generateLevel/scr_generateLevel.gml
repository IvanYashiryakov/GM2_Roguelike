function scr_generateLevel() {
	// scr_generateLevel();

	randomize();
	var cntWalls = random_range(8, 24) div 1;
	var cntCells = FIELD_WIDTH*FIELD_HEIGHT;
	var Wall;
	var wX;
	var wY;
	var setCellPosAgain;

	for (var i = 0; i < cntWalls; i++) {
	    var setCellPosAgain = false;
	    Wall = instance_create(0, 0, obj_wall);
	    do {
	        scr_setCellPosition(-1, -1, Wall);
	        wX = Wall.cell_x;
	        wY = Wall.cell_y;
        
	        if (!scr_cellFreeOr(wX+1, wY+1) and scr_cellFreeOr(wX+1, wY) and scr_cellFreeOr(wX, wY+1)) {
	            setCellPosAgain = true;
	        } else if (!scr_cellFreeOr(wX+1, wY-1) and scr_cellFreeOr(wX+1, wY) and scr_cellFreeOr(wX, wY-1)) {
	            setCellPosAgain = true;
	        } else if (!scr_cellFreeOr(wX-1, wY+1) and scr_cellFreeOr(wX-1, wY) and scr_cellFreeOr(wX, wY+1)) {
	            setCellPosAgain = true;
	        } else if (!scr_cellFreeOr(wX-1, wY-1) and scr_cellFreeOr(wX-1, wY) and scr_cellFreeOr(wX, wY-1)) {
	            setCellPosAgain = true;
	        } else { setCellPosAgain = false; }
        
	    } until (!setCellPosAgain);
	}
	scr_setItemPosition(-1, -1, instance_create(0, 0, obj_exit), CELLS_FROM_HERO + 1);
	return cntCells - cntWalls - 1;




}
