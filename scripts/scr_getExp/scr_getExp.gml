function scr_getExp(argument0) {
	// scr_getExp(exp);

	Hero.Exp += argument0;
	Hero.ExpForHUD += argument0;
	if (Hero.Exp >= Hero.ExpForNextLevel) {
	    Hero.Level += 1;
	    Hero.ExpForHUD -= Hero.ExpForNextLevelHUD;
	    var tmp = scr_getExpForNextLevel();
	    Hero.ExpForNextLevelHUD = tmp - Hero.ExpForNextLevel;
	    Hero.ExpForNextLevel = tmp;
	    scr_newLevel();
	    //Hero.ExpForNextLevelHUD = Hero.ExpForNextLevel - Hero.ExpForNextLevelHUD;
	}



}
