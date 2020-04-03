if(world.gameState == "play"){
	var n = other;
	var alreadyHit = false;

	for(var i=0; i<ds_list_size(mobsHit); i++){
		if(ds_list_find_value(mobsHit, i) == n){
			alreadyHit = true;
			break;
		}
	}

	if(!alreadyHit){
		ds_list_add(mobsHit, other);
		
		other.incomingDamage += pow;
		if(other.keyKeeper){ pow *= 2.5; }
		//other.hp -= pow;
	}
	
}