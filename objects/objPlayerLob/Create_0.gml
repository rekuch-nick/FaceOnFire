

xSpeed = player.shotsUseThisDir * 5;
if(player.shotsUseThisDir == 0){ xSpeed = player.xDir * 5; }
clamp(xSpeed, -8, 8);

ySpeed = -7;
grav = .7;

remove = false;


bounces = 1; // irandom_range(0, 1);
passWallTime = 0;
yFirstSpeed = -9999;

