if(world.gameState == "play"){
	
//if(world.bmap[xSpot + 1, ySpot] != noone && object_is_ancestor(world.bmap[xSpot + 1, ySpot].object_index, objBreakable)){
//world.bmap[xSpot + 1, ySpot].hp -= 5;	


	if(firstFrame){
		var num = 0;
		var lowest = noone;
		
		with(objLadder){
			if(order != 0){ 
				if(lowest == noone || order < lowest.order){
					lowest = self;
				}
				
				num ++; 
			}
		}
		
		if(num > 3){
			instance_destroy(lowest);
		}
		
		
		firstFrame = false;	
	}


	var xx = floor(x / 32);
	for(a=xx-1; a<=xx+1; a++){ if(a >= 0 && a <= 24) {
		for(b=0; b<25; b++){
			if(world.bmap[a, b] != noone && object_is_ancestor(world.bmap[a, b].object_index, objBreakable)){
				world.bmap[a, b].hp -= 1;
			}
		}
	}}
	
	
	
	
}