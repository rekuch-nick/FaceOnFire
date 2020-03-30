if(world.gameState == "play"){
	image_index = 0;
	var life = (hp / mhp);
	if(life < .8){ image_index = 1;} 
	if(life < .6){ image_index = 2;} 
	if(life < .4){ image_index = 3;} 
	if(life < .2){ image_index = 4;} 	
	
	if(hp <= 0){
		playSFX(sfxBreak);
		
		//instance_create_depth(x + 8, y + 8, -40, deathSpark);
		//instance_create_depth(x + 24, y + 8, -40, deathSpark);
		//instance_create_depth(x + 8, y + 24, -40, deathSpark);
		//instance_create_depth(x + 24, y + 24, -40, deathSpark);
		
		world.bmap[xSpot, ySpot] = noone;
		instance_destroy();
		
	}	

	
}