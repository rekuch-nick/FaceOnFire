if(world.gameState == "play" && hurtTime < 1 && other.harmlessCD < 1 && other.stunTime < 1){
	
	fireballTime = 0;
	playerHurt();
	xPush = other.x < x ? 6 : -6;
		
	
}