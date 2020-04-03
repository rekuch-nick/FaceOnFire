if(world.gameState == "play" && !flip){
	
	if(player.fireballTime > 0){
		sprite_index = imgFlipShot;
		flip = true;
		xStartSpeed *= -1;
		yStartSpeed *= -1;
		range = 1000;
		timeCD = 300;	
		
		return;
	}
	
	
	
	
	
	
	playerHurt();
	remove = true;
}