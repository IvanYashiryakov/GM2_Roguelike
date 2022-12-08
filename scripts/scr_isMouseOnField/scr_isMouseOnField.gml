function scr_isMouseOnField() {
	// scr_isMouseOnField()

	if ((abs(mouse_x-FIELD_CENTERX) < FIELD_HALF_X_SIZE)
	    and (abs(mouse_y-FIELD_CENTERY) < FIELD_HALF_Y_SIZE))
	{ return true }
	else
	{ return false }



}
