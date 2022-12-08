function scr_putItemInBag(argument0) {
	// scr_putItemInBag(heroItems.*item*);

	for (var i = 0; i < 8; i++) {
	    if (obj_HeroBag.slot[i] == -1) {
	        obj_HeroBag.slot[i] = argument0;
	        obj_HeroBag.slotCnt[i] = 1;
	        return true;
	    }
	}
	return false;



}
