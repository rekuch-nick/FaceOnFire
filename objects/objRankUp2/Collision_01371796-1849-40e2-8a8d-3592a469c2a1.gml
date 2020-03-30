if(world.gameState == "play"){
	player.rank = max(2, player.rank);
	applyRank();

	event_inherited();
	
}