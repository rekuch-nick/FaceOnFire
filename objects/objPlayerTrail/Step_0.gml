if(world.gameState == "play"){
	
	
	
	if(irandom_range(0, 4) == 0){
		x += irandom_range(-1, 1);
		y += irandom_range(-1, 1);
	}
	
	timeCD --;
	image_alpha = (timeCD * 2) / timeCDMax;
	if(timeCD < 1){ remove = true; }
	
	if(remove){
		instance_destroy();
	}
	
	
	
}