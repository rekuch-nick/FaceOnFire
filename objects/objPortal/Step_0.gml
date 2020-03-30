

event_inherited();

image_angle += random_range(-5, 5);

var gro = image_xscale;

gro += random_range(-.2, .2);
if(existedTime > 30 * 30) { 
	gro += random_range(-.05, .2);
	//x += x > player.x ? -1 : 1;
	//y += y > player.y ? -1 : 1;
}


if(gro < .8){ gro = .8; }
if(existedTime < 30 * 30) { if(gro > 1.6){ gro = 1.6; } }


image_xscale = gro;
image_yscale = gro;



existedTime ++;