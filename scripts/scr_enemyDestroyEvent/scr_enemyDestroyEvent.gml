function scr_enemyDestroyEvent() {
	// scr_enemyDestroyEvent();
	if (Health <= 0) {
	    var obj = instance_create(x, y, obj_enemyDieExp);
	    obj.expToHero = "+" + string(charExpForKill) + " xp";
	}



}
