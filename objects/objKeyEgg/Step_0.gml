if(world.gameState == "play"){
	
	
	if(point_distance(x, y, player.x, player.y) < 75){
		
		hp --;
		
		if(world.mobsRemaining == 0){
			var n = 0;
			with(objMob){ n ++; }
			if(n == 0){ hp = 0; }
		}
	}
	
	
	image_index = 5 - ceil((hp / mhp) * 5);
	
	
	if(hp < 1){
		instance_create_depth(x, y, -20, objKey);
		
		instance_destroy();
	}
	
}