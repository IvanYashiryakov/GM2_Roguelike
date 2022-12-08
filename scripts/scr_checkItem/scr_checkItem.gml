function scr_checkItem() {
	// scr_checkItem();

	var item = ds_map_find_value(Field[Hero.cell_x, Hero.cell_y], "item");
	switch (item.type) {
	    case gameObjects.Exit: obj_gameControl.alarm[0] = 60; return false;
	    case gameObjects.Empty: return true;
	    default: break;
	}
	with (item) {
	    if (scr_putItemInBag(typeItem)) {
	        ds_map_replace(Field[Hero.cell_x, Hero.cell_y], "item", EmptyCell);
	        ds_map_replace(Field[Hero.cell_x, Hero.cell_y], "itemType", gameObjects.Empty);
	        alarm[0] = 5;
	    }
	}
	return true;



}
