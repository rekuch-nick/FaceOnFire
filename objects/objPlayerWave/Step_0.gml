if(world.gameState == "play"){
	
	if(first){
		var s = instance_create_depth(x, y, -40, objPlayerWave);
		s.first = false;
		s.grav = -1;
		first = false;
	}
	
	x += xSpeed;
	y += ySpeed;
	
	ySpeed += grav;
	if(ySpeed > 6){grav = -1;}
	if(ySpeed < -6){grav = 1;}
	
	var xSpot = floor(x / 32);
	var ySpot = floor(y / 32);
	
	if(passWallTime < 1 && tileCanBlock(xSpot, ySpot)){
		
		if(object_is_ancestor(world.bmap[xSpot, ySpot].object_index, objBreakable)){
			world.bmap[xSpot, ySpot].hp -= 7;
		}
		remove = true;

	}
	
	if(x < -10 || y < -110 || x > 810 || y > 810){ remove = true; }
	if(passWallTime > 0){ passWallTime --; }
	
	if(remove){
		instance_destroy();
	}
	
	
	
}