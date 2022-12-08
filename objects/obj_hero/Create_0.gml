event_inherited();

depth = DEPTH_TILE - 1;
type = gameObjects.Hero;
isSolid = false;
cell_x = -1;
cell_y = -1;

mStartX = -1;
mStartY = -1;
mEndX = -1;
mEndY = -1;
moveEnd = true;

// 0 - up; 1 - right; 2 - down; 3 - left; -1 - no move
//* 0 - right; 1 - up; 2 - left; 3 - down; -1 - mo move
moveDirection = -1;
Health = 3;
HealthMax = 4;
Damage = 1;
charHited = false;

Exp = 0;
ExpForHUD = 0;
DeltaExp = 1050;
powerExp = 1.57;
ExpForNextLevel = DeltaExp;
ExpForNextLevelHUD = ExpForNextLevel;
Level = 1;

instance_create(0, 0, obj_HeroBag);
instance_create(0, 0, obj_HUD);

