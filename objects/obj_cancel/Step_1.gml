if (scr_isMouseOnObj(self)) {
    if (mouse_check_button_pressed(mb_left)) {
        pressed = true;
    } else if (mouse_check_button_released(mb_left))
            if (pressed)
                scr_unselectBag();
}

