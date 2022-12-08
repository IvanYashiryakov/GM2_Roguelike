/// @description  PlayerMove = true IF enemy.moveEnd

with (obj_parentEnemy) {
    if (!moveEnd) { 
        other.alarm[1] = 2;
        return false;
    }
}
if (!Hero.moveEnd) {
    alarm[1] = 2;
    return false;
}
PlayerMove = true;


