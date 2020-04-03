if(world.gameState == "play" && y > 790){
	
	//if(player.stage == 100){
		playerHurt();
		player.ySpeed = -25;
		player.insistJump = 25;
		player.y = 770;
		return;	
	//}
	
	
	//playSFX(sfxDead);
	//world.gameState = "dying";
	//ySpeed = 0;
}