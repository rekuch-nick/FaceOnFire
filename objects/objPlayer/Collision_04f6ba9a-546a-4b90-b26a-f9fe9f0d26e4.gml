if(world.gameState == "play" && other.bumpPlayer){
	if(fireballTime > 0){
		other.incomingDamage += 2;
		
		return;
	}
	
	if(meteoAttack && other.bumpPlayer){
		bounceMeteo = true;
		other.incomingDamage += 2;
		bopBounce = skillMeteorStrike;
		
		return;
	}
	
	
	
	
	

	if(fireballTime < 1 && hurtTime < 1 && !meteoAttack && other.flashTime < 1 && !sparkOut && other.stunTime < 1){
		
		playerHurt();
		xPush = other.x < x ? other.xShove : other.xShove * -1;
		
		
	
	}
	
}