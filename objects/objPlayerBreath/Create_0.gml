

xSpeed = player.shotsUseThisDir * 8;
if(player.shotsUseThisDir == 0){ xSpeed = player.xDir * 8; }
clamp(xSpeed, -8, 8);

ySpeed = 0;

remove = false;

pow = 2;
time = 20;
if(player.skillBreath2){ time += 10; }
if(player.skillLongBreath){ time += 60; xSpeed *= 2; }