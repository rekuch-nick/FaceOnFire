

event_inherited();


moveType = irandom_range(0,1) == 0 ? "vert" : "hor";

moveSpeed = 2;
grav = 0;

if(moveType == "vert"){
	yDir = irandom_range(0,1)==0 ? 1 : -1;
	yChangeOnBump = true;
} else {
	xDir = irandom_range(0,1)==0 ? 1 : -1;
	xChangeOnBump = true;
}

thinkCDMax = 300; ///

usePlatform = false;
canLoop = false;


multiTap = 70;
shotType = "drip";
shotCDMax = 120;
shotWiggle = 25;


