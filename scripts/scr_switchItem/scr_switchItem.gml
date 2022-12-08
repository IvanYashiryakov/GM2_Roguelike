function scr_switchItem(argument0, argument1, argument2) {
	// scr_switchItem(slot[pressedSlot], mStartX, mStartY);
	if (!scr_cellValid(argument1, argument2)) return false;

	switch(argument0) {
	    case heroItems.FireBall: return scr_spellBall(argument1, argument2, spFireBall); break;
	    case heroItems.IceBolt: return scr_spellIceBolt(argument1, argument2, spIceBolt); break;
	    case heroItems.IceStorm: return scr_spellIceStorm(argument1, argument2); break;
	    case heroItems.FireStorm: return scr_spellFireStorm(argument1, argument2); break;
	    case heroItems.Teleport: return scr_spellTeleport(argument1, argument2); break;
	    case heroItems.HPPotion: return scr_itemHPPotion(argument1, argument2); break;
	    case heroItems.SkipTurn: return scr_spellSkipTurn(argument1, argument2); break;
	    default: return false;
	}
	return true;



}
