if (scr_isMouseOnObj(self) and mouse_check_button_pressed(mb_left)) {
    //obj_lvlUpPane.perks[0].selectedColour = c_gray;
    for (var i = 0; i < 3; i++) {
        if (obj_lvlUpPane.perks[i].selected) {
            switch(obj_lvlUpPane.perks[i].type) {
                case gamePerks.HealthPlus: scr_perkHPPlus(); break;
                case gamePerks.DamagePlus: scr_perkDamagePlus(); break;
                case gamePerks.FreezeTimePlus: scr_perkFreezeTimePlus(); break;
                case gamePerks.FireStormDamagePlus: scr_perkFSDamagePlus(); break;
                case gamePerks.FireBallDamagePlus: scr_perkFBDamagePlus(); break;
                default: break;
            }
            with(obj_lvlUpPane.perks[0]) { instance_destroy(); }
            with(obj_lvlUpPane.perks[1]) { instance_destroy(); }
            with(obj_lvlUpPane.perks[2]) { instance_destroy(); }
            with(obj_lvlUpPane) { instance_destroy(); }
            GlobalPause = false;
            instance_destroy(); 
            return true;
        }
    }
}

