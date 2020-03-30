if(world.gameState == "play"){
	
	if(yFirstSpeed == -9999){ yFirstSpeed = ySpeed; }
	
	x += xSpeed;
	y += ySpeed;
	
	ySpeed += grav;
	if(ySpeed > 12){ySpeed = 12;}
	
	var xSpot = floor(x / 32);
	var ySpot = floor(y / 32);
	
	if(passWallTime < 1 && tileCanBlock(xSpot, ySpot)){
		
		
		if(object_is_ancestor(world.bmap[xSpot, ySpot].object_index, objBreakable)){
			world.bmap[xSpot, ySpot].hp -= 7;
		}
		
		if(bounces > 0){
			bounces --;
			passWallTime = 3;
			ySpeed = yFirstSpeed + 2;
			
		} else {
			remove = true;
		}
	}
	
	if(x < -10 || y < -110 || x > 810 || y > 810){ remove = true; }
	if(passWallTime > 0){ passWallTime --; }
	
	if(remove){
		
		for(a=x-100; a<=x+100; a+= 16){
			for(b=y-100; b<=y+100; b+= 16){
				d = point_distance(x, y, a, b);
				if(d <= 110){
					var s = instance_create_depth(a, b, -40, objPlayerJumpShot);
					s.timeCD = 43;
					s.fade = true;
				}
			}
		}
		
		
		
		instance_destroy();
	}
	
	
	
}