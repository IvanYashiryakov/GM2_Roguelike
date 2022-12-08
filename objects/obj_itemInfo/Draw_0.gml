draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_ext(x, y-60, string_hash_to_newline(spName), 30, 230);
draw_text_ext(x, y+25, string_hash_to_newline(txt), 30, 230);

draw_set_halign(fa_left);
draw_set_valign(fa_top);


