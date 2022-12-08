function scr_findPath(argument0) {
	// scr_findPath(obj_enemy);
	var currCell_x = argument0.cell_x;
	var currCell_y = argument0.cell_y;
	var xMin = currCell_x;
	var yMin = currCell_y;
	var xy;

	var xxs = Hero.cell_x - currCell_x;
	var yys = Hero.cell_y - currCell_y;
	if ((xxs == 0 and abs(yys) <= 1) or (abs(xxs) <= 1 and yys == 0)) {
	    xy[0] = currCell_x;
	    xy[1] = currCell_y;
	    return xy;
	}
	var stepD = 1;
	var stepDMin = 1;
	ds_map_replace(Field[currCell_x, currCell_y], "pathStep", stepD);
	var pathList_x = ds_list_create();
	var pathList_y = ds_list_create();
	ds_list_add(pathList_x, currCell_x);
	ds_list_add(pathList_y, currCell_y);

	var sizeList;
	var xx;
	var yy;

	while (ds_map_find_value(Field[Hero.cell_x, Hero.cell_y], "pathStep") == 0) {
	    stepD += 1;
	    sizeList = ds_list_size(pathList_x);
	    for (var i = 0; i < sizeList; i++) {
	        xx = ds_list_find_value(pathList_x, i);
	        yy = ds_list_find_value(pathList_y, i);
	        if (!scr_cellSolid(xx+1, yy))
	            if (ds_map_find_value(Field[xx+1, yy], "pathStep") == 0) {
	                ds_list_add(pathList_x, xx+1); ds_list_add(pathList_y, yy);
	                ds_map_replace(Field[xx+1, yy], "pathStep", stepD);
	            }
	        if (!scr_cellSolid(xx-1, yy))
	            if (ds_map_find_value(Field[xx-1, yy], "pathStep") == 0) {
	                ds_list_add(pathList_x, xx-1); ds_list_add(pathList_y, yy);
	                ds_map_replace(Field[xx-1, yy], "pathStep", stepD);
	            }
	        if (!scr_cellSolid(xx, yy+1))
	            if (ds_map_find_value(Field[xx, yy+1], "pathStep") == 0) {
	                ds_list_add(pathList_x, xx); ds_list_add(pathList_y, yy+1);
	                ds_map_replace(Field[xx, yy+1], "pathStep", stepD);
	            }
	        if (!scr_cellSolid(xx, yy-1))
	            if (ds_map_find_value(Field[xx, yy-1], "pathStep") == 0) {
	                ds_list_add(pathList_x, xx); ds_list_add(pathList_y, yy-1);
	                ds_map_replace(Field[xx, yy-1], "pathStep", stepD);
	            }
	        if (!scr_cellSolid(xx, yy))
	            if (abs(xx - Hero.cell_x) <= abs(xMin - Hero.cell_x))
	                if (abs(yy - Hero.cell_y) <= abs(yMin - Hero.cell_y)) {
	                    xMin = xx;
	                    yMin = yy;
	                    stepDMin = stepD;
	                }
	    }
	    for (var i = 0; i < sizeList; i++) {
	        ds_list_delete(pathList_x, 0);
	        ds_list_delete(pathList_y, 0);
	    }
	    if (ds_list_size(pathList_x) == 0)
	        break;
	}
	ds_list_destroy(pathList_x);
	ds_list_destroy(pathList_y);
	if (ds_map_find_value(Field[Hero.cell_x, Hero.cell_y], "pathStep") != 0) {
	    xx = Hero.cell_x;
	    yy = Hero.cell_y;
	} else {
	    xx = xMin;
	    yy = yMin;
	    stepD = stepDMin;
	}
	var vertOrHor = abs(yys) < abs(xxs);
	while (stepD > 2) {
	    stepD -= 1;
	    if (vertOrHor) {
	        if (!scr_cellSolid(xx, yy-1) and ds_map_find_value(Field[xx, yy-1], "pathStep") == stepD) yy -= 1;
	        else if (!scr_cellSolid(xx, yy+1) and ds_map_find_value(Field[xx, yy+1], "pathStep") == stepD) yy += 1;
	        else if (!scr_cellSolid(xx+1, yy) and ds_map_find_value(Field[xx+1, yy], "pathStep") == stepD) xx += 1;
	        else if (!scr_cellSolid(xx-1, yy) and ds_map_find_value(Field[xx-1, yy], "pathStep") == stepD) xx -= 1;
	    } else {
	        if (!scr_cellSolid(xx+1, yy) and ds_map_find_value(Field[xx+1, yy], "pathStep") == stepD) xx += 1;
	        else if (!scr_cellSolid(xx-1, yy) and ds_map_find_value(Field[xx-1, yy], "pathStep") == stepD) xx -= 1;
	        else if (!scr_cellSolid(xx, yy+1) and ds_map_find_value(Field[xx, yy+1], "pathStep") == stepD) yy += 1;
	        else if (!scr_cellSolid(xx, yy-1) and ds_map_find_value(Field[xx, yy-1], "pathStep") == stepD) yy -= 1;
	    }
	}
	for (var i = 0; i < FIELD_WIDTH; i++) {
	    for (var i2 = 0; i2 < FIELD_HEIGHT; i2++) {
	        ds_map_replace(Field[i, i2], "pathStep", 0);
	    }
	}
	xy[0] = xx;
	xy[1] = yy;
	return xy;
	//return Field[xx, yy];



}
