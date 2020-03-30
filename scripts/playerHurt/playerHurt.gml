
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
	player.hurt = true;
	player.hurtTime = player.hurtTimeMax;
}