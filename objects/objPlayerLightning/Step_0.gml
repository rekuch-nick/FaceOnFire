if(world.gameState == "play"){
	
	image_alpha = random_range(.3, 1);
	
	image_xscale = irandom_range(0, 1) == 1 ? -1 : 1;
	
	timeCD --;
	if(timeCD < 1){
		ds_list_destroy(mobsHit);
		instance_destroy();
	}
	
	
}