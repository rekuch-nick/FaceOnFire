if(world.gameState == "play"){
	if(instance_number(objKey) == 1 && instance_number(objKeyEgg) == 0){
		
		if(player.stage % 10 == 4) {
			spawnPortal("fast");
		} else {
			spawnPortal("");
		}
	
	}



	event_inherited();
	
}