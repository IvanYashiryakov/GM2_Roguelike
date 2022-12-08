function scr_generateEnemyOnField() {
	// scr_generateEnemyOnField();
	var minCnt;
	var maxCnt
	if (Hero.Level < 5) {
	    minCnt = 2; maxCnt = 3;
	} else if (Hero.Level < 10) {
	    minCnt = 3; maxCnt = 5;
	} else {
	    minCnt = 3; maxCnt = 7;
	}
	randomize();
	var cntEnemy = minCnt + (random(maxCnt - minCnt + 1) div 1);
	var obj;
	for (var i = 0; i < cntEnemy; i++) {
	    randomize();
	    switch (irandom(2)) {
	        case 0: obj = obj_enemy; break;
	        case 1: obj = obj_enemy02; break;
	        case 2: obj = obj_enemy03; break;
	    }
	    EnemyArray[i] = instance_create(0, 0, obj);
	    var target = scr_generateRndCell(Hero, CELLS_FROM_HERO);
	    scr_setCellPosition(target[0], target[1], EnemyArray[i]);
	}




}
