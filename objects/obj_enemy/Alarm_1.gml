/// @description Moving
if ((x != FIRST_CELL_X + CELL_SIZE/2 + cell_x*CELL_SIZE)
    or (y != FIRST_CELL_Y + CELL_SIZE/2 + cell_y*CELL_SIZE)) {
    switch (moveDirection) {
        case 0: x += 10; break;
        case 1: y -= 10; break;
        case 2: x -= 10; break;
        case 3: y += 10; break;
    }
    alarm[1] = 1;
} else {
    moveEnd = true;
}

