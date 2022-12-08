event_inherited();

moveDone = false;
moveRange = 1;
randomize();
Level = round(0.75*Hero.Level + random(0.25)*Hero.Level);
randomize();
Health = round(Level + random(Level/2) - random(Level/2));
randomize();
Damage = 1 + round(random(Level*0.64));
randomize();
charExpForKill = 200 + Level*70 + 15*Health + 20*Damage + round(random(Level*30));
charHited = false;
charFrozen = false;
charStepsToSkip = 1;
charCurrentSkipStep = 0;


sprUp = spr_enemy_up;
sprRight = spr_enemy_right;
sprDown = spr_enemy_down;
sprLeft = spr_enemy_left;


