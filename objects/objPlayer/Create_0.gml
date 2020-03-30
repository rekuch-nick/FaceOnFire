loadGame();

icd = 3;
//stage = 1;
//stage = 11; ///////
//stageMax = 50;

xSpeed = 0;
ySpeed = 0;
xPush = 0;
pushDir = 1;
insistJump = 0;

shotDir = 0;
shotsUseThisDir = 0;

downReleased = false;
shootReleased = false;

coyoteTime = 0;
coyoteTimeMax = 4;

jumps = 0;
jumpsMax = 1;
jumpReleased = true;
jumpPower = 14;

moveSpeed = 5;
xDir = 1;
runTime = 0;
leftTapTime = 0;
rightTapTime = 0;
running = false;
dashMax = 4;


duckTime = 0;

fireballTime = 0;
fireballTimeMax = 25;
fireballCD = 0;
fireballCDMax = 35;
fireballDir = 1;
fireballSpeed = 14;


hurt = false;
healCDMax = 30 * 30;
healCD = 0;
hurtTime = 0;
hurtTimeMax = 60;

breathCD = 4;
breathCDMax = 4;

tossCD = 20;
tossCDMax = 20;

candles = 0; //
//savedCandles = 0;
//savedCandles = 100000; ///////////////
rank = 1;

xPauseCursor = 0;
yPauseCursor = 0;

for(var a=5; a>=0; a--){
	for(var b=2; b>=0; b--){
		skills[a, b] = false;
		//skills[a, b] = true; //
	}
}




wallSlideTime = 0;

rapidShot = 0;

meteoAttack = false;
bopBounce = false;
bounceMeteo = false;

shield = noone;

batCDMax = 30 * 10;
batCD = 30;

superJumpCharge = 0;
superJumpTime = 0;

flyTime = 0;
flying = false;
flySpeed = -3;
flyPower = 30;

lightningCD = 0;

trailCD = 20;
trailCDMax = 20;

onPlat = 0;

blueKeys = 0;

onSpike = noone;
xSpikeCheck = -1;
ySpikeCheck = -1;

fireTrailCD = 32;

character = 0;
basicShot = objPlayerToss;
hat = instance_create_depth(x, y, -2, objHat);

growHat = noone;
phaseTime = 0;

headBreak = false;

specCD = 90;
usePlatform = true;

startRank = 1;
playerResetSkills();


touchingStickyBlock = false;
touchingLadder = false;
onLadder = false;
climbSpeed = 0;

sparkOut = false;

xDPad = 0;
yDPad = 0;
inFan = 0;





