	x += sx;
	y += sy;
	
	sy += grav;
	
	image_xscale += grow;
	image_yscale += grow;
	
	image_angle += rotate;
	
	image_alpha -= fade;
	
	if(flicker){image_alpha = random(1);}
	
	if(wobble){image_angle += irandom(4) - 2;}
	
	
	timeLeft --; if(timeLeft < 1 && !timeless){remove = true;}
	if(image_alpha < 0){remove = true;}
	
	if(x < -20 || x > room_width + 20 || y < -20 or y > room_height + 20){remove = true;}
	

	
	
	
	if(remove){
		instance_destroy();
	}
	