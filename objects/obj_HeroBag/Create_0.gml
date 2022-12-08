event_inherited();

x = 325;
y = 868;
bagCellHalfSize = 70/2;
isolationLineSize = 5;
itemCellsCount = 8;
// расстояние между item в инвентаре
dSlots = bagCellHalfSize*2 + isolationLineSize;
pressedSlot = 0;

mStartX = -1;
mStartY = -1;
mEndX = -1;
mEndY = -1;

slot[0] = -1;
slot[1] = -1;
slot[2] = -1;
slot[3] = -1;
slot[4] = -1;
slot[5] = -1;
slot[6] = -1;
slot[7] = -1;

slotCnt[0] = 0;
slotCnt[1] = 0;
slotCnt[2] = 0;
slotCnt[3] = 0;
slotCnt[4] = 0;
slotCnt[5] = 0;
slotCnt[6] = 0;
slotCnt[7] = 0;

activeSlots = 4;

slot[0] = heroItems.FireBall;
slotCnt[0] = 1;
slot[1] = heroItems.SkipTurn;
slotCnt[1] = 1;
slot[2] = heroItems.FireStorm;
slotCnt[2] = 1;
slot[3] = heroItems.Teleport;
slotCnt[3] = 1;
slot[4] = heroItems.IceBolt;
slotCnt[4] = 1;
slot[5] = heroItems.HPPotion;
slotCnt[5] = 1;


