if(xStartSpeed != 123456 && !flip){
	xSpeed = xStartSpeed / 2;
	ySpeed = yStartSpeed / 2;
	
	if(player.skillSlowAura2){
		resistAura --;
	}
	if(resistAura < 1){
		sprite_index = imgFlipShot;
		flip = true;
		xStartSpeed *= -1;
		yStartSpeed *= -1;
		range = 1000;
		timeCD = 300;
	}
}