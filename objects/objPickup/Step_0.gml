


if(world.gameState == "play"){
	
	
	
	
	x += xSpeed;
	var tries = 0;
	var xDir = xSpeed > 0 ? 1 : -1;
	if(xSpeed == 0){xDir = 0;}
	while(mobWallCheck(x, y, false)){
		tries ++;
		if(passWall || tries > 20){break;}
		x -= xDir;
	}
	
	if(xSpeed > 0){ xSpeed --; }
	if(xSpeed < 0){ xSpeed ++; }
	
	while(x < 10){ x ++; }
	while(x > 790){ x --; }
	
	
	var hitFloor = false;
	tries = 0;
	if(ySpeed < 0){
		y += ySpeed;
		while(mobWallCheck(x, y, false) ){  //&& mobWallCheck(x, y + 10, false) ){
			tries ++;
			if(passWall || tries > 20){break;}
			y ++;
		}
	} else {
		for(var i=0; i<ySpeed; i++){
			
			y ++;
			tries ++;
			while(mobWallCheck(x, y, false) || ( (mobWallCheck(x, y, true) && y / 32 == floor(y / 32) ) ) // ||
					//mobWallCheck(x, y + 10, false) || ( (mobWallCheck(x, y + 10, true) && (y+10) / 32 == floor((y+10) / 32) ) )	
					){
				tries ++;
				if(passWall || tries > 20){break;}
				y --;
				hitFloor = true;
				break;
			}
		}
	
		if(y > 805){ y = -5; }
		
	}
	
	
	ySpeed += grav;
	if(ySpeed > 8){ ySpeed = 8; }
	if(yBaseSpeed != -100){
		if(hitFloor && bounces > 0){
			bounces --;
			ySpeed = yBaseSpeed + 2;
			yBaseSpeed += 2;
			
			xBaseSpeed -= 2;
			xSpeed = irandom_range(0, 1) == 1 ? xBaseSpeed : xBaseSpeed * -1;
			
			y -= 10;
			image_angle += irandom_range(0, 259);
		}
	}
	
	
	
	
	
	
	
	if(yBaseSpeed == -100){ 
		yBaseSpeed = ySpeed; 
		xBaseSpeed = abs(xSpeed);
	}
	
	
}