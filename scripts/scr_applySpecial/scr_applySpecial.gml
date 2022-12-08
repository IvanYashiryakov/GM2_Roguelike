function scr_applySpecial(argument0, argument1) {
	// scr_applySpecial(objEnemy, itemSpecial.*spec*);

	switch(argument1) {
	    case itemSpecial.None: return false; break;
	    case itemSpecial.FreezeEnemy:
	        argument0.charHited = true;
	        argument0.charFrozen = true;
	        argument0.charStepsToSkip = SpecialVar;
	        argument0.charCurrentSkipStep = 0;
	        break;
	    case itemSpecial.FreezeAllEnemy: break;
	}
	return true;



}
