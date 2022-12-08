x = 100;
y = 100;
type = gameObjects.gameControl;
scr_setGlobalVars();
scr_createField();

//ItemsArray[0] = -1;
WallsTileArray[0] = -1;

Hero = instance_create(0, 0, obj_hero);
scr_setCellPosition(-1, -1, Hero);

eCells = scr_generateLevel();
while (!scr_checkLevel(eCells)) {
    scr_resetField();
    eCells = scr_generateLevel();
}
scr_createBorderWalls();
scr_wallsGetTiles();
scr_generateEnemyOnField();
scr_generateItemsOnField();
eCells = 0;


