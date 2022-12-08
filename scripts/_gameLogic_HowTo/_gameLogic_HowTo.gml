function _gameLogic_HowTo() {
	/* About game logic

	////// Player and Enemy turns //////
	one global var: PlayerMove
	PlayerMove becomes True when:
	    1) all enemys finished their moves
	    2) all spells are done
	    3) and all animations are finished
    
	one local var for each enemy: moveEnd
	moveEnd become True when:
	    1) current enemy finished his move
	    2) enemy's animation finished
	    3) enemy's spell is done
	If PlayerMove == True { Player is able to make a move }
	If PlayerMove == False { Enemys are able to make a move }



/* end _gameLogic_HowTo */
}
