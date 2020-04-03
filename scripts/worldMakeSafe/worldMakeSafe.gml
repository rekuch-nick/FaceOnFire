
playMusic("bossDown");

with(objBlock){ 
	if(object_index == objSpikeBlock){
		world.bmap[(x / 32), (y / 32)] = instance_create_depth(x, y, 10, objBlock);
	
		instance_destroy(); 
	}
	
	if(object_index == objWoodBlock){
		if(extra != noone){
			if(extra.object_index == objExtraCurse){
				instance_destroy(extra);
				extra = noone;
			}
		}
	}
}

with(objWater){ 
	world.bmap[(x / 32), (y / 32)] = noone;
	instance_destroy(); 
}

with(objMob){ deathSpawn = noone; hp = 0; }
with(objWaterShot){ instance_destroy(); }
with(objEnemyShot){ instance_destroy(); }
with(objMobComing){ instance_destroy(); }
with(objGeyser){ instance_destroy(); }


world.mobsRemaining = 0;