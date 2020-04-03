if(world.gameState == "play"){
	
	image_speed = 0;
	if(on){
		image_speed = 15;
		
		sparkCD --;
		if(sparkCD < 1){
			sparkCD = 5;
		
			var s = instance_create_depth(x + 33, y + irandom_range(1, 31), -40, objWind);
			s.sx = 5;
		}
	
	
		var px = floor(player.x / 32);
		var py = floor(player.y / 32);
		var okay = false;
		if(ySpot == py){ okay = true; }
		if(abs(ySpot - py) == 1 && abs(player.y - (y + 16) < 32) && px > xSpot) { okay = true; }
		
	
		if(okay && !player.onLadder){
			if(px >= xSpot && px < xSpot + 5){
				player.inFan = 1;
				if(playerOnGround){
					if(player.xDPad == 0){ player.xPush = 4; }
					if(player.xDPad == 1){ player.xSpeed += 4; }
					if(player.xDPad == -1){ player.xSpeed = 0; }
				} else {
					if(player.xDPad == 0){ player.xPush = 7; }
					if(player.xDPad == 1){ player.xSpeed += 7; }
					if(player.xDPad == -1){ player.xSpeed = 0; }
				}
			}
		}
		
	}
	
	
	
	//if(on && irandom_range(0, 900)==0){ on = false; }
	//if(!on && irandom_range(0, 100)==0){ on = true; }
	changeCD --;
	if(changeCD < 1 || (!on && changeCD < (changeCDMax / 2))){
		changeCD = changeCDMax;
		on = !on;
	}
	
}