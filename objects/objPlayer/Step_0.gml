
if(icd > 0){ icd --; }


if(world.gameState == "play"){

	playerMove();
	playerInput();
	playerDisplay();
	playerCounters();
	
	worldSpwanTimer();
}

if(world.gameState == "play" || world.gameState == "pause"){
	playerPauseInput();
}

if(world.gameState == "title"){
	if(icd < 1){ playerTitleInput(); }
}

if(world.gameState == "dying"){
	playMusic("");
	savedCandles += candles;
	candles = 0;
	rank = 1;
	saveGame();
	hat.y ++;
	image_alpha = random_range(.3, 1);
	y += ySpeed;
	ySpeed -= .2;
	if(y < 0){ y += 800; }
	image_xscale += (image_xscale * .01);
	image_yscale += (image_yscale * .01);
	sprite_index = imgPlayerDead;
	
	
	if(abs(image_yscale) > 4.0){
		image_index = imgPlayer01;
		image_xscale = 1;
		image_yscale = 1;
		image_alpha = 1;
		image_angle = 0;
		ySpeed = 0;
		
		world.gameState = "title";
		icd = 10;
		world.titleScreen = instance_create_depth(0, 0, -100, objTitle);
	}
		
}

if(world.gameState == "hatAnimate"){
	phaseTime --;
	growHat.image_xscale += .05;
	growHat.image_yscale += .05;
	if(phaseTime < 1){
		growHat.image_xscale = 1;
		growHat.image_yscale = 1;
		
		for(var a=0; a<12; a++){
			instance_destroy(world.hatScreen.hats[a]);
		}
		instance_destroy(world.hatScreen);
		world.hatScreen = noone;
		world.gameState = "create";
	}
}
	
