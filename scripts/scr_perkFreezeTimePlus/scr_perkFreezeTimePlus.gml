function scr_perkFreezeTimePlus() {
	// scr_perkFreezeTimePlus();
	var val;
	val = ds_map_find_value(spIceStorm, "SpecialVar") + 1;
	ds_map_replace(spIceStorm, "SpecialVar", val);
	ds_map_replace(spIceStorm, "Info", "Freeze all enemys for " + string(val) + " turns.");

	val = ds_map_find_value(spIceBolt, "SpecialVar");
	ds_map_replace(spIceBolt, "SpecialVar", val);
	ds_map_replace(spIceBolt, "Info", "Freeze enemy for " + string(val) + " turns and deals 1 damage.");




}
