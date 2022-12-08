function scr_first_run_app() {
	// scr_first_run_app();
	global.isSound=true;
	device_mouse_dbclick_enable(false);
	// global.resolution
	// 0 - 640x1136
	// 1 - 720x1280
	// 2 - 768x1024
	// 3 - 540x960
	// 4 - 480x800
	// 5 - 320x480
	//global.resolution=0;

	var display_w = display_get_width();
	var display_h = display_get_height();

	global.y_ratio = display_h/Y_SIZE_DEF;
	global.x_ratio = global.y_ratio; 
	global.ratio = global.y_ratio;
	//global.x_ratio = display_w/640; 

	global.keyboardIsOn = false;    // вызвана клавиатура(true) или нет(false)
	//global.Profile = "Profile1"     // Profile1, Profile2 млм Profile3
	global.Current_Date = "";

	/*
	switch (global.resolution)
	{
	    case 0: global.x_ratio = 1920/1920; global.y_ratio = 1080/1080; break;
	    case 1: global.x_ratio = 1280/1920; global.y_ratio = 720/1080; break;
	    case 2: global.x_ratio = 1024/1920; global.y_ratio = 768/1080; break;
	    case 3: global.x_ratio = 960/1920; global.y_ratio = 540/1080; break;
	    case 4: global.x_ratio = 800/1920; global.y_ratio = 480/1080; break;
	    case 5: global.x_ratio = 480/1920; global.y_ratio = 320/1080; break;
	    default: global.y_ratio = 1; global.y_ratio = 1; break;
	}
	*/





}
