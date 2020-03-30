if(world.gameState == "play"){
	
	event_inherited();
	
	if( (y < 20 && ySpeed < 0) || (y > 760 && ySpeed > 0) || 
			irandom_range(0, 300) == 0){
				
		ySpeed *= -1;
	}
}