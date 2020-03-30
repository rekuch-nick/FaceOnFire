if(world.gameState == "play"){
	
	x = player.x + radius * sin(position);
	y = player.y + radius * cos(position);

	
	position += moveSpeed;
	if(position > 360){ position -= 360; }
	if(position < 0){ position += 360; }
	
	
	if(remove){
		instance_destroy();
	}
	
	
	
}