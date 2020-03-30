if(world.gameState == "play"){
	
	x += xSpeed;
	y += ySpeed;
	
		
	var xSpot = floor(x / 32);
	var ySpot = floor(y / 32);
	
	if(tileCanBlock(xSpot, ySpot)){
		if(object_is_ancestor(world.bmap[xSpot, ySpot].object_index, objBreakable)){
			world.bmap[xSpot, ySpot].hp -= 50;
		}
		remove = true;
	}
	
	if(x < -10 || y < -110 || x > 810 || y > 810){ remove = true; }
	
	
	if(remove){
		instance_destroy();
	}
	
	
	
}