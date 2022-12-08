function scr_checkLevel(argument0) {
	// scr_checkLevel(cntEmptyCells);
	var cX = obj_exit.cell_x;
	var cY = obj_exit.cell_y;
	if (!scr_cellFree(cX+1, cY) and !scr_cellFree(cX-1, cY) and !scr_cellFree(cX, cY+1) and !scr_cellFree(cX, cY-1))
	    return false;

	var ssX = 0;
	var ssY = 0;
	//while (ds_map_find_value(Field[ssX, ssY], "contentType") != gameObjects.Empty) {
	while (!scr_cellEmpty(ssX, ssY)) {
	    ssX += 1;
	    if (ssX >= FIELD_WIDTH) { ssX = 0; ssY += 1; }
	    if (ssY >= FIELD_HEIGHT) return false;
	}

	var cntEmptC = 1;
	ds_map_replace(Field[cX, cY], "pathStep", cntEmptC);
	ds_map_replace(Field[ssX, ssY], "pathStep", cntEmptC);

	var pathList_x = ds_list_create();
	var pathList_y = ds_list_create();
	ds_list_add(pathList_x, ssX);
	ds_list_add(pathList_y, ssY);

	var counting = true;
	while (counting) {
	    var sizeList = ds_list_size(pathList_x);
	    for (var i = 0; i < sizeList; i++) {
	        var xx = ds_list_find_value(pathList_x, i);
	        var yy = ds_list_find_value(pathList_y, i);
	        if (scr_cellFreeOr(xx+1, yy) and ds_map_find_value(Field[xx+1, yy], "pathStep") == 0) {
	            cntEmptC += 1;
	            ds_list_add(pathList_x, xx+1); ds_list_add(pathList_y, yy);
	            ds_map_replace(Field[xx+1, yy], "pathStep", cntEmptC);
	        }
	        if (scr_cellFreeOr(xx-1, yy) and ds_map_find_value(Field[xx-1, yy], "pathStep") == 0) {
	            cntEmptC += 1;
	            ds_list_add(pathList_x, xx-1); ds_list_add(pathList_y, yy);
	            ds_map_replace(Field[xx-1, yy], "pathStep", cntEmptC);
	        }
	        if (scr_cellFreeOr(xx, yy+1) and ds_map_find_value(Field[xx, yy+1], "pathStep") == 0) {
	            cntEmptC += 1;
	            ds_list_add(pathList_x, xx); ds_list_add(pathList_y, yy+1);
	            ds_map_replace(Field[xx, yy+1], "pathStep", cntEmptC);
	        }
	        if (scr_cellFreeOr(xx, yy-1) and ds_map_find_value(Field[xx, yy-1], "pathStep") == 0) {
	            cntEmptC += 1;
	            ds_list_add(pathList_x, xx); ds_list_add(pathList_y, yy-1);
	            ds_map_replace(Field[xx, yy-1], "pathStep", cntEmptC);
	        }
	    }
	    for (var i = 0; i < sizeList; i++) {
	        ds_list_delete(pathList_x, 0);
	        ds_list_delete(pathList_y, 0);
	    }
	    if (ds_list_size(pathList_x) == 0) {
	        counting = false;
	    }
	}
	ds_list_destroy(pathList_x);
	ds_list_destroy(pathList_y);

	for (var i = 0; i < FIELD_WIDTH; i++) {
	    for (var i2 = 0; i2 < FIELD_HEIGHT; i2++) {
	        ds_map_replace(Field[i, i2], "pathStep", 0);
	    }
	}
	return cntEmptC == argument0;



}
