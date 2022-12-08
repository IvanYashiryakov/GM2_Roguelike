function scr_wallsGetTiles() {
	// scr_wallsGetTiles();
	// tileList_x содержит все тайлы стен.
	// Каждый тайл получает свое название от имеющихся
	// соединений с другими объектами wall. Начиная слева и по часовой стрелке.
	// например самый первый тайл, который начинается в точке (0, 0)
	// назовем его RRDD - Right, Right Down, Down, т.к. только с этих сторон
	// тайл может соединиться
	// координаты начала тайла X и Y записаны одни десятичным числом: X.Y

	var tileList_x = ds_map_create();
	ds_map_add(tileList_x, "tRRdD", 0);
	ds_map_add(tileList_x, "tLRRdDLd", CELL_SIZE);
	ds_map_add(tileList_x, "tLDLd", CELL_SIZE*2);
	ds_map_add(tileList_x, "tD", CELL_SIZE*3);
	ds_map_add(tileList_x, "tLLuURRdD", CELL_SIZE*4);
	ds_map_add(tileList_x, "tRD", CELL_SIZE*5);
	ds_map_add(tileList_x, "tLRD", CELL_SIZE*6);
	ds_map_add(tileList_x, "tLD", CELL_SIZE*7);

	ds_map_add(tileList_x, "tURuRRdD", 0);
	ds_map_add(tileList_x, "tLLuURuRRdDLd", CELL_SIZE);
	ds_map_add(tileList_x, "tLLuUDLd", CELL_SIZE*2);
	ds_map_add(tileList_x, "tUD", CELL_SIZE*3);
	ds_map_add(tileList_x, "tLURuRDLd", CELL_SIZE*4);
	ds_map_add(tileList_x, "tURD", CELL_SIZE*5);
	ds_map_add(tileList_x, "tLURD", CELL_SIZE*6);
	ds_map_add(tileList_x, "tLUD", CELL_SIZE*7);

	ds_map_add(tileList_x, "tURuR", 0);
	ds_map_add(tileList_x, "tLLuURuR", CELL_SIZE);
	ds_map_add(tileList_x, "tLLuU", CELL_SIZE*2);
	ds_map_add(tileList_x, "tU", CELL_SIZE*3);
	//ds_map_add(tileList_x, "LURuRDLd", CELL_SIZE*4);
	ds_map_add(tileList_x, "tUR", CELL_SIZE*5);
	ds_map_add(tileList_x, "tLUR", CELL_SIZE*6);
	ds_map_add(tileList_x, "tLU", CELL_SIZE*7);

	ds_map_add(tileList_x, "tR", 0);
	ds_map_add(tileList_x, "tLR", CELL_SIZE);
	ds_map_add(tileList_x, "tL", CELL_SIZE*2);
	ds_map_add(tileList_x, "t", CELL_SIZE*3);
	ds_map_add(tileList_x, "tLURuRRdD", CELL_SIZE*4);
	ds_map_add(tileList_x, "tLURRdDLd", CELL_SIZE*5);
	ds_map_add(tileList_x, "tLLuURDLd", CELL_SIZE*6);
	ds_map_add(tileList_x, "tLLuURuRD", CELL_SIZE*7);

	ds_map_add(tileList_x, "tLLuURuRDLd", 0);
	ds_map_add(tileList_x, "tLLuURuRRdD", CELL_SIZE);
	ds_map_add(tileList_x, "tLRDLd", CELL_SIZE*2);
	ds_map_add(tileList_x, "tLLuUD", CELL_SIZE*3);
	ds_map_add(tileList_x, "tURuRD", CELL_SIZE*4);
	ds_map_add(tileList_x, "tLRRdD", CELL_SIZE*5);
	ds_map_add(tileList_x, "tLLuURD", CELL_SIZE*6);
	ds_map_add(tileList_x, "tLURuRD", CELL_SIZE*7);

	ds_map_add(tileList_x, "tLLuURRdDLd", 0);
	ds_map_add(tileList_x, "tLURuRRdDLd", CELL_SIZE);
	ds_map_add(tileList_x, "tURRdD", CELL_SIZE*2);
	ds_map_add(tileList_x, "tLURuR", CELL_SIZE*3);
	ds_map_add(tileList_x, "tLLuUR", CELL_SIZE*4);
	ds_map_add(tileList_x, "tLUDLd", CELL_SIZE*5);
	ds_map_add(tileList_x, "tLURDLd", CELL_SIZE*6);
	ds_map_add(tileList_x, "tLURRdD", CELL_SIZE*7);

	var tileList_y = ds_map_create();
	ds_map_add(tileList_y, "tRRdD", 0);
	ds_map_add(tileList_y, "tLRRdDLd", 0);
	ds_map_add(tileList_y, "tLDLd", 0);
	ds_map_add(tileList_y, "tD", 0);
	ds_map_add(tileList_y, "tLLuURRdD", 0);
	ds_map_add(tileList_y, "tRD", 0);
	ds_map_add(tileList_y, "tLRD", 0);
	ds_map_add(tileList_y, "tLD", 0);

	ds_map_add(tileList_y, "tURuRRdD", CELL_SIZE);
	ds_map_add(tileList_y, "tLLuURuRRdDLd", CELL_SIZE);
	ds_map_add(tileList_y, "tLLuUDLd", CELL_SIZE);
	ds_map_add(tileList_y, "tUD", CELL_SIZE);
	ds_map_add(tileList_y, "tLURuRDLd", CELL_SIZE);
	ds_map_add(tileList_y, "tURD", CELL_SIZE);
	ds_map_add(tileList_y, "tLURD", CELL_SIZE);
	ds_map_add(tileList_y, "tLUD", CELL_SIZE);

	ds_map_add(tileList_y, "tURuR", CELL_SIZE*2);
	ds_map_add(tileList_y, "tLLuURuR", CELL_SIZE*2);
	ds_map_add(tileList_y, "tLLuU", CELL_SIZE*2);
	ds_map_add(tileList_y, "tU", CELL_SIZE*2);
	//ds_map_add(tileList_y, "LURuRDLd", CELL_SIZE*2);
	ds_map_add(tileList_y, "tUR", CELL_SIZE*2);
	ds_map_add(tileList_y, "tLUR", CELL_SIZE*2);
	ds_map_add(tileList_y, "tLU", CELL_SIZE*2);

	ds_map_add(tileList_y, "tR", CELL_SIZE*3);
	ds_map_add(tileList_y, "tLR", CELL_SIZE*3);
	ds_map_add(tileList_y, "tL", CELL_SIZE*3);
	ds_map_add(tileList_y, "t", CELL_SIZE*3);
	ds_map_add(tileList_y, "tLURuRRdD", CELL_SIZE*3);
	ds_map_add(tileList_y, "tLURRdDLd", CELL_SIZE*3);
	ds_map_add(tileList_y, "tLLuURDLd", CELL_SIZE*3);
	ds_map_add(tileList_y, "tLLuURuRD", CELL_SIZE*3);

	ds_map_add(tileList_y, "tLLuURuRDLd", CELL_SIZE*4);
	ds_map_add(tileList_y, "tLLuURuRRdD", CELL_SIZE*4);
	ds_map_add(tileList_y, "tLRDLd", CELL_SIZE*4);
	ds_map_add(tileList_y, "tLLuUD", CELL_SIZE*4);
	ds_map_add(tileList_y, "tURuRD", CELL_SIZE*4);
	ds_map_add(tileList_y, "tLRRdD", CELL_SIZE*4);
	ds_map_add(tileList_y, "tLLuURD", CELL_SIZE*4);
	ds_map_add(tileList_y, "tLURuRD", CELL_SIZE*4);

	ds_map_add(tileList_y, "tLLuURRdDLd", CELL_SIZE*5);
	ds_map_add(tileList_y, "tLURuRRdDLd", CELL_SIZE*5);
	ds_map_add(tileList_y, "tURRdD", CELL_SIZE*5);
	ds_map_add(tileList_y, "tLURuR", CELL_SIZE*5);
	ds_map_add(tileList_y, "tLLuUR", CELL_SIZE*5);
	ds_map_add(tileList_y, "tLUDLd", CELL_SIZE*5);
	ds_map_add(tileList_y, "tLURDLd", CELL_SIZE*5);
	ds_map_add(tileList_y, "tLURRdD", CELL_SIZE*5);

	with (obj_wall) {
	    // if для того, чтобы не рисовать нижние и верхние стены
	    if (cell_y != FIELD_HEIGHT and cell_y != -1) {
	    var xx = cell_x;
	    var yy = cell_y;
	    var tName = "t";
	    if (scr_cellSolid(xx - 1, yy)) {
	        tName += "L";
	        if (scr_cellSolid(xx - 1, yy - 1))
	        tName += "Lu";
	    }
	    if (scr_cellSolid(xx, yy - 1)) {
	        tName += "U";
	        if (scr_cellSolid(xx + 1, yy - 1))
	            tName += "Ru";
	    } else if (string_pos("Lu", tName) != 0)
	        tName = string_replace(tName, "Lu", "");
	    if (scr_cellSolid(xx + 1, yy)) {
	        tName += "R";
	        if (scr_cellSolid(xx + 1, yy + 1))
	            tName += "Rd";
	        } else if (string_pos("Ru", tName) != 0)
	            tName = string_replace(tName, "Ru", "");
	    if (scr_cellSolid(xx, yy + 1)) {
	        tName += "D";
	        if (scr_cellSolid(xx - 1, yy + 1) and scr_cellSolid(xx - 1, yy))
	            tName += "Ld";
	    } else if (string_pos("Rd", tName) != 0)
	        tName = string_replace(tName, "Rd", "");
                    
	    var tX = ds_map_find_value(tileList_x, tName);
	    var tY = ds_map_find_value(tileList_y, tName);
	    tile_add(tiles_wall, tX, tY, CELL_SIZE, CELL_SIZE, x - CELL_SIZE/2, y - CELL_SIZE/2, DEPTH_TILE);
	    }
	}

	ds_map_destroy(tileList_x);
	ds_map_destroy(tileList_y);



}
