function scr_perkFBDamagePlus() {
	// scr_perkFBDamagePlus();

	var val = ds_map_find_value(spFireBall, "Damage") + 2;
	ds_map_replace(spFireBall, "Damage", val);
	//txt = "Deals " + string(val) + " damage to enemy.";
	ds_map_replace(spFireBall, "Info", "Deals " + string(val) + " damage to enemy.");




}
