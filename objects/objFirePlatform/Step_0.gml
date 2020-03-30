if(world.gameState == "play"){


	if(timeCD % 10 == 0){
		
		if(spawns > 0 && generation < 10){
			if(irandom_range(0, 2) == 0){
				var tx = xSpot + irandom_range(-1, 1);
			} else {
				var tx = xSpot + irandom_range(-2, 2);
			}
			
			if(tx >= 0 && tx <= 24){
				if(world.bmap[tx, ySpot] == noone){
					var s = instance_create_depth(tx * 32, ySpot * 32, 10, objFirePlatform);
					s.generation = generation + 1;
					world.bmap[tx, ySpot] = s;
				}
			}
			
		}
		
		
		
		
		

		//x burn
		if(xSpot > 0 && !fade){
			if(world.bmap[xSpot - 1, ySpot] != noone && object_is_ancestor(world.bmap[xSpot - 1, ySpot].object_index, objBreakable)){
				world.bmap[xSpot - 1, ySpot].hp -= 5;
			}
		}
		
		if(xSpot < 24 && !fade){
			if(world.bmap[xSpot + 1, ySpot] != noone && object_is_ancestor(world.bmap[xSpot + 1, ySpot].object_index, objBreakable)){
				world.bmap[xSpot + 1, ySpot].hp -= 5;
			}
		}
	}





	timeCD -= generation;
	
	image_index = irandom_range(0, 1);
	
	if(!fade){
		if(timeCD / generation < 25){
			image_index = irandom_range(0, 3);
		}
	} else {
		image_alpha = .4 + (.6 * (timeCD / 150));
	}
	
	if(timeCD < 1){
		world.bmap[xSpot, ySpot] = noone;
		instance_destroy();
	}




}