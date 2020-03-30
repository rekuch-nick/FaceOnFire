if(world.gameState == "play"){
	
	
	if(xSpeed == 0){
		player.sparkOut = true;
		x = player.x + irandom_range(-2, 2);
		y = player.y + irandom_range(-3, 1);
	} else {
		x += xSpeed;
		y += irandom_range(-2, 2);
	}
	
	image_alpha = random_range(.4, 1);
	
	var bonus = 0;
	if(player.skillSparkToss2){ bonus = 1; }
	image_xscale = random_range(3+bonus, 3.5+bonus);
	image_yscale = random_range(3.2+bonus, 3.7+bonus);
	
	
	if(x < -10 || y < -110 || x > 810 || y > 910){ remove = true; }
	
	timeCD --;
	if(timeCD < 1){ remove = true; }
	
	if(player.shootReleased && xSpeed == 0){ remove = true; }
	
	if(remove){
		ds_list_destroy(mobsHit);
		instance_destroy();
	}
	
	
	
}