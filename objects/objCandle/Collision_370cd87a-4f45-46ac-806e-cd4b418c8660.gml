if(world.gameState == "play"){
	gainCandle(1);
	instance_create_depth(x, y, -21, objCandleUp);


	event_inherited();
	
}