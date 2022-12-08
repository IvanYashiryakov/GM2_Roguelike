function scr_generateItemsOnField() {
	// scr_generateItemsOnField();
	randomize();
	var cntItem = random(5) div 1;
	for (var i = 0; i < cntItem; i++) {
	    scr_setItemPosition(-1, -1, instance_create(0, 0, obj_rndSpell), CELLS_FROM_HERO);
	}




}
