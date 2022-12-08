draw_self();
draw_set_font(font0);
draw_set_colour(c_gray);
draw_rectangle(x+22, y+16, x + 45, y + 44, false);
draw_rectangle(x-45, y+16, x - 22, y + 44, false);
draw_set_colour(c_black);
draw_text(x+25, y+10, string_hash_to_newline(Health));
draw_text(x-42, y+10, string_hash_to_newline(Damage));
if (charFrozen)
    draw_sprite(spr_frozenEnemy, 0, x, y);

