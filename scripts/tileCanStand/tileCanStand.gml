var a = argument0;
var b = argument1;

if(a < 0 || b < 0 || a > 24 || b > 24){ return false; }

if(tileCanBlock(a, b)){ return true; }

var t = world.bmap[a, b];
if(t == noone){ return false; }

if(t.object_index == objPlatform || t.object_index == objFirePlatform){ 
	
	
	if(self.object_index == objPlayer){
		if(player.duckTime < 5){ return true; } else { return false; }
	}
	
	return usePlatform;
	return true; 
	if (object_get_parent(objMob) || object_index == objMob) {
		return true;
		return self.usePlatform;
	}
	
	if (self.object_index == objPickup) {
		return true;
	}
}




return false;