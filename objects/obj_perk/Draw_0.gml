draw_set_alpha(obj_lvlUpPane.alpha);
//draw_sprite(sprite_index, 0, x, y);

draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, selectedColour, obj_lvlUpPane.alpha);
if (selected) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text_ext(obj_lvlUpPane.x, obj_lvlUpPane.y + 54, string_hash_to_newline(perkName), 30, 260);
    draw_text_ext(obj_lvlUpPane.x, obj_lvlUpPane.y + 145, string_hash_to_newline(perkText), 30, 260);
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
draw_set_alpha(1);


