if(world.gameState == "play"){
	
	playSFX(sfxSpring);
	
	frame = 4;
	player.jumps = player.jumpsMax - 1;
	player.ySpeed = -20;
	player.insistJump = 20;
	
	
	
}