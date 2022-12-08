function scr_setItemPosition(argument0, argument1, argument2, argument3) {
	// scr_setItemPosition(cell_x, cell_y, obj, cellsFromObj);
	// cell_x = -1 or cell_y = -1 are for random position

	if (argument0 < 0 or argument1 < 0) {
	    var target = scr_generateRndCell(Hero, argument3);
	} else if (!scr_cellFree(target[0], target[1]))
	        return false;

	ds_map_replace(Field[target[0], target[1]], "item", argument2);
	ds_map_replace(Field[target[0], target[1]], "itemType", argument2.type);
	argument2.cell_x = target[0];
	argument2.cell_y = target[1];
	argument2.x = FIRST_CELL_X + CELL_SIZE/2 + target[0]*CELL_SIZE;
	argument2.y = FIRST_CELL_Y + CELL_SIZE/2 + target[1]*CELL_SIZE;

	return true;



}
