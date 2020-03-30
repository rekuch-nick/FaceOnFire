if(world.mobsRemaining > 0){
	world.spawnCD --;
	
	if(instance_number(objMob) == 0 && instance_number(objMobComing) == 0){ world.spawnCD = 0; }
	
	
}


if(!ds_list_empty(world.pickups)){
	world.pickupCD --;
	if(world.pickupCD < 1){
		world.pickupCD = 30 * 10;
		var t = ds_list_find_value(world.pickups, 0);
		spawnItem(t);
		ds_list_delete(world.pickups, 0);
	}
}


if(world.spawnCD < 1){
	//world.spawnCD = world.spawnCDMax
	world.spawnCD = world.mobDelay; // * 300; //////
	
	
	
	var px = floor(player.x / 32);
	var py = floor(player.y / 32);
	
	var tries = 0; var ok = false;
	while(tries < 1000 && !ok){
		tries ++;
		var a = irandom_range(0, 24);
		var b = irandom_range(0, 24);
		ok = true;

		var t = world.mobList[irandom_range(0, 5)];
		
		
		if(t == objHuntFace && instance_number(objHuntFace) >= 6){ ok = false; }
		
		
		if(world.bmap[a, b] != noone){ ok = false; }
		if(abs(a - px) + abs(b - py) < 6){ ok = false; }
		
	}
	
	if(ok){
		var s = instance_create_depth((a * 32) + 16, (b * 32) + 16, -40, objMobComing);
		s.spawnType = t;
		
		world.mobsRemaining --;
	}
	
}

if( world.arena && world.mobsRemaining == 0 && instance_number(objMob) == 0 && instance_number(objMobComing) == 0){
	world.arena = false;
	
	var ok = false;
	while(!ok){
		ok = true;
		var a = irandom_range(0, 24);
		var b = irandom_range(18, 24);
		
		var px = floor(player.x / 32);
		var py = floor(player.y / 32);
		
		var d = abs(a - px) + abs(b - py);
		
		if(d < 10){ ok = false; }
		if(world.bmap[a, b] != noone){ ok = false; }
	}
	
	var s = instance_create_depth((a * 32) + 16, (b * 32) + 16, -20, objKey);
	
}




if(world.hasGeysers && player.stage % 10 != 4){
	world.geyserCD --;
	if(world.geyserCD < 1){
		world.geyserCD = 30 * 14;
		
		var maxGeysers = 2;
		if(player.stage > 90){ maxGeysers = 3; }
		
		if(instance_number(objGeyser) < maxGeysers){
			instance_create_depth(16 + irandom_range(0, 24) * 32, 800, 16, objGeyser);
		}
		
	}
}


