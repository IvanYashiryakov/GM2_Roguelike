if (!GlobalPause) {
    if (!PlayerMove)
        if (alarm[1] == -1) {
            with (obj_parentEnemy) {
                if (!charHited) {
                    if (moveEnd) {
                        moveEnd = false;
                        scr_enemyAction(self);
                    }
                } else {
                    if (charCurrentSkipStep < charStepsToSkip) {
                        charCurrentSkipStep++;
                    } else {
                        charHited = false;
                        charCurrentSkipStep = 0;
                        charStepsToSkip = 1;
                        charFrozen = false;
                    }
                }
            }
            alarm[1] = 2;
        }
}

