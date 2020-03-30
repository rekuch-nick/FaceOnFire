

image_xscale = xDir;
if(shotsUseThisDir != 0){
	image_xscale = shotsUseThisDir;
}


var frame = imgPlayer01;

if(wallSlideTime > 0){ frame = imgPlayerWallSlide; }
if(hurt){ frame = imgPlayerHurt01; }

if(!skillTrueFlight){
	if(duckTime > 0){ frame = imgPlayerDuck; }
	if(duckTime > 0 && hurt){ frame = imgPlayerDuckHurt; }
}


if(breathCD > 0){ frame = imgPlayerShoot; }
if(breathCD > 0 && hurt){ frame = imgPlayerShootHurt; }



if(onLadder){ frame = imgPlayerClimb; }
if(onLadder && hurt){ frame = imgPlayerClimbHurt; }

if(flying){ frame = imgPlayerFly; }
if(flying && hurt){ frame = imgPlayerFlyHurt; }
if(fireballTime > 0){ frame = imgPlayerBall; }
if(meteoAttack){ frame = imgPlayerMeteo; }

sprite_index = frame;

if(hurtTime > 0){
	image_alpha = random_range(.3, 1);
} else {
	image_alpha = 1;
}


var sparkChance = 100;
if(xSpeed == 0 && ySpeed == 0){ sparkChance -= 75; }
if(hurt){ sparkChance = sparkChance / 5; }

if(irandom_range(0, 99) < sparkChance){
	var a = irandom_range(-14, 14);
	var b = irandom_range(-14, 14);
	instance_create_depth(x + a, y + b, -40, objSpark);
}



hat.x = x;
hat.y = y - 6;
if(frame == imgPlayerDuck || frame == imgPlayerDuckHurt){ hat.y += 12; }
hat.image_index = character;
hat.image_xscale = image_xscale;


