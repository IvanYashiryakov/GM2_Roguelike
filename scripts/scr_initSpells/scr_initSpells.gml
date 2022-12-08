function scr_initSpells() {
	// scr_initSpells();
	// задает начальные характеристики всех заклинаний Hero и Enemy
	enum itemSpecial {
	    None = 0,
	    FreezeEnemy = 1,
	    FreezeAllEnemy = 2,
	    AttackAllEnemy = 3,
	    Teleport = 4,
	    HPPotion = 5,
	    SkipTurn = 6
	}
	globalvar spFireBall;
	globalvar spIceBolt;
	globalvar spIceStorm;
	globalvar spFireStorm;
	globalvar spTeleport;
	globalvar spHPPotion;
	globalvar spSkipTurn;

	spFireBall = ds_map_create();
	ds_map_add(spFireBall, "Name", "FireBall");
	ds_map_add(spFireBall, "Damage", 2);
	ds_map_add(spFireBall, "Special", itemSpecial.None);
	ds_map_add(spFireBall, "Sprite", spr_spell_FireBall);
	ds_map_add(spFireBall, "Info", "Deals 2 damage to enemy.");

	spIceBolt = ds_map_create();
	ds_map_add(spIceBolt, "Name", "IceBolt");
	ds_map_add(spIceBolt, "Damage", 1);
	ds_map_add(spIceBolt, "Special", itemSpecial.FreezeEnemy);
	ds_map_add(spIceBolt, "SpecialVar", 4);     // Freeze for 4 turns
	ds_map_add(spIceBolt, "Sprite", spr_spell_IceBolt);
	ds_map_add(spIceBolt, "Info", "Freeze enemy for 4 turns and deals 1 damage.");

	spIceStorm = ds_map_create();
	ds_map_add(spIceStorm, "Name", "Ice Storm");
	ds_map_add(spIceStorm, "Special", itemSpecial.FreezeAllEnemy);
	ds_map_add(spIceStorm, "SpecialVar", 4);     // Freeze for 4 turns
	ds_map_add(spIceStorm, "Info", "Freeze all enemys for 4 turns.");

	spFireStorm = ds_map_create();
	ds_map_add(spFireStorm, "Name", "Fire Storm");
	ds_map_add(spFireStorm, "Damage", 1);
	ds_map_add(spFireStorm, "Special", itemSpecial.AttackAllEnemy);
	ds_map_add(spFireStorm, "Info", "Deals 1 damage to all enemys.");

	spTeleport = ds_map_create();
	ds_map_add(spTeleport, "Name", "Teleport");
	ds_map_add(spTeleport, "Special", itemSpecial.Teleport);
	ds_map_add(spTeleport, "Info", "Teleports Hero to a selected position.");

	spHPPotion = ds_map_create();
	ds_map_add(spHPPotion, "Name", "Health potion");
	ds_map_add(spHPPotion, "Special", itemSpecial.HPPotion);
	ds_map_add(spHPPotion, "SpecialVar", 1);
	ds_map_add(spHPPotion, "Info", "Heals Hero 1 HP.");

	spSkipTurn = ds_map_create();
	ds_map_add(spSkipTurn, "Name", "Skip turn");
	ds_map_add(spSkipTurn, "Special", itemSpecial.SkipTurn);
	ds_map_add(spSkipTurn, "SpecialVar", 1);
	ds_map_add(spSkipTurn, "Info", "Allows Hero to skip one turn.");


	// Enemy

	globalvar eFireBall;

	eFireBall = ds_map_create();
	ds_map_add(eFireBall, "Name", "FireBall");
	ds_map_add(eFireBall, "Damage", 2);
	ds_map_add(eFireBall, "Special", itemSpecial.None);
	ds_map_add(eFireBall, "Sprite", spr_eFireBall);
	ds_map_add(eFireBall, "Info", "Deals 2 damage to target.");


}
