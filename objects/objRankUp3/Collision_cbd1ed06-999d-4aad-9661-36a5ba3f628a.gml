if(world.gameState == "play"){
	player.rank = max(3, player.rank);
	applyRank();
	
	event_inherited();
	
	image_xscale = random_range(1, 1.1);
	image_yscale = random_range(1, 1.1);
}