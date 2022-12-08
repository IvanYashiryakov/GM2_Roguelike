function scr_getEnemyMoveDirection(argument0, argument1, argument2, argument3) {
	// scr_getEnemyMoveDirection(cell_x1, cell_y1, cell_x2, cell_y2);
	// return 0 - up; 1 - right; 2 - down; 3 - left; -1 - no move

	var xx = argument2 - argument0;
	var yy = argument3 - argument1;
	moveDirection = -1;

	//while(xx != 0 and yy != 0) {
	//    xx -= abs(xx) div xx;
	//    yy -= abs(yy) div yy;
	//}
	if (xx != 0 and yy != 0) {
	    if (abs(xx) > abs(yy)) {
	        if (xx > 0) {
	            moveDirection = 1; yy = 0; xx = 1;
	        } else {
	            moveDirection = 3; yy = 0; xx = -1;
	        }
	    } else {
	        if (yy > 0) {
	            moveDirection = 2; xx = 0; yy = 1;
	        } else {
	            moveDirection = 0; xx = 0; yy = -1;
	        }
	    }
	}

	return moveDirection;




}
