function scr_enemyAction(argument0) {
	// scr_enemyAction(obj_enemy);
	//argument0.moveEnd = false;
	if (scr_moveEnemy(argument0.id))
	    return true;
	var xx = argument0.cell_x - Hero.cell_x;
	var yy = argument0.cell_y - Hero.cell_y;
	if (argument0.attack_type == attackType.melee) {
	    if ((abs(xx) == 1 xor abs(yy) == 1) and (abs(xx) == 0 xor abs(yy) == 0)) {
	        //moveDirection = scr_getMoveDirection(argument0.cell_x, argument0.cell_y, Hero.cell_x, Hero.cell_y);
	        scr_hitHero(argument0);
	    } else {
	        scr_enemyRndMove(argument0);
	    }
	} else if (argument0.attack_type == attackType.shoot) {
	    if (scr_lineFreeFromSolid(argument0.cell_x, argument0.cell_y, Hero.cell_x, Hero.cell_y)) {

			//argument0.image_speed = 0.08;
			argument0.moveEnd = true;
			moveDirection = scr_getMoveDirection(argument0.cell_x, argument0.cell_y, Hero.cell_x, Hero.cell_y);
			switch (moveDirection) {
				case 0: moveDirection = 0; break;
				case 1: moveDirection = 90; break;
				case 2: moveDirection = 180; break;
				case 3: moveDirection = 270; break;
				// 0 - up; 1 - right; 2 - down; 3 - left; -1 - no move
				default: return false;
			}
			var fb = instance_create(argument0.x, argument0.y, obj_eFireBall);
			//fb.parent_id = argument0.id;
			//with (fb) {
				//fb.sprite_index = ds_map_find_value(eFireBall, "Sprite");
				fb.Damage = argument0.Damage;
				//fb.Special = ds_map_find_value(eFireBall, "Special");
				//fb.SpecialVar = ds_map_find_value(eFireBall, "SpecialVar");
				fb.direction = moveDirection;
				fb.image_angle = moveDirection;
			//}
		} else {
			scr_enemyRndMove(argument0);
		}
	}
	scr_enemyStayChangeSprite(argument0);
	return true;



}
