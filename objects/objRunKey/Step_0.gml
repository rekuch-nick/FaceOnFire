if(world.gameState == "play"){
	event_inherited();
	
	
	
	//show_debug_message(string(point_distance(x, y, player.x, player.y)))
	
	if( point_distance(x, y, player.x, player.y) < runRange){
		x = player.x > x ? x - moveSpeed : x + moveSpeed;
		y = player.y > y ? y - moveSpeed : y + moveSpeed;
		
	}

	if(y > 784){ y = 784; }
	if(y < 10){ y = 16; }
	if(x < 16){ x = 16; }
	if(x > 784){ x = 784; }

	
}