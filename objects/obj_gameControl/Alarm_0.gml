/// @description  Reset Field (Next dungeon)
/// @param Next dungeon
PlayerMove = true;
if (Hero.Health < Hero.HealthMax)
	Hero.Health++;
do {
    scr_resetField();
    eCells = scr_generateLevel();
} until (scr_checkLevel(eCells));

scr_createBorderWalls();
scr_wallsGetTiles();
scr_generateEnemyOnField();
scr_generateItemsOnField();


