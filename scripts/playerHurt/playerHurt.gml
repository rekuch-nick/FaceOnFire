
if(player.hurtTime > 0){ return; }

if(player.shield != noone){
	playSFX(sfxHurt);
	instance_destroy(player.shield);
	player.shield = noone;
	player.hurtTime = player.hurtTimeMax;
		
	return;
}




if(player.hurt){
	playSFX(sfxDead);
	world.gameState = "dying";
	player.ySpeed = 0;
} else {
	playSFX(sfxHurt);
	player.hurtsThisStage ++;
	player.hurt = true;
	player.hurtTime = player.hurtTimeMax;
	var bonus = 0;
	if(player.skillHealFast){ bonus = 2; }
	if(player.skillHealFast2){ bonus = 4; }
	player.healCDMax = max(player.hurtsThisStage - bonus, 1) * 30 * 4;
	if(player.healCDMax > 30 * 45){ player.healCDMax = 30 * 45; }
	//show_debug_message(player.healCDMax);
	player.healCD = 0;
	
	
	if(player.skillRevenge){
		with(objMob){
			d = point_distance(player.x, player.y, x, y);
			if( d < 150){
				for(i=0; i<20; i++){
					instance_create_depth(x+irandom_range(-10, 10), y+irandom_range(-10, 10), -40, objRandomSpark);
				}
				flashTime = 40;
				incomingDamage += 10;
			}
		}
	}
	
	
	
	
}