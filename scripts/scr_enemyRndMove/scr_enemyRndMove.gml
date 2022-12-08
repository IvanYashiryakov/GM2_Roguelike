function scr_enemyRndMove(argument0) {
	// scr_enemyRndMove(obj_enemy);

	var xx = argument0.cell_x;
	var yy = argument0.cell_y;

	var tmp;
	var freeX;
	var freeY;
	var mm;
	mm[0] = -1;
	mm[1] = -1;
	mm[2] = -1;
	mm[3] = -1;

	for (var i = 0; i < 4; i++) {
	    randomize();
	    tmp = random(4) div 1;
	    if (tmp != mm[0] and tmp != mm[1] and tmp != mm[2] and tmp != mm[3]) {
	        mm[i] = tmp;
	    } else { i -= 1; }
	}

	// 0 - up; 1 - right; 2 - down; 3 - left;
	for (var i = 0; i < 4; i++) {
	    freeX = xx;
	    freeY = yy;
	    switch(mm[i]) {
	        case 0: freeY -= 1; break;
	        case 1: freeX += 1; break;
	        case 2: freeY += 1; break;
	        case 3: freeX -= 1; break;
	    }
	    if (!scr_cellSolid(freeX, freeY)) {
	        scr_setCellObj(freeX, freeY, argument0);
	        scr_setCellEmpty(cell_x, cell_y);
	        moveDirection = scr_getMoveDirection(argument0.cell_x, argument0.cell_y, freeX, freeY);
	        argument0.cell_x = freeX;
	        argument0.cell_y = freeY;
	        argument0.alarm[1] = 7;
	        return true;
	    }
	}
	argument0.alarm[1] = 7;




}
