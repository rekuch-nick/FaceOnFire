if(world.gameState == "play"){
	
	
	thinkCD --; if(thinkCD < 1){
		tx = irandom_range(20, 780);
		ty = irandom_range(20, 780);
		
		/// code to target a monster
		if(irandom_range(0, 1) == 1){
			var mob = instance_find(objMob, irandom(instance_number(objMob) - 1));
			
			if(mob != noone){
				tx = mob.x;
				ty = mob.y;
			}
		}
		
		var angle = arctan2(ty - y, tx - x);
		xSpeed = moveSpeed * cos(angle);
		ySpeed = moveSpeed * sin(angle);
		
		var distance = sqrt( (x - tx)*(x - tx) + (y - ty)*(y - ty) );
		thinkCD = (distance / moveSpeed) - 1;
		
		image_angle = 0 + irandom_range(-20, 20);
	}
	
	x += xSpeed;
	y += ySpeed;
	
	if(strikeCD > 0){ strikeCD --; }
	
	
	flapCD --;
	if(flapCD < 1){
		flapCD = 15;
		flapFrame ++;
		if(flapFrame > 2){ flapFrame = 1;}
	}
	
	flashCD --;
	if(flashCD < 1){
		flashCD = 3;
		flashFrame ++;
		if(flashFrame > 2){ flashFrame = 1;}
	}
	
	if(flapFrame == 1 && flashFrame == 1){ image_index = 0; }
	if(flapFrame == 1 && flashFrame == 2){ image_index = 1; }
	if(flapFrame == 2 && flashFrame == 1){ image_index = 2; }
	if(flapFrame == 2 && flashFrame == 2){ image_index = 3; }
	
	timeCD --;
	if(timeCD < 1){
		instance_destroy();
	}
	
	
}