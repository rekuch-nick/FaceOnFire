if(world.gameState == "play"){
	
	if(other.hitByTrail < 1){
		other.incomingDamage += pow;
		other.hitByTrail = 20;
	}
	
	if(other.nullShot){ remove = true; }
	
}