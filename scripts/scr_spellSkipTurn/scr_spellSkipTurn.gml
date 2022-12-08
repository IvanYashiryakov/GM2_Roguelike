function scr_spellSkipTurn(argument0, argument1) {
	// scr_spellSkipTurn(cell_x, cell_y);

	if (argument0 != Hero.cell_x or argument1 != Hero.cell_y)
	    return false;

	EnemyMove = true;
	return true;



}
