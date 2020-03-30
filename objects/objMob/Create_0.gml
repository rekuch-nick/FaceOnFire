
testOut = "";
moveSpeed = 2;
xSpeed = 0;
ySpeed = 0;
grav = 1;
xDir = irandom_range(0, 1) == 1 ? 1 : -1;
yDir = 1;
usePlatform = true;
faceDir = true;
yChangeOnBump = false;
xChangeOnBump = false;

canLoop = true;

flySpeed = 0;

thinkCD = 0;
thinkCDMax = 60;

randomTurnChance = 0;
wallTurnChance = 100;
hasHitWall = false;

jumpChance = 50;
jumpPower = 10;
preventAirJump = true;
upLeap = 1;
downLeap = 1;


headY = -14;
footY = 14;
bodyX = 14;

yShove = 6;
xShove = 6;

hp = 1;
mhp = 1;
incomingDamage = 0;
remove = false;

candleRange = 1;
rotateOnThink = false;

burnBlocks = false;


keyKeeper = false;
bumpPlayer = true;
passWall = false;
nullShot = true;
moveType = "";
hunt = 0;
thinkOnWall = false;
shootAcrossX = false;

tileBreakFromBG = false;
tileBreakCD = 30;
tileBreakCDMax = 90;

flashTime = 0;
flashTimeMax = 15;
canFlash = true;

shotCDMax = 90;
shotCD = shotCDMax;
shotType = "";
doubleTap = 0;
multiTap = 0;
shotNum = 1;



hitByTrail = 0;
immuneTime = 0;
immuneTimeMax = 6;
shotWiggle = 30;
xTempScale = 1;
yTempScale = 1;

makeObject = noone;
followObject = noone;
lookAtPlayer = false;

xPath = ds_list_create();
yPath = ds_list_create();
pathRange = 10;
pathSteps = 0;
pathStepsMax = 10;

makeSafeOnDeath = false;

dropChance = 0;
dropHunt = false;

sizeMod = 1;
deathSpawn = noone;
deathSpawnMin = 2;
deathSpawnMax = 4;

//glueDrop vars
hugDir = 2;
lastHugDir = 0;
skirtBounds = false;

stunTime = 0;

woundsThisSecond = 0;
woundPerSecondMax = 100;