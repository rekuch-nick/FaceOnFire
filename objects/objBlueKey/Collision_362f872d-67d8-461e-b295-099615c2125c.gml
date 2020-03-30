if(world.gameState == "play"){
	
	
	
	if(player.blueKeys <= 0){
		var s = spawnItem(objKey);
	} else {
		player.blueKeys --;
		var s = spawnItem(objBlueKey);
	}

	event_inherited();
	
}