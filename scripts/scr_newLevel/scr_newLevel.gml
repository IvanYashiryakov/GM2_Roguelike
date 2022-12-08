function scr_newLevel() {
	// scr_newLevel();

	GlobalPause = true;
	instance_create(320, 568, obj_lvlUpPane);
	Hero.HealthMax += 1;
	Hero.Health = Hero.HealthMax;




}
