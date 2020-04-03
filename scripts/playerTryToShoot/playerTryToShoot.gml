


if(breathCD < 1 && xSpeed == 0 && playerOnGround() && skillBreath){
	breathCD = breathCDMax;
	if(skillBreath2){
		instance_create_depth(x + (10 * xDir), y - 5, -40, objPlayerBreath);
		instance_create_depth(x + (10 * xDir), y + 5, -40, objPlayerBreath);
	} else {
		instance_create_depth(x + (10 * xDir), y, -40, objPlayerBreath);
	}
}


if(basicShot == noone){ return; }
if(tossCD < 1){
	tossCD = tossCDMax;
	
	
	if(player.skillSparkToss){
		xSpeed = 0;
		instance_create_depth(x, y, -40, objPlayerSpark);
		
		if(player.stage % 10 == 0){
			var s = instance_create_depth(x + irandom_range(-64, 64), 0, -40, objPlayerJumpShot);
			s.ySpeed = irandom_range(6, 8);
		}
		
		return;
	}
	
	
	if(faceShoot){ shotsUseThisDir = xDir; }
	if(shotDir != 0 && faceShoot){ shotsUseThisDir = shotDir; }
	
	var s = instance_create_depth(x + (10 * shotsUseThisDir), y - 10, -40, basicShot);
	if(rapidShot > 0){ rapidShot --; }
	
	if(multiBreath){
		var s1 = instance_create_depth(x + (10 * shotsUseThisDir), y - 42, -40, basicShot);
		var s2 = instance_create_depth(x + (10 * shotsUseThisDir), y + 22, -40, basicShot);
	}
	
	if(skillMultiToss){
		var s1 = instance_create_depth(x + (10 * shotsUseThisDir), y - 10, -40, basicShot);
		s1.ySpeed = -5;
		var s2 = instance_create_depth(x + (10 * shotsUseThisDir), y - 10, -40, basicShot);
		s2.ySpeed = -9;
	}
	
}