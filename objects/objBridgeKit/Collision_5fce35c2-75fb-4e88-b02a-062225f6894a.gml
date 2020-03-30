if(world.gameState == "play"){
	
	var a = floor(player.x / 32);
	var b = floor(player.y / 32);
	var ok = false;
	var first = true;
	first = false; ///
	
	while(!ok){
		ok = true;
		
		if(!first){
			a += irandom_range(-1, 1);
			a = clamp(a, 1, 23);
			b += irandom_range(-1, 1);
			b = clamp(b, 5, 23);
			
		} else {
			first = false;
		}
		
		if(world.bmap[a, b] != noone){ ok = false; }
	}
	
	var s = instance_create_depth(a * 32, b * 32, 10, objFirePlatform);
	world.bmap[a, b] = s;

	event_inherited();
	
}