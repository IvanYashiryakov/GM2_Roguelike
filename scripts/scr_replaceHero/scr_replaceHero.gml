function scr_replaceHero(argument0, argument1, argument2) {
	// scr_replaceHero(moveCell_x, moveCell_y, obj);
	//moveDirection = argument0.moveDirection;
	var tempX = argument2.cell_x;
	var tempY = argument2.cell_y;

	if (!scr_cellValid(argument0, argument1) or ds_map_find_value(Field[argument0, argument1], "solid"))
	    return false;
    
	scr_setCellObj(argument0, argument1, argument2);
	scr_setCellEmpty(tempX, tempY);
	scr_heroMoveChangeSprite();

	argument2.cell_x = argument0;
	argument2.cell_y = argument1;
	argument2.alarm[1] = 1;

	return true;



}
