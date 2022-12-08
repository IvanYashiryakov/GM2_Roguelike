
GlobalPause = false;
if (instance_exists(other.id)) {
    scr_enemyTakeDamage(Damage, other.id, false);
	if (instance_exists(other.id))
	    scr_applySpecial(other.id, Special);
}

instance_destroy();

