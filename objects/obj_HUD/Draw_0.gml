draw_self();

expLen = Hero.ExpForHUD / Hero.ExpForNextLevelHUD * 200;
draw_set_colour(c_gray);
draw_line_width(80, 890, 280, 890, 7);
draw_set_colour(c_green);
draw_line_width(80, 890, expLen + 80, 890, 7);
draw_set_colour(c_black);
txt = string(Hero.Exp) + " / " + string(Hero.ExpForNextLevel);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text(50, 885, string_hash_to_newline(Hero.Level));
draw_text(175, 885, string_hash_to_newline(txt));
draw_set_halign(fa_left);
draw_set_valign(fa_top);

healthLen = Hero.Health / Hero.HealthMax * 200;
if (healthLen < 0) healthLen = 0;
draw_set_colour(c_gray);
draw_line_width(80, 950, 280, 950, 7);
draw_set_colour(c_red);
draw_line_width(80, 950, healthLen + 80, 950, 7);
draw_set_colour(c_black);

txt = string(Hero.Health) + " / " + string(Hero.HealthMax);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text(175, 945, string_hash_to_newline(txt));
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(175, 1000, string_hash_to_newline(PlayerMove));
if (instance_exists(obj_gameControl))
    draw_text(175, 1060, string_hash_to_newline(obj_gameControl.alarm[1]));
/* мана
draw_set_colour(c_gray);
draw_line_width(80, 970, 280, 970, 7);
draw_set_colour(c_blue);
draw_line_width(80, 970, 200, 970, 7);
draw_set_colour(c_black);
*/



/* */
/*  */
