function scr_enemyStayChangeSprite(argument0) {
	// scr_enemyStayChangeSprite(obj_enemy);
	switch (argument0.moveDirection) {
	    case 0: argument0.sprite_index = argument0.sprRight; break;
	    case 1: argument0.sprite_index = argument0.sprUp; break;
	    case 2: argument0.sprite_index = argument0.sprLeft; break;
	    case 3: argument0.sprite_index = argument0.sprDown; break;
		default: return false;
	}



}
