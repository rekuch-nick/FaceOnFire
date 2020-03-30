if(world.gameState == "play"){
	
	
	if(y > player.y && abs(x - player.x) < 48){
		if(player.meteoAttack && other.bumpPlayer){
			player.bounceMeteo = true;
			player.bopBounce = player.skillMeteorStrike;
		}
	}
	
	other.incomingDamage += pow;
	remove = true;
	
	
}