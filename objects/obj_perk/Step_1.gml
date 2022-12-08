if (scr_isMouseOnObj(self) and mouse_check_button_pressed(mb_left)) {
    obj_lvlUpPane.perks[0].selectedColour = c_gray;
    obj_lvlUpPane.perks[0].selected = false;
    obj_lvlUpPane.perks[1].selectedColour = c_gray;
    obj_lvlUpPane.perks[1].selected = false;
    obj_lvlUpPane.perks[2].selectedColour = c_gray;
    obj_lvlUpPane.perks[2].selected = false;
    selectedColour = c_white;
    selected = true;
}

