if(world.gameState == "play"){
	
	if(stunTime > 0){
		stunTime --;
		return;
	}
	
	thinkCD --;
	if(thinkCD < 1){
		
		do {
			tx = irandom_range(0, 24);
			ty = irandom_range(0, 24);
			if(shots < 2){ ty = irandom_range(18, 24); }
			ok = true;
			
			if(world.bmap[tx, ty] != noone){ ok = false; }
		} until ( ok );
		
		tx = (tx * 32) + 16;
		ty = (ty * 32) + 16;
		
		var angle = arctan2(ty - y, tx - x);
		xSpeed = moveSpeed * cos(angle);
		ySpeed = moveSpeed * sin(angle);
		
		var distance = sqrt( (x - tx)*(x - tx) + (y - ty)*(y - ty) );
		thinkCD = (distance / moveSpeed) - 1;
		
	}
	
	if(patternCD < 1){
		x += xSpeed;
		y += ySpeed;
	}
	
	if(shotCD == floor(shotCDMax / 2)){
		if(childPickup == noone){
			childPickup = instance_create_depth(x, y, -20, objCandle);
			childPickup.ref = self;
			childPickup.passWall = true;
		}
	}
	if(childPickup != noone){
		childPickup.x = x + candleRadius * sin(candlePosition);
		childPickup.y = y + candleRadius * cos(candlePosition);
		
		candlePosition += .1;
		if(candlePosition > 360){ candlePosition -= 360; }
		if(candlePosition < 0){ candlePosition += 360; }
		
		candleRadius += candleRadiusDir;
		if(candleRadius <= candleRadiusMin){ candleRadiusDir = 1; }
		if(candleRadius >= candleRadiusMax){ candleRadiusDir = -1; }
	}
	
	
	if(patternCD < 1){ shotCD --; }
	if(shots < 1){ shots -= 5; }
	if(shotCD < 1){
		
		if(shots > 0){ 
			//choose pattern
			var r = irandom_range(0, min( 1 + floor(player.stage / 10), 5 ));
			if(r == 0){ pattern = 1; patternCD = 1; }
			if(r == 1){ pattern = 2; patternCD = 41; }
			if(r == 2){ pattern = 3; patternCD = 81; }
			if(r == 3){ pattern = 4; patternCD = 161; }
			if(r == 4){ pattern = 5; patternCD = 131; }
			if(r == 5){ pattern = 6; patternCD = 111; }
			
			
			
			shotCD = shotCDMax;
			shots --;
		} else {
			var xx = floor(x / 32);
			var yy = floor(y / 32);
			
			if(world.bmap[xx, yy] == noone){
				if(childPickup != noone){ instance_destroy(childPickup); }
				instance_create_depth((xx * 32) + 16, (yy * 32) + 16, -20, objKey);
				instance_destroy();
			}
		} // end of shots > 0
			
		
	} // end of shotCD < 1
	
	if(patternCD > 0){
			patternCD --;
			if(pattern == 1 && patternCD == 0){
				firemanShoot(6, 10, 0);
				firemanShoot(6, -10, 0);
				firemanShoot(6, 0, 10);
				firemanShoot(6, 0, -10);
				firemanShoot(6, 10, 10);
				firemanShoot(6, -10, 10);
				firemanShoot(6, 10, -10);
				firemanShoot(6, -10, -10);
			}
			
			if(pattern == 2 && patternCD == 40){
				firemanShoot(6, 10, 0);
				firemanShoot(6, -10, 0);
				firemanShoot(6, 0, 10);
				firemanShoot(6, 0, -10);
			}
			if(pattern == 2 && patternCD == 20){
				firemanShoot(6, 10, 10);
				firemanShoot(6, -10, 10);
				firemanShoot(6, 10, -10);
				firemanShoot(6, -10, -10);
			}
			if(pattern == 2 && patternCD == 0){
				firemanShoot(6, 10, 0);
				firemanShoot(6, -10, 0);
				firemanShoot(6, 0, 10);
				firemanShoot(6, 0, -10);
			}
			
			
			if(pattern == 3 && patternCD == 80){
				firemanShoot(4, 10, 0);
				firemanShoot(4, -10, 0);
				firemanShoot(4, 0, 10);
				firemanShoot(4, 0, -10);
			}
			if(pattern == 3 && patternCD == 60){
				firemanShoot(6, 10, 0);
				firemanShoot(6, -10, 0);
				firemanShoot(6, 0, 10);
				firemanShoot(6, 0, -10);
				firemanShoot(6, 10, 10);
				firemanShoot(6, -10, 10);
				firemanShoot(6, 10, -10);
				firemanShoot(6, -10, -10);
			}
			if(pattern == 3 && patternCD == 40){
				firemanShoot(4, 10, 0);
				firemanShoot(4, -10, 0);
				firemanShoot(4, 0, 10);
				firemanShoot(4, 0, -10);
			}
			if(pattern == 3 && patternCD == 20){
				firemanShoot(7, 10, 0);
				firemanShoot(7, -10, 0);
				firemanShoot(7, 0, 10);
				firemanShoot(7, 0, -10);
				firemanShoot(7, 10, 10);
				firemanShoot(7, -10, 10);
				firemanShoot(7, 10, -10);
				firemanShoot(7, -10, -10);
			}
			
			if(pattern == 4 && patternCD == 160){ firemanShoot(6, 10, 0); }
			if(pattern == 4 && patternCD == 150){ firemanShoot(6, 10, 10); }
			if(pattern == 4 && patternCD == 140){ firemanShoot(6, 0, 10); }
			if(pattern == 4 && patternCD == 130){ firemanShoot(6, -10, 10); }
			if(pattern == 4 && patternCD == 120){ firemanShoot(6, -10, 0); }
			if(pattern == 4 && patternCD == 110){ firemanShoot(6, -10, -10); }
			if(pattern == 4 && patternCD == 100){ firemanShoot(6, 0, -10); }
			if(pattern == 4 && patternCD == 90){ firemanShoot(6, 10, -10); }
			if(pattern == 4 && patternCD == 80){ firemanShoot(6, 10, 0); }
			if(pattern == 4 && patternCD == 70){ firemanShoot(6, 10, 10); }
			if(pattern == 4 && patternCD == 60){ firemanShoot(6, 0, 10); }
			if(pattern == 4 && patternCD == 50){ firemanShoot(6, -10, 10); }
			if(pattern == 4 && patternCD == 40){ firemanShoot(6, -10, 0); }
			if(pattern == 4 && patternCD == 30){ firemanShoot(6, -10, -10); }
			if(pattern == 4 && patternCD == 20){ firemanShoot(6, 0, -10); }
			if(pattern == 4 && patternCD == 10){ firemanShoot(6, 10,- 10); }
							
			
			if(pattern == 5 && patternCD == 130){ firemanShoot(8, player.x - x, player.y - y); }
			if(pattern == 5 && ( patternCD == 100 || patternCD == 70 || patternCD == 50 || patternCD == 30) ){ 
				do {
					var aa = irandom_range(-10, 10); var bb = irandom_range(-10, 10);
				} until (aa != 0 || bb != 0);
				firemanShoot(8, aa, bb); 
			}
			if(pattern == 5 && patternCD == 10){ firemanShoot(10, player.x - x, player.y - y); }
			
			if(pattern == 6 && patternCD == 110){
				firemanShoot(6, 10, 0);
				firemanShoot(6, 10, -10);
				firemanShoot(6, 10, 10);
				firemanShoot(6, 0, 10);
				firemanShoot(6, 0, -10);
			}
			if(pattern == 6 && patternCD == 90){
				firemanShoot(6, -10, 0);
				firemanShoot(6, -10, 10);
				firemanShoot(6, -10, -10);
				firemanShoot(6, 0, 10);
				firemanShoot(6, 0, -10);
			}
			
			if(pattern == 6 && patternCD == 70){
				firemanShoot(6, 10, 0);
				firemanShoot(6, 10, -10);
				firemanShoot(6, 10, 10);
				firemanShoot(6, 0, 10);
				firemanShoot(6, 0, -10);
			}
			if(pattern == 6 && patternCD == 50){
				firemanShoot(6, -10, 0);
				firemanShoot(6, -10, 10);
				firemanShoot(6, -10, -10);
				firemanShoot(6, 0, 10);
				firemanShoot(6, 0, -10);
			}
			
			if(pattern == 6 && patternCD == 30){
				firemanShoot(8, 10, 0);
				firemanShoot(8, 10, -10);
				firemanShoot(8, 10, 10);
				firemanShoot(8, 0, 10);
				firemanShoot(8, 0, -10);
			}
			if(pattern == 6 && patternCD == 10){
				firemanShoot(8, -10, 0);
				firemanShoot(8, -10, 10);
				firemanShoot(8, -10, -10);
				firemanShoot(8, 0, 10);
				firemanShoot(8, 0, -10);
			}
			
			
			
		}

	
	
	
	
	
}