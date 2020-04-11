worldDetectGamepad();



var pressingJumpThisFrame = false;
if(skillTrueFlight){ xSpeed = 0; ySpeed = 0; }


flying = false;
if(gamepad_button_check(global.gamepadID, world.buttonJump) || keyboard_check(vk_space)){
	onLadder = false;
	playerTryToJump();
	pressingJumpThisFrame = true;
	
} else {
	if(ySpeed < 0 && insistJump < 1){ySpeed = 0;}
	player.jumpReleased = true;
}
if(bopBounce){ ySpeed = -6; insistJump = 6;}
bopBounce = false;





var holdingUp = false;
if(gamepad_button_check_pressed(global.gamepadID, gp_padu) || 
		gamepad_axis_value(global.gamepadID, gp_axislv) < -.5 ||
		keyboard_check(vk_up) || keyboard_check(ord("W"))){
	
	yDPad = -1;
	if(onLadder){ climbSpeed = -4; }
	
	holdingUp = true;
	if(touchingLadder && !pressingJumpThisFrame){ onLadder = true; }
	if(skillTrueFlight){ ySpeed = moveSpeed * -1; }
}


if(gamepad_button_check(global.gamepadID, world.buttonCharge) ||
	gamepad_button_check(global.gamepadID, world.buttonFly) || 
	keyboard_check(ord("X")) || keyboard_check(ord("2"))){
	
	if(holdingUp && skillCallLightning && lightningCD < 1 && !hurt){
		lightningCD = 30;
		ySpeed = -10;
		if(fireballCD < 12){ fireballCD = 12; }
		instance_create_depth(x, y + 16, -35, objPlayerLightning);
		instance_create_depth(x - 48, y + 32, -35, objPlayerLightning);
		instance_create_depth(x + 48, y + 32, -35, objPlayerLightning);
		for(var i=0; i<30; i++){
			instance_create_depth(x + irandom_range(-40, 40), y + 16, -40, objSpark);
		}
		return;
	} 
	
	if(fireballCD < 1 && skillDash){
		
		
		if(!skillTrueFlight){
			playSFX(sfxDash);
			fireballTime= fireballTimeMax;
		}
		fireballDir = xDir;
		fireballCD = fireballCDMax;
		
		
		if(skillDash2){
			var s1 = instance_create_depth(x, y - 64, -40, objPlayerJumpShot);
			s1.xSpeed = xDir * 14;
			var s1 = instance_create_depth(x, y - 32, -40, objPlayerJumpShot);
			s1.xSpeed = xDir * 14;
			var s1 = instance_create_depth(x, y + 32, -40, objPlayerJumpShot);
			s1.xSpeed = xDir * 14;
			var s1 = instance_create_depth(x, y + 64, -40, objPlayerJumpShot);
			s1.xSpeed = xDir * 14;
		}
		
		
	}
	
	if(fireballCD < 1 && skillFloorMaking){
		var px = floor(x / 32);
		var py = floor(y / 32) + 1;
		if(px >= 0 && py >= 1 && px < 25 && py < 25){
			if(world.bmap[px, py] == noone){
				if(ySpeed > 0){ ySpeed = 0; }
				world.bmap[px, py] = instance_create_depth(px * 32, py * 32, 11, objFirePlatform);
				world.bmap[px, py].spawns = 0;
				world.bmap[px, py].timeCD = 30 * 5;
				world.bmap[px, py].fade = true;
				fireballCD = 5;
			}
		}
	}
	
	if(bombCD < 1 && skillLob){
		if(bombs > 0){
			bombs --;
			bombCD = 40;
			readoutTime = 30;
			instance_create_depth(x + (10 * shotsUseThisDir), y - 10, -40, objPlayerLob);
		} else {
			readoutTime = 30;
		}
	}
	
	if(bombCD < 1 && skillLadder){
		if(bombs > 0){
			//bombs --;
			bombCD = 10;
			//readoutTime = 30;
			var s = instance_create_depth( 16 + (floor(x / 32) * 32), 400, 12, objLadder);
			s.order = world.ladderOrder;
		} else {
			//readoutTime = 30;
		}
	}
	
} else {
	if(fireballTime > 0){
		fireballCD -= fireballTime;
		fireballTime = 0;
		hurtTime += 10;
	}
}

/*
if( (gamepad_button_check(global.gamepadID, gp_face3) ||
		gamepad_button_check(global.gamepadID, gp_face3)) && flyTime > 0){
	flyTime --;
	flying = true;
} else {
	flying = false;
}
*/





if(gamepad_button_check(global.gamepadID, world.buttonShoot)  ||
		keyboard_check(ord("Z")) || keyboard_check(ord("1"))){
	if(shotDir == 0){ shotDir = xDir; }
	shootReleased = false;
	playerTryToShoot();
} else {
	shootReleased = true;
	shotDir = 0;
	shotsUseThisDir = 0;
}
xDPad = 0; yDPad = 0;















if(gamepad_button_check_pressed(global.gamepadID, gp_padl) || 
		gamepad_axis_value(global.gamepadID, gp_axislh) < -.5 ||
		keyboard_check(vk_left) || keyboard_check(ord("A"))){
	
	xDPad = -1;
	if(!pressingJumpThisFrame){ onLadder = false; }
	
	playerTryToStep(-1);
	leftTapTime = dashMax;
} else {
	if(leftTapTime > 0){ 
		if(running && leftTapTime == dashMax){ xPush = 6 * xDir; }
		leftTapTime --; 
	}
}


if(gamepad_button_check_pressed(global.gamepadID, gp_padr) ||
		gamepad_axis_value(global.gamepadID, gp_axislh) > .5 ||
		keyboard_check(vk_right) || keyboard_check(ord("D"))){
	
	xDPad = 1;
	if(!pressingJumpThisFrame){ onLadder = false; }
	
	playerTryToStep(1);
	rightTapTime = dashMax;
} else {
	if(rightTapTime > 0){ 
		if(running && rightTapTime == dashMax){ xPush = 6 * xDir; }
		rightTapTime --; 
	}
}

if(leftTapTime != dashMax && rightTapTime != dashMax){ // if neither direction pressed
	running = false;
	runTime = 0;
	xSpeed = 0;
}



if(gamepad_button_check_pressed(global.gamepadID, gp_padd) || 
		gamepad_axis_value(global.gamepadID, gp_axislv) > .5 ||
		keyboard_check(vk_down) || keyboard_check(ord("S"))){
			
	yDPad = 1;
	
	duckTime ++;
	
	if(touchingLadder && !pressingJumpThisFrame ){ onLadder = true; }
	
	
	if(onLadder){ climbSpeed = 4; }
	
	if(downReleased && ! onLadder){
		playerQuickBurn(floor(x / 32), floor(y / 32));
	}
	
	if(skillTrueFlight){ ySpeed = moveSpeed * 1; }
	
	downReleased = false;
} else {
	duckTime = 0;
	downReleased = true;
}


touchingLadder = false;

// spawn pets
if(batCD < 1){
	batCD = batCDMax;
	if(instance_number(objFireBat) < 1 || (instance_number(objFireBat) < 3 && skills[5, 2])){
		
		instance_create_depth(player.x, player.y, 1, objFireBat);
		
	}
}




if(skillTrueFlight){
	onLadder = false;
	if(duckTime > 0){duckTime = 10;}
}

