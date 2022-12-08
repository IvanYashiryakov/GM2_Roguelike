if (scr_isMouseOnObj(self)) {
    if (mouse_check_button_pressed(mb_left)) {
        pressed = true;
    } else if (mouse_check_button_released(mb_left))
            if (pressed)
                with (obj_HeroBag) {
                    slotCnt[pressedSlot] -= 1;
                    if (slotCnt[pressedSlot] <= 0) { 
                        slot[pressedSlot] = -1;
                        slotCnt[pressedSlot] = 0;
                    }
                    scr_checkItem();
                    scr_unselectBag();
                }
}

