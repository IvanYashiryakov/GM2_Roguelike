y -= 0.8;
if (alpha > 0) {
    alpha -= 0.02;
    alarm[0] = 1;
} else {
    instance_destroy();
}

