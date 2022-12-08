function scr_getMoveDirection(argument0, argument1, argument2, argument3) {
	// scr_getMoveDirection(x1, y1, x2, y2);
	// return 0 - right; 1 - up; 2 - left; 3 - down; -1 - mo move
	if (argument0 < 0 or argument1 < 0 or argument2 < 0 or argument3 < 0)
	    return -1;
    
	xx = argument2 - argument0;
	yy = argument3 - argument1;

	while(xx != 0 and yy != 0) {
	    xx -= abs(xx) div xx;
	    yy -= abs(yy) div yy;
	}
    
	if (xx == 0 and yy == 0)
	    return -1;
    
	if (yy == 0) {
	    if (xx > 0)
	        return 0;
	    else
	        return 2;
	}
	if (yy > 0)
	    return 3;
	else
	    return 1;



}
