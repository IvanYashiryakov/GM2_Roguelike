draw_self();
// Hero health //
draw_set_colour(c_gray);
draw_rectangle(x+22, y+16, x + 45, y + 44, false);
draw_set_colour(c_black);
draw_text(x+25, y+10, string_hash_to_newline(Health));
// Hero health //

// Hero damage //
draw_set_colour(c_gray);
draw_rectangle(x-45, y+16, x - 22, y + 44, false);
draw_set_colour(c_black);
draw_text(x-42, y+10, string_hash_to_newline(Damage));
// Hero damage //

//draw_text(x, y, cell_y);
//draw_text(x-30, y+40, scr_getCellX(mouse_x));
//draw_text(x, y+40, scr_getCellY(mouse_y));

//draw_text(40, 1020, ExpForHUD);
//draw_text(40, 1050, ExpForNextLevelHUD);

