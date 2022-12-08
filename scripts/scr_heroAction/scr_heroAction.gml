function scr_heroAction() {
	// scr_heroAction();
	var targetX = cell_x;
	var targetY = cell_y;
	moveDirection = scr_getMoveDirection(mStartX, mStartY, mEndX, mEndY);
	switch (moveDirection) {
	    case 0: targetX++; break;
	    case 1: targetY--; break;
	    case 2: targetX--; break;
	    case 3: targetY++; break;
	    // 0 - right; 1 - up; 2 - left; 3 - down; -1 - mo move
	    default: return false;
	}
	if (!scr_cellValid(targetX, targetY))
	    return false;
	moveEnd = false;
	switch (ds_map_find_value(Field[targetX, targetY], "contentType")) {
	    case gameObjects.Enemy: return scr_hitEnemy(targetX, targetY, Hero); break;
	    case gameObjects.Wall: moveEnd = true; break;
	    default: return scr_replaceHero(targetX, targetY, Hero); break;
	}



}
