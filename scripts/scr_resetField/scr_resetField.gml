function scr_resetField() {
	// scr_resetField();
	// "pathStep" is requires for enemy's Algoritm Li 
	for (var i = 0; i < FIELD_WIDTH; i++) {
	    for (var i2 = 0; i2 < FIELD_HEIGHT; i2++) {
	        ds_map_replace(Field[i, i2], "solid", false);
	        ds_map_replace(Field[i, i2], "contentType", gameObjects.Empty);
	        ds_map_replace(Field[i, i2], "content", EmptyCell);
	        ds_map_replace(Field[i, i2], "item", EmptyCell);
	        ds_map_replace(Field[i, i2], "itemType", gameObjects.Empty);
	        ds_map_replace(Field[i, i2], "type", gameObjects.Empty);
	        ds_map_replace(Field[i, i2], "pathStep", 0);
	    }
	}

	if (instance_exists(obj_hero)) {
	    ds_map_replace(Field[obj_hero.cell_x, obj_hero.cell_y], "contentType", gameObjects.Hero);
	}

	tile_layer_delete(DEPTH_TILE);
	with (obj_wall) { instance_destroy(); }
	with (obj_parentEnemy) { instance_destroy(); }
	with (obj_rndSpell) { instance_destroy(); }
	with (obj_exit) { instance_destroy(); }




}
