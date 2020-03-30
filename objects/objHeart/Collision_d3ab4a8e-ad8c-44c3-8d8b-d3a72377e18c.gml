if(world.gameState == "play"){
	
	if(player.hurt){
		
		player.hurt = false;
		instance_create_depth(x, y, -21, objHeartUp);

		event_inherited();
	}
	
}