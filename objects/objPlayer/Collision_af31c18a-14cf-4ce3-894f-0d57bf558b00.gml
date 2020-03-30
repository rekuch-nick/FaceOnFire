if(world.gameState == "play" && y > 790){
	playSFX(sfxDead);
	world.gameState = "dying";
	ySpeed = 0;
}