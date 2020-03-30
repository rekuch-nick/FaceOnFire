

if(world.gameState == "play"){
	
	
	if(irandom_range(0, 3) == 0){ x += irandom_range(-1, 1); }
	if(irandom_range(0, 3) == 0){ y += irandom_range(-1, 1); }
	
	timeCD --;
	if(timeCD < 1){
		
		var s = instance_create_depth(x, y, -40, objEnemyShot);
		s.moveType = "still";
		instance_destroy();
	}
}