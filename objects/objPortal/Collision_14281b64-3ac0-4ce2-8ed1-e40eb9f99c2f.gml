if(world.gameState == "play"){

	event_inherited();
	player.stage ++;
	if(player.stageMax < player.stage){ player.stageMax = player.stage; }
	world.gameState = "create";
	
}