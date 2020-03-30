if(world.gameState == "play"){
	
	if(firstFrame){
		
		var angle = arctan2(ty - y, tx - x);
		xSpeed = moveSpeed * cos(angle);
		ySpeed = moveSpeed * sin(angle);
		
		
		image_angle = point_direction(x, y, tx, ty);
		
		
		firstFrame = false;
		
		xStartSpeed = xSpeed;
		yStartSpeed = ySpeed;
	}
	
	if(stunTime > 0){
		stunTime --;
		return;
	}
	
	
	x += xSpeed;
	y += ySpeed;
	
	xSpeed = xStartSpeed;
	ySpeed = yStartSpeed;
	
	if(x < -20 || y < -20 || x > 820 || y > 820){
		remove = true;
	}
	
	if(remove){
		instance_destroy();
	}
	
	
}