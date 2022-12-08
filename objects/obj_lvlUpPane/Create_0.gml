event_inherited();

alpha = 0;
alarm[0] = 1;

perks[0] = -1;
perks[1] = -1;
perks[2] = -1;
selectedPerk = 0;

randomize();
t[0] = random(5) div 1;
t[1] = t[0];
t[2] = t[0];
while (t[0] == t[1]) {
	randomize();
	t[1] = random(5) div 1;
}
while ((t[2] == t[1]) || (t[2] == t[0])) {
	randomize();
	t[2] = random(5) div 1;
}


for (var i = 0; i < 3; i++) {
    perks[i] = instance_create(x - 101 + i*101, y - 35, obj_perk);
	perks[i].type = t[i];
    with(perks[i]) {
        switch(other.t[i]) {
            case gamePerks.HealthPlus: sprite_index = spr_perkHP;
                perkName = "Health +1";
                perkText = "Increase health by 1 point.";
                break;
            case gamePerks.DamagePlus: sprite_index = spr_perkDamage;
                perkName = "Damage +1";
                perkText = "Increase damage by 1 point.";
                break;
            case gamePerks.FreezeTimePlus: sprite_index = spr_perkFreezeTime;
                perkName = "Freeze Time +1 turn";
                perkText = "Increase Freeze time by 1 turn.";
                break;
            case gamePerks.FireStormDamagePlus: sprite_index = spr_perkFSDamage;
                perkName = "FireStorm damage +1";
                perkText = "Increase FireStorm damage by 1 point.";
                break;
            case gamePerks.FireBallDamagePlus: sprite_index = spr_perkFBDamage;
                perkName = "FireBall damage +2"
                perkText = "Increase FireBall damage by 2 point.";;
                break;
            default: break;
        }
    }
}
perks[0].selectedColour = c_white;
perks[0].selected = true;

instance_create(x, y + 257, obj_lvlUpSelect);


