if(world.gameState == "play"){
	if(instance_number(objRunKey) == 1){
		
		if(player.stage % 10 == 4) {
			spawnPortal("fast");
		} else {
			spawnPortal("");
		}
	
	}



	event_inherited();
	
}