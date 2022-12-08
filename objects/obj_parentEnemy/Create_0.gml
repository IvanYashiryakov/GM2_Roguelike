image_speed=0;
image_index=0;

depth = 0;
alpha = 1;

// spr - текущий спрайт объекта
spr=sprite_index;
spr_width=sprite_get_width(spr);    //ширина текущего спрайта
spr_height=sprite_get_height(spr);  //высота текущего спрайта

isSolid = true;
moveEnd = true;

type = gameObjects.Enemy;
attack_type = attackType.melee;
cell_x = -1;
cell_y = -1;
// 0 - up; 1 - right; 2 - down; 3 - left; -1 - no move
moveDirection = -1;


