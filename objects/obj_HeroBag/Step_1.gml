if (!GlobalPause)
    if (PlayerMove)
        if (mouse_check_button_pressed(mb_left)) {
            if (scr_isMouseOnBag()) {
                pressedSlot = (mouse_x - x) div dSlots + ((mouse_y - y) div dSlots)*4;
                scr_unselectBag();
                if (slotCnt[pressedSlot] != 0) {
                    BagIsActive = true;
                    var xx = x + 37 + (pressedSlot mod 4)*dSlots;
                    var yy = y + 37 + (pressedSlot div 4)*dSlots;
                    instance_create(xx, yy, obj_spellSelect);
                    instance_create(0, 0, obj_cancel);
                    instance_create(0, 0, obj_trash);
                    instance_create(0, 0, obj_itemInfo);
                }
            } else if (BagIsActive) {
                mStartX = mouse_x;
                mStartY = mouse_y;
            }
        } else if (mouse_check_button_released(mb_left)) {
            if (BagIsActive) {
                mEndX = mouse_x;
                mEndY = mouse_y;
                if (scr_switchItem(slot[pressedSlot], scr_getCellX(mStartX), scr_getCellY(mStartY))) {
                    slotCnt[pressedSlot] -= 1;
                    if (slotCnt[pressedSlot] <= 0) { 
                        slot[pressedSlot] = -1;
                        slotCnt[pressedSlot] = 0;
                        obj_spellSelect.destroyWithEffect = true;
                    }
                    if (scr_checkItem())
                        PlayerMove = false;
                    scr_unselectBag();
                }
                mStartX = -1;
                mStartY = -1;
            }
        }
        
// Copy
/*
if (!GlobalPause)
    if (PlayerMove)
        if (mouse_check_button_pressed(mb_left)) {
            if (scr_isMouseOnBag()) {
                pressedSlot = (mouse_x - x) div dSlots + ((mouse_y - y) div dSlots)*4;
                if (instance_number(obj_spellSelect) > 0) {
                    with(obj_spellSelect) { instance_destroy(); }
                    with(obj_cancel) { instance_destroy(); }
                    with(obj_trash) { instance_destroy(); }
                }
                if (slotCnt[pressedSlot] != 0) {
                    BagIsActive = true;
                    var xx = x + 37 + (pressedSlot mod 4)*dSlots;
                    var yy = y + 37 + (pressedSlot div 4)*dSlots;
                    instance_create(xx, yy, obj_spellSelect);
                    instance_create(0, 0, obj_cancel);
                    instance_create(0, 0, obj_trash);
                }
            } else if (BagIsActive) {
                var mCellX = scr_getCellX(mouse_x);
                var mCellY = scr_getCellY(mouse_y);
                if (scr_switchItem(slot[pressedSlot], mCellX, mCellY)) {
                    slotCnt[pressedSlot] -= 1;
                    if (slotCnt[pressedSlot] <= 0) { 
                        slot[pressedSlot] = -1;
                        slotCnt[pressedSlot] = 0;
                        obj_spellSelect.destroyWithEffect = true;
                    }
                    if (scr_checkItem())
                        PlayerMove = false;
                    cancelPressed = true;
                }
                if (cancelPressed) {
                    BagIsActive = false;
                    cancelPressed = false;
                    if (instance_number(obj_spellSelect) > 0) {
                        with(obj_spellSelect) { instance_destroy(); }
                        with(obj_cancel) { instance_destroy(); }
                        with(obj_trash) { instance_destroy(); }
                    }
                }
            }
        }

/* */
/*  */
