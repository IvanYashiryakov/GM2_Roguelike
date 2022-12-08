function scr_set_room_size(argument0) {
	//scr_set_room_size(room);

	var next_room = argument0;
	var xViewStart = (display_get_width() - global.ratio * X_SIZE_DEF) / 2;
	var yViewStart = 0;
	var xViewEnd = xViewStart + global.ratio * X_SIZE_DEF;
	var yViewEnd = display_get_height();
	room_set_view(next_room,0,true,0,0,display_get_width(),display_get_height(),0,0,display_get_width(),display_get_height(),0,0,-1,-1,-1);

	/*
	room_set_view(next_room,
	                0,
	                true,
	                xViewStart,
	                yViewStart,
	                xViewEnd,
	                yViewEnd,
	                xViewStart,
	                yViewStart,
	                xViewEnd,
	                yViewEnd,
	                0,
	                0,
	                -1,
	                -1,
	                -1);
	*/
	//room_set_view(next_room,0,true,0,0,480,320,0,0,480,320,0,0,-1,-1,-1);
	//room_set_view(room_menu,view_current,true,0,0,800,480,0,0,800,480,0,0,-1,-1,-1);




}
