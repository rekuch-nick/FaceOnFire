if(world.gameState == "play"){
	
	if(frame > 0){
		frameCD --;
		if(frameCD < 1){
			frameCD = 20;
			frame --;
		}
	}
	
	image_index = frame;
	
}