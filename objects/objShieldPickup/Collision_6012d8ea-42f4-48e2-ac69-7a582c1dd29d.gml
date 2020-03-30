if(world.gameState == "play"){
	
	if(player.shield == noone){
		var s = instance_create_depth(player.x, player.y, -1, objPlayerShield);
		player.shield = s;

		event_inherited();
	}
	
}