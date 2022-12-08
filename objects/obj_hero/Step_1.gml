if (!GlobalPause) {
    if (moveEnd)
        if (!BagIsActive) {
            if (PlayerMove)
                if (mouse_check_button_pressed(mb_left)) {
                    pressed = true;
                    alarm[0] = 60;
                    mStartX = mouse_x;
                    mStartY = mouse_y;
                }
            if (pressed)
                if (mouse_check_button_released(mb_left)) {
                    pressed = false;
                    mEndX = mouse_x;
                    mEndY = mouse_y;
                    if (mStartY < 880 or mEndY < 880)
                        if (scr_heroAction())
                            if (scr_checkItem())
                                PlayerMove = false;
                }
        } else { pressed = false; }
}

