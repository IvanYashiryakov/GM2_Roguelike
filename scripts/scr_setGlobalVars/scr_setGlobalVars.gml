function scr_setGlobalVars() {
	// scr_setGlobalVars();
	globalvar gameControl;
	globalvar Field;
	globalvar EmptyCell;
	globalvar Hero;
	globalvar PlayerMove;
	PlayerMove = true;
	globalvar BagIsActive;
	BagIsActive = false;
	globalvar GlobalPause;
	GlobalPause = false;

	enum gameObjects {
	    gameControl = 127,
	    Empty = 0,
	    Wall = 1,
	    Hero = 2,
	    Enemy = 3,
	    Exit = 4,
	    Item = 5
	}
	enum attackType {
	    melee = 0,
	    shoot = 1
	}
	scr_initPerks();
	scr_initSpells();

	enum heroItems {
	    HPPotion = 100,
	    FireBall = 101,
	    IceBolt = 102,
	    IceStorm = 103,
	    FireStorm = 104,
	    Teleport = 105,
	    SkipTurn = 106
	}
	globalvar heroItems_len;
	heroItems_len = 7;



}
