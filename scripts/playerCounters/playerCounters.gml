if(fireballTime > 0){ 
	fireballTime --; 
	if(fireballTime < 1){ hurtTime += 10; }
}
if(fireballCD > 0){ fireballCD --; }

if(insistJump > 0){ insistJump --; }

if(hurt){
	healCD ++;
	//if(skillHealFast){ healCD ++; }
	//if(skillHealFast2){ healCD += 4; }
	if(character == 11){ healCD += 14; } ///
	if(healCD >= healCDMax){
		playSFX(sfxHeal);
		hurt = false;
	}
} else {
	healCD = 0;
}

if(hurtTime > 0){ hurtTime --; }


if(breathCD > 0){ breathCD --; }

if(tossCD > 0){ tossCD --; }
if(tossCD > 0 && rapidShot > 0){ tossCD -= 2; }

if(bombCD > 0){ bombCD --; }



jumpsMax = 1;
if(skillMultiJump){ jumpsMax ++; }
if(skillMultiJump2){ jumpsMax ++; }

if(wallSlideTime > 0){ wallSlideTime --; }

world.timeInWorld = min(world.timeInWorld + 1, 10000);

world.fadeBlockTime --;
if(world.fadeBlockTime <= 0){
	world.fadeBlockTime = 30 * 10;
	with(objFadeBlock){
		phasedIn = !phasedIn;
		if(phasedIn){
			justPhased = true;
		}
	}
}

if(batCD > 0 && skills[3, 2]){
	batCD --;
}



if(skillFly){ 
	if(ySpeed >= 0 && playerOnGround() ){ flyTime = flyPower; }
}
if(skillFly2){ 
	if(ySpeed >= 0 && playerOnGround() ){ flyTime = flyPower * 2; }
}

if(lightningCD > 0){lightningCD --;}

if(specCD > 0){
	specCD --;
	if(specCD == 0){
		if(character == 5){
			specCD = 30;
			//var s = instance_create_depth(player.x, player.y, -40, objPlayerOrbit);
			//s.position = -90;
			
			//instance_create_depth(x, y, -40, objPlayerToss);
			//var s = instance_create_depth(x, y, -40, objPlayerToss);
			//s.xSpeed *= -1;
		}
	}
}

if(ladderChargeCD > 0 && skillLadder && bombs < bombsMax){
	ladderChargeCD --;
	if(ladderChargeCD < 1){
		ladderChargeCD = 15;
		bombs ++;
		//readoutTime = 30;
	}
}

