if(world.gameState == "play"){
	
	
	if(shotCD / shotCDMax < .1){
		image_xscale = random_range(1, 1.1);
		image_yscale = random_range(1, 1.2);
	} else {
		image_xscale = 1;
		image_yscale = 1;
	}
	
	
	
	
	shotCD --;
	if(shotCD < 1){
		shotCD = shotCDMax;
		
		for(var i=0; i<10; i++){
			var s = instance_create_depth(x, y, -40, objEnemyShot);
			s.grav = 1;
		}
		
		
	}
	
	
}