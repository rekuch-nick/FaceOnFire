if(world.gameState == "play"){
	
	x += (xDir * moveSpeed);
	
	if(x < 10 && xDir == -1){ xDir = 1; }
	if(x > 790 && xDir == 1){ xDir = -1; }
	
	
	
}