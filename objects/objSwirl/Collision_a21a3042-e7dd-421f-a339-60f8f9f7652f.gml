if(world.gameState == "play"){
	
	for(var i=0; i<6; i++){
		var s = instance_create_depth(player.x, player.y, -40, objPlayerOrbit);
		s.position = i * (360 / 6);
	}

	event_inherited();
	
}