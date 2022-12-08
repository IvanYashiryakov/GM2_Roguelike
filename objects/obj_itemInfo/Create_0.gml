
x = 170;
y = 960;
txt = "NONE";
spName = "NONE";
sSpell = obj_HeroBag.slot[obj_HeroBag.pressedSlot];
switch(sSpell) {
    case heroItems.IceBolt: txt = ds_map_find_value(spIceBolt, "Info"); spName = "Ice Bolt"; break;
    case heroItems.FireBall: txt = ds_map_find_value(spFireBall, "Info"); spName = "Fire Ball"; break;
    case heroItems.IceStorm: txt = ds_map_find_value(spIceStorm, "Info"); spName = "Ice Storm"; break;
    case heroItems.FireStorm: txt = ds_map_find_value(spFireStorm, "Info"); spName = "Fire Storm"; break;
    case heroItems.Teleport: txt = ds_map_find_value(spTeleport, "Info"); spName = "Teleport"; break;
    case heroItems.HPPotion: txt = ds_map_find_value(spHPPotion, "Info"); spName = "Health potion"; break;
    case heroItems.SkipTurn: txt = ds_map_find_value(spSkipTurn, "Info"); spName = "Skip turn"; break;
    default: break;
}


