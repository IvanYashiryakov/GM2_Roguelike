function scr_unselectBag() {
	// scr_unselectBag();
	if (instance_number(obj_spellSelect) > 0) {
	    BagIsActive = false;
	    with(obj_spellSelect) { instance_destroy(); }
	    with(obj_cancel) { instance_destroy(); }
	    with(obj_trash) { instance_destroy(); }
	    with(obj_itemInfo) { instance_destroy(); }
	}



}
