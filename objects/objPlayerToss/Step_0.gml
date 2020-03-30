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
			//if(irandom_range(0, 1) == 1){
				var s = instance_create_depth(x, y, -40, objPlayerToss);
				s.xSpeed = (xSpeed * -1) + irandom_range(-1, 1);
				s.ySpeed = ySpeed + irandom_range(-1, 1);
				s.bounces = bounces;
			//}
			
		} else {
			remove = true;
		}
	}
	
	if(x < -10 || y < -110 || x > 810 || y > 810){ remove = true; }
	if(passWallTime > 0){ passWallTime --; }
	
	if(remove){
		instance_destroy();
	}
	
	
	
}