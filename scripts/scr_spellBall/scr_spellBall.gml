function scr_spellBall(argument0, argument1, argument2) {
	// scr_spellBall(cell_x, cell_y, spFireBall);
	// creates FireBall, IceBolt

	var x1 = argument0;
	var y1 = argument1;

	//if (x1 == Hero.cell_x xor y1 == Hero.cell_y) {
	    //moveDirection = scr_getMoveDirection(Hero.cell_x, Hero.cell_y, x1, y1);
	    moveDirection = scr_getMoveDirection(obj_HeroBag.mStartX, obj_HeroBag.mStartY, obj_HeroBag.mEndX, obj_HeroBag.mEndY);
	    if (moveDirection < 0)
	        return false;
	    scr_heroMoveChangeSprite();
	    switch (moveDirection) {
	        case 0: moveDirection = 0; break;
	        case 1: moveDirection = 90; break;
	        case 2: moveDirection = 180; break;
	        case 3: moveDirection = 270; break;
	        // 0 - up; 1 - right; 2 - down; 3 - left; -1 - no move
	        default: return false;
	    }
	    var fb = instance_create(Hero.x, Hero.y, obj_spellBall);
	    with (fb) {
	        sprite_index = ds_map_find_value(argument2, "Sprite");
	        Damage = ds_map_find_value(argument2, "Damage");
	        Special = ds_map_find_value(argument2, "Special");
	        SpecialVar = ds_map_find_value(argument2, "SpecialVar");
	        direction = other.moveDirection;
	        image_angle = other.moveDirection;
	    }
	    return true;
	//}
	//return false;



}
