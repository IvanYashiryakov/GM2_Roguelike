depth = DEPTH_ITEM;
cell_x = -1;
cell_y = -1;
type = gameObjects.Item;
randomize();
typeItem = (random(heroItems_len) div 1) + 100;
switch(typeItem) {
    case heroItems.HPPotion: sprite_index = spr_item_HPPotion; break;
    case heroItems.FireBall: sprite_index = spr_spell_FireBall_item; break;
    case heroItems.IceBolt: sprite_index = spr_spell_IceBolt_item; break;
    case heroItems.IceStorm: sprite_index = spr_spell_IceStorm_item; break;
    case heroItems.FireStorm: sprite_index = spr_spell_FireStorm_item; break;
    case heroItems.Teleport: sprite_index = spr_spell_Teleport_item; break;
    case heroItems.SkipTurn: sprite_index = spr_spell_SkipTurn; break;
}


