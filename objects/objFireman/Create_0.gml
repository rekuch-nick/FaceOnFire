

shots = 4;
if(player.stage > 30){ shots += 1; }
if(player.stage > 60){ shots += 1; }

shotCDMax = 30 * 6;
shotCD = shotCDMax;


thinkCD = 0;

xSpeed = 0;
ySpeed = 0;

moveSpeed = 5;

patternCD = 0;
pattern = 0;

childPickup = noone;
candlePosition = 0;
candleRadius = 50;
candleRadiusMin = 40;
candleRadiusMax = 80;
candleRadiusDir = 1;

stunTime = 0;