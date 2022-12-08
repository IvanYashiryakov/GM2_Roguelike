function scr_heroStayChangeSprite() {
	// scr_heroMoveChangeSprite();
	switch (moveDirection) {
	    case 0: Hero.sprite_index = spr_hero_right; break;
	    case 1: Hero.sprite_index = spr_hero_up; break;
	    case 2: Hero.sprite_index = spr_hero_left; break;
	    case 3: Hero.sprite_index = spr_hero_down; break;
		default: return false;
	}



}
