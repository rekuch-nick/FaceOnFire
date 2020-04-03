if(world.gameState == "play"){
	
	if(player.fireballTime > 0){ return; }
	
	playerHurt();
	remove = true;
}