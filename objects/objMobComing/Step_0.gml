if(world.gameState == "play"){
	
	
	image_alpha = random_range(.3, .8);
	
	cd --;
	if(cd < 1){
		var s = instance_create_depth(x, y, -30, spawnType);
		
		if(player.skillSuperMonsters){
			if(s.shotType == ""){ s.shotType = "snipe"; s.shotCDMax = 90; }
			s.hp *= 4;
			s.mhp *= 4;
		}
		
		
		instance_destroy();
	}
	
	
}