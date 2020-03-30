if(world.gameState == "play"){
	
	
	
	if(spawns > 0){ spawnCD --; }
	if(spawnCD < 1){
		
		var a = xSpot + irandom_range(-2, 2);
		var b = ySpot + irandom_range(-2, 2);
		var okay = true;
		spawnCD = 10;
		
		if(a < 0 || b < 1 || a > 24 || b > 24){ okay = false; } else {
			if(world.bmap[a, b] != noone){ okay = false; }
			var px = floor(player.x / 32);
			var py = floor(player.y / 32);
			d = abs(px - a) + abs(py - b);
			if(d < 5){ okay = false; }
			
		
			if(okay){
				spawnCD = spawnCDMax;
				world.bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objPlantBlock);
				world.bmap[a, b].xSpot = a;
				world.bmap[a, b].ySpot = b;
				spawns --;
			}
		}
		
		
		
		
		
	}
	
	
	
	
	
	event_inherited();
}