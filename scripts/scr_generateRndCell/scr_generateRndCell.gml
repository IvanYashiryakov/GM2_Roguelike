function scr_generateRndCell(argument0, argument1) {
	// scr_generateRndCell(obj, cellsFromObj);
	// x = -1 or y = -1 for random posirion
	var target;
	target[0] = -1;
	target[1] = -1;
	do {
	    randomize();
	    target[0] = random(FIELD_WIDTH) div 1;
	    target[1] = random(FIELD_HEIGHT) div 1;
	}
	until (scr_cellEmptyFarFromHero(target[0], target[1], argument0, argument1));

	return target;



}
