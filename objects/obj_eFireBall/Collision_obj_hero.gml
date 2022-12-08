GlobalPause = false;
if (instance_exists(other.id)) {
    scr_hitHero(self.id);
    scr_applySpecial(other.id, Special);
}

instance_destroy();
