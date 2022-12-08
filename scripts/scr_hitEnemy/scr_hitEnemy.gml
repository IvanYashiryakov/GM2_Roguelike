function scr_hitEnemy(argument0, argument1, argument2) {
	// scr_hitEnemy(targetX, targetY, obj);
	var targetX = argument0;
	var targetY = argument1;
	scr_heroStayChangeSprite();
	scr_enemyTakeDamage(argument2.Damage, ds_map_find_value(Field[targetX, targetY], "content"), true);
	argument2.image_speed = 0.3;
	return true;



}
