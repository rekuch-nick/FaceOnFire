
//screen border handeling
if(y > 830){ y = -20;}

fireTrailImpact = 0;

xSpikeCheck = -1;
ySpikeCheck = -1;







// apply gravity
var grav = 1;
if(!playerOnGround()){
	if(!playerCoyoteTime() && !skillTrueFlight){
		ySpeed += grav;
		if(ySpeed > 32){
			ySpeed = 32;
		} // max fall speed
	}
} else {
	bounceMeteo = false;
	if(ySpeed >= 0){
		if(player.jumps == player.jumpsMax){coyoteTime = 0;}
		if(ySpeed > 0){
			//if(meteoAttack){
			//	for(var i=0; i<64; i++){ instance_create_depth(x, y, -40, objRandomSpark); }
			//}
			ySpeed = 0;
		}
		player.jumps = player.jumpsMax;
	}
}



////
meteoAttack = false;
if( (ySpeed > 1 && skillMeteorStrike) || bounceMeteo ){ meteoAttack = true;}



//plat move
x += onPlat;
fireTrailImpact ++;
if(playerFaceCheck(xDir) || playerBumpHead() ){
	x -= onPlat;
}
onPlat = 0;


if(flying){
	ySpeed = flySpeed;
}

if(fireballTime > 0){
	ySpeed = 0;
}


// ladder speed
if(onLadder){ 
	coyoteTime = 0;
	ySpeed = climbSpeed; 
	jumps = jumpsMax;
}
climbSpeed = 0;


// ascend
for(var i=ySpeed; i<0; i++){
	
	player.y --;
	fireTrailImpact ++;
	if(playerBumpHead()){
		
		
		player.y ++;
		break;
	}
	
}
if(y < -60){ y = -60; }


//check wallSlide
if(wallSlideTime > 0 && ySpeed > 0){
	ySpeed = 3;
	jumps = jumpsMax;
	if(skillFly){ flyTime = flyPower; }
	if(skillFly2){ flyTime = flyPower * 2; }
}

if(touchingStickyBlock){
	if(ySpeed > 0){ ySpeed = 0; }
	jumps = jumpsMax;
}
touchingStickyBlock = false;








// fall
for(var i=0; i<ySpeed; i++){
	
	if(jumps == jumpsMax && wallSlideTime < 1){jumps --;}
	player.y ++;
	fireTrailImpact ++;
	if(playerOnGround()){
		playSFX(sfxLand);
		if(onLadder){ y --; }
		break;
	}
	
}



//x move
var dir = xDir;

if(xPush < 0){
	xSpeed = xPush;
	xPush ++;
	dir = -1;
}
if(xPush > 0){
	xSpeed = xPush;
	xPush --;
	dir = 1;
}

if(xPush == 0 && sparkOut){
	xSpeed = clamp(xSpeed, -1, 1);
}
sparkOut = false;


if(fireballTime > 0){
	xSpeed = fireballSpeed * fireballDir;
	dir = fireballDir;
	if(inFan != 0){
		if(inFan == 1 && dir == -1){xSpeed = 3;}
		//if(inFan == -1 && dir == -1){xSpeed -= 3;}
		//if(inFan == 1 && dir == 1){xSpeed += 3;}
		if(inFan == -1 && dir == 1){xSpeed = -3;}
	}
}





for(var i=0; i<abs(xSpeed); i++){
	
	
	
	x += dir;
	fireTrailImpact ++;
	
	if(playerFaceCheck(dir) || playerBumpHead()){
		
		if(fireballTime > 0){
			playSFX(sfxLand);
			insistJump = 7;
			ySpeed = -9;
			xPush = -5 * fireballDir;
			fireballCD -= fireballTime;
			fireballTime = 0;
			
		}
		
		if(ySpeed > 0 && skillWallSlide){
			wallSlideTime = 2;
		}
		
		
		
		
		x -= dir;
		break;
	}
}
if(x < 10 || x > 789){ if(fireballTime > 5){ fireballTime = 5; }}
while(x < 10){ x ++; }
while(x > 789){ x --; }


/*
if(trailCD > 0 && skills[4, 0] && ( xSpeed != 0 || ySpeed != 0) ){
	trailCD --;
	if(trailCD < 1){
		instance_create_depth(x, y, -40, objPlayerTrail);
		trailCD = trailCDMax;
	}
}
*/






//spikes
if(xSpikeCheck != -1 && hurtTime < 1){
	onSpike = world.bmap[xSpikeCheck, ySpikeCheck];
}
if(onSpike != noone){
	
	if(onSpike.y + 16 > y){
		ySpeed = -10;
	} else {
		xPush = onSpike.x < x ? 12 : -12;
	}
	
	onSpike = noone;
	playerHurt();
}




// fire trail
if(skillFireTrail){
	fireTrailImpact = max(fireTrailImpact - 1, 0);
	fireTrailImpact = min(fireTrailImpact, 10);
	fireTrailCD -= fireTrailImpact;
	if(fireTrailCD < 1){
		fireTrailCD = 32;
		instance_create_depth(x, y, -40, objPlayerTrail);
	}
}



//unstick
if(playerBumpHead()){ y ++; }
if(playerFaceCheck(1) || playerFaceCheck(-1)){ 
	if(x < 250){ x ++; }
	else if (x > 550){ x --; }
	else { y ++; }
}



player.inFan = 0;
