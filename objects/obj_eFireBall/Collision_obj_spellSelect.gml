if (parent_id != other.id) {
	GlobalPause = false;
	if (instance_exists(other.id)) {
		scr_enemyTakeDamage(Damage, other.id, false);
		scr_applySpecial(other.id, Special);
	}

	instance_destroy();
}
