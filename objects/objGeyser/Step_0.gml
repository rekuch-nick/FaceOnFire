if(world.gameState == "play"){
	
	if(stunTime > 0){
		stunTime --;
		return;
	}
	
	if(harmlessCD > 0){harmlessCD --; }
	
	if(miniTurn < 1){
		y += yDir * 2;
	} else {
		miniTurn --;
		y -= yDir;
	}
	
	image_xscale *= -1;
	
	if(irandom_range(0, 90)==0){ miniTurn = irandom_range(15, 30); }
	
	if(y < 40){ yDir = 1;}
	if(y < 200 && irandom_range(0, 100) == 0){ yDir = 1; }
	
	
	if(yDir == 1 && y > 800){
		instance_destroy();
	}
	
	
}