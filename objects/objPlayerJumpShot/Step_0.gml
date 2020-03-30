if(world.gameState == "play"){
	
	if(firstTimeCD == -1){ firstTimeCD = timeCD; }
	
	x += xSpeed;
	y += ySpeed;
	
		
	var xSpot = floor(x / 32);
	var ySpot = floor(y / 32);
	
	if(tileCanBlock(xSpot, ySpot)){
		if(object_is_ancestor(world.bmap[xSpot, ySpot].object_index, objBreakable)){
			world.bmap[xSpot, ySpot].hp -= 7;
		}
		remove = true;
	}
	
	if(fade){
		image_alpha = .5 + ((timeCD / firstTimeCD) * .5)
	}
	
	timeCD --;
	if(timeCD < 1){ remove = true; }
	
	if(x < -10 || y < -110 || x > 810 || y > 810){ remove = true; }
	
	
	if(remove){
		instance_destroy();
	}
	
	
	
}