draw_self();
for (var i = 0; i < itemCellsCount; i++) {
    if (slot[i] != -1) {
        switch(slot[i]) {
            case heroItems.IceBolt: spr = spr_spell_IceBolt_item; break;
            case heroItems.FireBall: spr = spr_spell_FireBall_item; break;
            case heroItems.IceStorm: spr = spr_spell_IceStorm_item; break;
            case heroItems.FireStorm: spr = spr_spell_FireStorm_item; break;
            case heroItems.Teleport: spr = spr_spell_Teleport_item; break;
            case heroItems.HPPotion: spr = spr_item_HPPotion; break;
            case heroItems.SkipTurn: spr = spr_spell_SkipTurn; break;
            default: continue;
        }
        var xx = x + bagCellHalfSize + isolationLineSize + (i mod 4)*dSlots;
        var yy = y + bagCellHalfSize + isolationLineSize + (i div 4)*dSlots;
        draw_sprite(spr, 0, xx, yy);
    }
}


