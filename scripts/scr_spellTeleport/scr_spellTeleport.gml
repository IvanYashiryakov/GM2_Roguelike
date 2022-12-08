function scr_spellTeleport(argument0, argument1) {
	// scr_spellTeleport(cell_x, cell_y);

	if (!scr_cellFree(argument0, argument1))
	    return false;

	scr_setCellPosition(argument0, argument1, Hero);
	EnemyMove = true;
	return true;



}
