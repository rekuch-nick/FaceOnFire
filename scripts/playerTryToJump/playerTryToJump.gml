if(skillVertShot){
	if(tossCD < 1){
		tossCD = tossCDMax;
		if(rapidShot > 0){ rapidShot --; }
	
		var u = instance_create_depth(x, y, -40, objPlayerBreath);
		u.ySpeed = u.xSpeed;
		u.xSpeed = 0;
	
		var d = instance_create_depth(x, y, -40, objPlayerBreath);
		d.ySpeed = d.xSpeed * -1;
		d.xSpeed = 0;
	}
}


if(skillTrueFlight){ return; }

if(bopBounce){
	playSFX(sfxJump);
	ySpeed = (jumpPower + 2) * -1;
	bounceMeteo = true;
	bopBounce = false;
	return;
}




if(jumpReleased && jumps > 0){ // && (playerOnGround() || playerCoyoteTime())){
	
	if(skillJumpShot && jumps < jumpsMax){
		var u = instance_create_depth(player.x, player.y, -40, objPlayerJumpShot);
		u.ySpeed = -5;
		
		var d = instance_create_depth(player.x, player.y, -40, objPlayerJumpShot);
		d.ySpeed = 5;
		
		var l = instance_create_depth(player.x, player.y, -40, objPlayerJumpShot);
		l.xSpeed = -5;
		
		var r = instance_create_depth(player.x, player.y, -40, objPlayerJumpShot);
		r.xSpeed = 5;
	}
	
	
	if(skillJumpShot2 && jumps < jumpsMax){
		var d1 = instance_create_depth(player.x, player.y, -40, objPlayerJumpShot);
		d1.xSpeed = -4; d1.ySpeed = -4;
		
		var d2 = instance_create_depth(player.x, player.y, -40, objPlayerJumpShot);
		d2.xSpeed = 4; d2.ySpeed = -4;
		
		var d3 = instance_create_depth(player.x, player.y, -40, objPlayerJumpShot);
		d3.xSpeed = -4; d3.ySpeed = 4;
		
		var d4 = instance_create_depth(player.x, player.y, -40, objPlayerJumpShot);
		d4.xSpeed = 4; d4.ySpeed = 4;
	}
	
	
	
	
	playSFX(sfxJump);
	
	
	coyoteTime = coyoteTimeMax;
	jumps --;
	
	
	ySpeed = jumpPower * -1;
	
	jumpReleased = false;
	return;
}


if(flyTime > 0 && ySpeed >= flySpeed){
	flying = true;
	flyTime --;
	readoutTime = 30;
}






jumpReleased = false;