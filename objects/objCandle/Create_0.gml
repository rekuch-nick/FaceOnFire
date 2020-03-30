event_inherited();

grav = 1;
ySpeed = irandom_range(-14, -8);

do {
	xSpeed = irandom_range(-12, 12);
} until (abs(xSpeed) > 6);

bounces = 3;

image_angle += irandom_range(0, 259);

sound = sfxCoin;