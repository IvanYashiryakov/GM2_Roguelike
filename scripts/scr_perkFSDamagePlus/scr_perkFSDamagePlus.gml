function scr_perkFSDamagePlus() {
	// scr_perkFSDamagePlus();

	var val = ds_map_find_value(spFireStorm, "Damage") + 1;
	ds_map_replace(spFireStorm, "Damage", val);
	ds_map_replace(spFireStorm, "Info", "Deals " + string(val) + " damage to all enemys.");




}
