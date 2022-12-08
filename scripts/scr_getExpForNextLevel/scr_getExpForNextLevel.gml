function scr_getExpForNextLevel() {
	// scr_getExpForNextLevel();

	return Hero.ExpForNextLevel + (Hero.DeltaExp * power(Hero.powerExp, Hero.Level - 1)) div 1;



}
