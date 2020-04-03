if(world.gameState == "play"){
	

	//instance_create_depth(x, y + 96, -35, objPlayerLightning);
	//instance_create_depth(x - 48, y + 64, -35, objPlayerLightning);
	//instance_create_depth(x + 48, y + 64, -35, objPlayerLightning);
	
	instance_create_depth(x, 824, -35, objPlayerLightning);
	instance_create_depth(x - 48, 800, -35, objPlayerLightning);
	instance_create_depth(x + 48, 800, -35, objPlayerLightning);

	event_inherited();
	
}