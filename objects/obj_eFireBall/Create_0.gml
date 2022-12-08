Damage = ds_map_find_value(eFireBall, "Damage");
Special = ds_map_find_value(eFireBall, "Special");
SpecialVar = ds_map_find_value(eFireBall, "SpecialVar");
sprite_index = ds_map_find_value(eFireBall, "Sprite");

targetEnemy = -1;
speed = 10;
GlobalPause = true;
parent_id = -1;		// нужно, чтобы enemy не стрелял сам в себя
