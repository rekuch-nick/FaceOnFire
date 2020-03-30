if(world.gameState == "play"){
	
	
	
	if(firstFrame){
		
		if(moveType == "still"){
			xSpeed = 0;
			ySpeed = 0;
			timeOut = true;
			timeCD = 20;
		}
		
		if(moveType == "drip"){
			xSpeed = 0;
			ySpeed = -2;
			grav = .25;
		}
		
		if(moveType == "target"){
			var angle = arctan2(ty - y, tx - x);
			xSpeed = moveSpeed * cos(angle);
			ySpeed = moveSpeed * sin(angle);
		}
		
		if(moveType == "player"){
			var angle = arctan2(player.y - y, player.x - x);
			xSpeed = moveSpeed * cos(angle);
			ySpeed = moveSpeed * sin(angle);
		}
		
		if(moveType == ""){
			xSpeed = irandom_range(0, moveSpeed);
			ySpeed = moveSpeed - xSpeed;
			
			if(irandom_range(0, 1) == 0){ xSpeed *= -1; }
			if(irandom_range(0, 1) == 0){ ySpeed *= -1; }
			if(grav > 0){ ySpeed = (irandom_range(moveSpeed, moveSpeed * 2) * -1 ); }
		}
		firstFrame = false;
		
		xStartSpeed = xSpeed;
		yStartSpeed = ySpeed;
	}
	

	
	x += xSpeed;
	y += ySpeed;
	
	range -= (abs(xSpeed) + abs(ySpeed));
	
	
	xSpeed = xStartSpeed;
	ySpeed = yStartSpeed;
	
	
	
	ySpeed += grav;
	yStartSpeed += grav;
	//if(ySpeed > moveSpeed * 3){ ySpeed = moveSpeed * 3; }
	
	
	
	var xSpot = floor(x / 32);
	var ySpot = floor(y / 32);
	if(tileCanBlock(xSpot, ySpot)){ remove = true; }
	
	if(timeOut){
		timeCD --;
		if(timeCD < 1){ remove = true; }
	}
	
	if(range < 1){ remove = true; }
	
	if(x < -20 || y < -20 || x > 820 || y > 820){
		remove = true;
	}
	
	if(remove){
		instance_destroy();
	}
	
}