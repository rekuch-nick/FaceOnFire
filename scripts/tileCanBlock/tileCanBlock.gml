var a = argument0;
var b = argument1;



if(a < 0 || b < 0 || a > 24 || b > 24){ return false; }

var t = world.bmap[a, b];
if(t == noone){ return false; }

if(t.object_index == objBlock){ return true; }
if(t.object_index == objZapBlock){ return true; }
if(t.object_index == objWoodBlock){ return true; }
if(t.object_index == objPlantBlock){ return true; }
if(t.object_index == objStickyBlock){ return true; }
if(t.object_index == objSpring){ return true; }
if(t.object_index == objFanLeft){ return true; }
if(t.object_index == objFanRight){ return true; }
if(t.object_index == objFadeBlock){ 
	if(t.phasedIn){ return true; }
}
if(t.object_index == objSpikeBlock){ 
	player.xSpikeCheck = a; 
	player.ySpikeCheck = b; 
	return true; 
}




return false;