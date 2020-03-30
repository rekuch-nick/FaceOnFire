


if(world.gameState == "play"){
	
	if(stunTime > 0){ stunTime --; return; }
	
	thinkCD --;
	if(thinkCD < 1){
		thinkCD = thinkCDMax;
		
		if(moveType == ""){
		
			if(hasHitWall || irandom_range(0, 99) < randomTurnChance){ 
				if(irandom_range(0, 99) < wallTurnChance){
					xDir *= -1; hasHitWall = false;
				}
			}
			
			if(irandom_range(0, 99) < hunt){
				if(player.x + 4 < x){ xDir = -1; }
				if(player.x - 4 > x){ xDir = 1; }
			}
		
			if(irandom_range(0, 99) < jumpChance){
				if(!preventAirJump || ySpeed == 0){
					ySpeed = jumpPower * -1;
				}
			}
			
			if(irandom_range(0, 99) < dropChance || (dropChance != 0 && !usePlatform) ||
					(dropHunt && player.y < y)	){
				usePlatform = !usePlatform;
			}
		
		
			xSpeed = moveSpeed * xDir;
		}
		
		if(moveType == "vert"){
			yDir *= -1;
			ySpeed = yDir * moveSpeed;
			xDir *= -1;
		}
		
		if(moveType == "hor"){
			xDir *= -1;
			xSpeed = xDir * moveSpeed;
		}
		
		if(moveType == "fly"){
			var tx = irandom_range(16, 724);
			var ty = irandom_range(16, 724);
			
			var angle = arctan2(ty - y, tx - x);
			xSpeed = moveSpeed * cos(angle);
			ySpeed = moveSpeed * sin(angle);
			
			xDir = xSpeed < 0 ? -1 : 1;
			
			/*
			xSpeed = irandom_range(0, moveSpeed);
			ySpeed = moveSpeed - xSpeed;
			if(irandom_range(0, 1) == 0){ xSpeed *= -1; }
			if(irandom_range(0, 1) == 0){ ySpeed *= -1; }
			
			if(y < 100 && ySpeed < 0 && irandom_range(0, 3) != 0){ ySpeed *= -1; }
			if(y > 700 && ySpeed > 0 && irandom_range(0, 3) != 0){ ySpeed *= -1; }
			*/
		}
		
		if(moveType == "boss" || moveType == "bossFar" || moveType == "bossLow"){
			
			
			var tx = irandom_range(40, 760);
			var ty = irandom_range(140, 760);
			if(moveType == "bossLow"){ var ty = irandom_range(340, 760); }
			
			if(moveType == "bossFar"){
				while( point_distance(x, y, tx, ty) < 400 ){
					var tx = irandom_range(10, 790);
					var ty = irandom_range(10, 790);
				}
				thinkCD = distance_to_point(tx, ty) / moveSpeed;
			}
		
			var angle = arctan2(ty - y, tx - x);
			xSpeed = moveSpeed * cos(angle);
			ySpeed = moveSpeed * sin(angle);
		
			var distance = sqrt( (x - tx)*(x - tx) + (y - ty)*(y - ty) );
			thinkCD = min ( (distance / moveSpeed) - 1, thinkCDMax );
			
			xDir = xSpeed < 0 ? -1 : 1;
			
						
		}
		
		if(moveType == "path"){
			x = (floor(x/32) * 32) + 16; //snap into place
			y = (floor(y/32) * 32) + 16;
			
			xSpeed = 0; ySpeed = 0;
			
			if(ds_list_empty(xPath)){
				pathSteps = 0;
				pathFind(floor(x/32), floor(y/32), floor(player.x/32), floor(player.y/32));
			}
			
			if(!ds_list_empty(xPath)){
				
				txTile = ds_list_find_value(xPath, 0);
				tyTile = ds_list_find_value(yPath, 0);
				
				txPoint = (txTile * 32) + 16;
				tyPoint = (tyTile * 32) + 16;
				
				var angle = arctan2(tyPoint - y, txPoint - x);
				xSpeed = moveSpeed * cos(angle);
				ySpeed = moveSpeed * sin(angle);
				xDir = xSpeed < 0 ? -1 : 1;
				
				
				//x = (txTile * 32) + 16; y = (tyTile * 32) + 16; xSpeed = 0; ySpeed = 0;
				
				ds_list_delete(xPath, 0);
				ds_list_delete(yPath, 0);
				
				thinkCD = 32 / moveSpeed;
				
				pathSteps ++;
				if(pathSteps > pathStepsMax){
					ds_list_clear(xPath);
					ds_list_clear(yPath);
				}
			} else {
				thinkCD *= 2;
				xSpeed = 0;
				ySpeed = 0;
			}
		}
		if(moveType == "hug"){
			
			var tries = 0;
			var d1 = mobWallCheck(x, y + moveSpeed * -1, false);
			var d2 = mobWallCheck(x + moveSpeed, y, false);
			var d3 = mobWallCheck(x, y + moveSpeed, false);
			var d4 = mobWallCheck(x + moveSpeed * -1, y, false);
			
			if(!mobWallCheck(x + xSpeed, y + ySpeed, false) || (d1 && d2 && d3 && d4)){
				
				var dirOkay = true;
				
				//var dirs = 0;
				//if(d1){ dirs ++; }
				//if(d2){ dirs ++; }
				//if(d3){ dirs ++; }
				//if(d4){ dirs ++; }
				
				
				
				if(d1 || d2 || d3 || d4){
					hugDir = 0;
					while(hugDir == 0){
						tries ++;
						var r = irandom_range(1, 4);
						if(d1 && d2 && d3 && d4){
							var onLeft = x % 32 < 16;
							var onTop = y % 32 < 16;
							
							if(lastHugDir == 1){ d1 = false; if(onLeft){d2 = false;} else {d4 = false;} }
							if(lastHugDir == 2){ d2 = false; if(onTop){d3 = false;} else {d1 = false;} }
							if(lastHugDir == 3){ d3 = false; if(onLeft){d2 = false;} else {d4 = false;} }
							if(lastHugDir == 4){ d4 = false; if(onTop){d3 = false;} else {d1 = false;} }
						}
						if(d1 && r == 1 && lastHugDir != 3 /*&& (dirs != 4 || lastHugDir % 2 == 0)*/ ){ hugDir = r; xSpeed = 0; ySpeed = moveSpeed * -1; }
						if(d2 && r == 2 && lastHugDir != 4 /*&& (dirs != 4 || lastHugDir % 2 == 1)*/ ){ hugDir = r; xSpeed = moveSpeed; ySpeed = 0; xDir = 1;}
						if(d3 && r == 3 && lastHugDir != 1 /*&& (dirs != 4 || lastHugDir % 2 == 0)*/ ){ hugDir = r; xSpeed = 0; ySpeed = moveSpeed; }
						if(d4 && r == 4 && lastHugDir != 2 /*&& (dirs != 4 || lastHugDir % 2 == 1)*/ ){ hugDir = r; xSpeed = moveSpeed * -1; ySpeed = 0; xDir = -1;}
						
						if(tries > 40){ dirOkay = false; break; }
					}
				} else {
					dirOkay = false;
				}
			
			
				lastHugDir = hugDir;
			
			
				if(!dirOkay){
				
					lastHugDir = 0;
					if(xSpeed != 1 && xSpeed != 0){ xSpeed = 0; }
					if(irandom_range(0, 40)==0){ xSpeed = irandom_range(-1, 1); }
					ySpeed = 3;
					
				}
				
			}
			
		}
		
		if(rotateOnThink){ image_angle += irandom_range(0, 359); }
	}
	
	
	
	//x move
	var xxSpeed = xSpeed;
	if(ySpeed < 0){ xxSpeed *= upLeap; }
	if(ySpeed > 0){ xxSpeed *= downLeap; }
	for(i=0; i<abs(xxSpeed); i++){
		x += xDir;
		var xPoint = x + (xDir * bodyX);
		if(!passWall){ if(mobWallCheck(xPoint, y + footY - 1, false) || mobWallCheck(xPoint, y + headY, false)){
			x -= xDir;
			hasHitWall = true;
			if(xChangeOnBump){ xDir *= -1; xSpeed *= -1; }
			break;
		}}
	}
	
	while(x < 10 && !skirtBounds){ x ++; hasHitWall = true;}
	while(x > 790 && !skirtBounds){ x --; hasHitWall = true;}
	
	//if(thinkOnWall && hasHitWall){ thinkCD = 0; }
	
	
	
	
	//y move
	
	// set ySpeed to 0 if falling but on ground
	if(!passWall){
		if(mobOnGround()){
			if(ySpeed > 0 && grav > 0){ ySpeed = 0; }
			if(yChangeOnBump){ yDir *= -1; ySpeed *= -1; }
		} else {
			ySpeed = min(ySpeed + grav, 10);
		}
	}
	
	//go up
	for(i = ySpeed; i < 0; i ++){
		y --;
		if(!passWall){ if(mobWallCheck(x + bodyX, y + headY, false) || mobWallCheck(x - bodyX, y + headY, false) || mobWallCheck(x, y + headY, false)){
			y ++;
			if(yChangeOnBump){ yDir *= -1; ySpeed *= -1; }
			break;
		}}
	}
	
	//go down
	for(i = ySpeed; i > 0; i --){
		if(!passWall){ if(mobOnGround() ){ break; } }
		y ++;
	}
	
		
	while(y < -10){ y ++; }
	if(y > 800 && canLoop){ y = -10; flashTime = 20;}
	if(!canLoop && y < 16){ y = 16; }
	if(y > 784 && !canLoop){ y = 784; }
	//ySpeed = floor(ySpeed);
	
	
	if(immuneTime > 0){ immuneTime --; }
	if(incomingDamage > 0){
		if(immuneTime < 1){ 
			if(incomingDamage > woundPerSecondMax){ 
				immuneTime = 15;
				incomingDamage = woundPerSecondMax; 
			}
			hp -= incomingDamage; 
			immuneTime = immuneTimeMax;
		}
		incomingDamage = 0;
		if(hp > 0){
			playSFX(sfxHitMob);
		} else {
			playSFX(sfxKillMob);
		}
		if(canFlash){ flashTime = flashTimeMax; }
	}
	incomingDamage = 0;
	
	
	//shoot warning and scale stuff
	if(shotType != "" && shotCD < shotWiggle ){
		xTempScale = random_range(.95, 1.05);
		yTempScale = random_range(.95, 1.05);
	} else {
		xTempScale = 1;
		yTempScale = 1;
	}
	image_xscale = 1 * xTempScale * sizeMod;
	image_yscale = 1 * yTempScale * sizeMod;
	
	
	
	if(faceDir){ image_xscale = xDir * sizeMod; }
	if(lookAtPlayer){ image_xscale = player.image_xscale * sizeMod; }
	
	/// shooting ///
	if(shotType != "" && hp > 0){
		
		if(shootAcrossX){
			var xd = abs(player.x - x);
			var yd = abs(player.y - y);
			if(yd > xd){
				if(shotCD < shotWiggle + 2){
					shotCD = shotWiggle + 2;
				}
			}
		}
		
		
		
		shotCD --;
		if(shotCD < 1){
			if(shotType == "boss01"){
				waterShoot(6, 0, -10, "", 0, 0);
			} else if (shotType == "boss02"){
				shotNum ++; if(shotNum > 8){ shotNum = 1; }
				if(shotNum == 1){ waterShoot(6, 0, -10, "", 0, 0); }
				if(shotNum == 2){ waterShoot(6, -10, -10, "", 0, 0); }
				if(shotNum == 3){ waterShoot(6, -10, 0, "", 0, 0); }
				if(shotNum == 4){ waterShoot(6, -10, 10, "", 0, 0); }
				if(shotNum == 5){ waterShoot(6, 0, 10, "", 0, 0); }
				if(shotNum == 6){ waterShoot(6, 10, 10, "", 0, 0); }
				if(shotNum == 7){ waterShoot(6, 10, 0, "", 0, 0); }
				if(shotNum == 8){ waterShoot(6, 10, -10, "", 0, 0); }
			} else if (shotType == "boss03"){
				for(var a=16; a<790; a+= irandom_range(32, 120)){
					waterShoot(6, (x * -1) + a, 900, "", (x * -1) + a, y * -1);
				}
			} else if (shotType == "boss04") {
				var tx = player.x + irandom_range(-50, 50) - x;
				var ty = player.y + irandom_range(-50, 50) - y;
				waterShoot(6, tx, ty, "", 0, 0);
			} else if (shotType == "random") {
				var s = instance_create_depth(x, y, -40, objEnemyShot);
				s.moveType = ""; // s.grav = 1;
			} else if (shotType == "drip") {
				var s = instance_create_depth(x, y, -40, objEnemyShot);
				s.moveType = "drip";
			} else if (shotType == "snipe") {
				var s = instance_create_depth(x, y, -40, objEnemyShot);
				s.moveType = "player"; s.moveSpeed = 8;
			}
			
			
			
			shotCD = shotCDMax;
			if(irandom_range(0, 99) < doubleTap){ shotCD = shotCDMax / 10; }
			if(irandom_range(0, 99) < multiTap){ shotCD = shotCDMax / 10; }
		}
		
		
	}
	
	
	
	
	/// spec procs
	if(burnBlocks && irandom_range(0, 9) == 0){
		var a = floor(x / 32);
		var b = floor(y / 32);
		
		for(var aa = a-1; aa <= a+1; aa ++){
			for(var bb = b-1; bb <= b+1; bb ++){
				if(tileCanBlock(aa, bb)){
					if(object_is_ancestor(world.bmap[aa, bb].object_index, objBreakable)){
						world.bmap[aa, bb].hp -= 4;
					}
				}
			}
		}
	}
	
	if(tileBreakFromBG) {
		tileBreakCD --;
		if(tileBreakCD < 1){
			bossBreakTile(x, y);
			tileBreakCD = tileBreakCDMax;
		}
	}
	
	
	
	if(makeObject != noone && followObject == noone){
		followObject = instance_create_depth(x, y, -31, makeObject);
	}
	if(followObject != noone){
		
		followObject.x = x;
		followObject.y = y;
		followObject.image_xscale = image_xscale;
		
		if(makeObject == objSnowRifle){
			followObject.image_angle = point_direction(x, y, player.x, player.y);
			//if(image_xscale < 0){ followObject.image_angle *= -1; }
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	if(hitByTrail > 0){ hitByTrail --; }
	
	
	if(flashTime > 0){
		flashTime --;
		var r = flashTime % 5;
		if(r == 0){ image_blend = c_red; }
		if(r == 1){ image_blend = c_green; }
		if(r == 2){ image_blend = c_yellow; }
		if(r == 3){ image_blend = c_aqua; }
		if(r == 4){ image_blend = c_fuchsia; }
		//image_blend = make_colour_hsv(random(255), random(255), random(255));
	} else {
		image_blend = c_white;
	}
	
	
	
	
	
	
	
	if(hp < 1){
		if(makeSafeOnDeath){ worldMakeSafe(); }
		
		if(deathSpawn != noone){
			n = irandom_range(deathSpawnMin, deathSpawnMax);
			for(i=0; i<n; i++){
				a = x + irandom_range(-16, 16);
				b = y + irandom_range(-16, 16);
				s = instance_create_depth(a, b, -30, deathSpawn);
				s.flashTime = 30;
			}
		}
		
		
		remove = true;
		var n = irandom_range(0, candleRange);
		for(var i=0; i<n; i++){
			instance_create_depth(x, y, -20, objCandle);
		}
		
		if(keyKeeper){
			instance_create_depth(x, y, -20, objKey);
		}
	}
	
	if(remove){
		if(followObject != noone){
			instance_destroy(followObject);
		}
		instance_destroy();
	}
	
	
}