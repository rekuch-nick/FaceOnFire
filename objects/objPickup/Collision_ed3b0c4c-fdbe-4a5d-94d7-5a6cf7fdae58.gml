

if(world.gameState == "play"){
	
	playSFX(sound);

	if(destroyOnCollect){
		if(ref != noone){
			ref.childPickup = noone;
		}
		instance_destroy();
	}
	
}