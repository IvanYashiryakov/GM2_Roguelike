function scr_setCellObj(argument0, argument1, argument2) {
	// scr_setCellObj(cell_x, cell_y, obj)
	ds_map_replace(Field[argument0, argument1], "contentType", argument2.type);
	ds_map_replace(Field[argument0, argument1], "content", argument2);
	ds_map_replace(Field[argument0, argument1], "solid", argument2.isSolid);




}
