if(world.gameState == "play"){
	event_inherited();

	if(irandom_range(0, 3) == 0){
		instance_create_depth(x, y, -40, objRandomSpark);
	}

	image_xscale = random_range(1, 1.1);
	image_yscale = random_range(1, 1.1);
}