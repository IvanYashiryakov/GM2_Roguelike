function scr_createField() {
	// scr_createField();
	// "pathStep" is requires for enemy's Algoritm Li 
	EmptyCell = instance_create(0, 0, obj_emptyCell);
	for (var i = 0; i < FIELD_WIDTH; i++) {
	    for (var i2 = 0; i2 < FIELD_HEIGHT; i2++) {
	        Field[i, i2] = ds_map_create();
	        ds_map_add(Field[i, i2], "cell_x", i);
	        ds_map_add(Field[i, i2], "cell_y", i2);
	        ds_map_add(Field[i, i2], "solid", false);
	        ds_map_add(Field[i, i2], "type", gameObjects.Empty);
	        ds_map_add(Field[i, i2], "item", EmptyCell);
	        ds_map_add(Field[i, i2], "itemType", gameObjects.Empty);
	        ds_map_add(Field[i, i2], "content", EmptyCell);
	        ds_map_add(Field[i, i2], "contentType", gameObjects.Empty);
	        ds_map_add(Field[i, i2], "pathStep", 0);
	    }
	}



}
