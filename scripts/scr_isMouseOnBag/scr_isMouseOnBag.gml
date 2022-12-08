function scr_isMouseOnBag() {
	// scr_isMouseOnBag();
	var dX = mouse_x-obj_HeroBag.x + 10;
	var dY = mouse_y-obj_HeroBag.y + 10;

	if ((dX > 15 and dX < obj_HeroBag.spr_width)
	    and (dY > 15 and dY < obj_HeroBag.spr_height))
	{ return true }
	else
	{ return false }



}
