function scr_moveEnemy(argument0) {
	// scr_moveEnemy(obj_enemy);
	var _enemy = argument0;

	// если Enemy дальнобойный и может стрелять по Hero
	if (_enemy.attack_type == attackType.shoot) {
	    if (scr_lineFreeFromSolid(_enemy.cell_x, _enemy.cell_y, Hero.cell_x, Hero.cell_y))
	        return false;
	}

	var moveCell = scr_findPath(_enemy);
	if (moveCell[0] == _enemy.cell_x and moveCell[1] == _enemy.cell_y)
	    return false;
	var moveCell_x = moveCell[0];
	var moveCell_y = moveCell[1];
	scr_setCellObj(moveCell[0], moveCell[1], _enemy);
	scr_setCellEmpty(_enemy.cell_x, _enemy.cell_y);
	_enemy.moveDirection = scr_getMoveDirection(_enemy.cell_x, _enemy.cell_y, moveCell[0], moveCell[1]);
	_enemy.cell_x = moveCell[0];
	_enemy.cell_y = moveCell[1];
	scr_enemyStayChangeSprite(_enemy);
	_enemy.alarm[1] = 7;	// moving

	return true;



}
