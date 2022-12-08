function scr_createBorderWalls() {
	// scr_createBorderWalls();
	var sideLen = FIELD_HEIGHT + 2;
	var Wall;
	// creating vertical border walls
	for (var i = 0; i < sideLen; i++) {
	    Wall = instance_create(FIRST_CELL_X - CELL_SIZE/2, FIRST_CELL_Y - CELL_SIZE/2 + i*CELL_SIZE, obj_wall);
	    Wall.cell_y = i - 1;
    
	    Wall = instance_create(FIRST_CELL_X + CELL_SIZE*(FIELD_WIDTH+0.5), FIRST_CELL_Y - CELL_SIZE/2 + i*CELL_SIZE, obj_wall);
	    Wall.cell_x = FIELD_WIDTH;
	    Wall.cell_y = i - 1;
	}

	// creating horizontal border walls
	for (var i = 0; i < FIELD_WIDTH; i++) {
	    Wall = instance_create(FIRST_CELL_X + CELL_SIZE/2 + i*CELL_SIZE, FIRST_CELL_Y - CELL_SIZE/2, obj_wall);
	    Wall.cell_x = i;
    
	    Wall = instance_create(FIRST_CELL_X + CELL_SIZE/2 + i*CELL_SIZE, CELL_SIZE*FIELD_HEIGHT + FIRST_CELL_Y + CELL_SIZE/2, obj_wall);
	    Wall.cell_x = i;
	    Wall.cell_y = FIELD_HEIGHT;
	}



}
