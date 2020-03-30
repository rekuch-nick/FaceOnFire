event_inherited();

do { 
	sx = irandom_range(-6, 6);
	sy = irandom_range(-6, 6);
} until (abs(sy) > 0 || abs(sx) > 0);

timeLeft = 60;
fade = .06;

var size = random_range(.4, 1);
image_xscale = size;
image_yscale = size;