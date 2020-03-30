

xSpeed = player.shotsUseThisDir * 6;
if(player.shotsUseThisDir == 0){ xSpeed = player.xDir * 6; }
clamp(xSpeed, -8, 8);

ySpeed = 0;
grav = 1;


remove = false;

pow = 2;


passWallTime = 0;

first = true;
