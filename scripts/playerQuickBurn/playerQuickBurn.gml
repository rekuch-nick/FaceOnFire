var xx = argument0;
var yy = argument1;

for(var a = xx - 2; a <= xx + 2; a ++){
	for(var b = yy - 2; b <= yy + 2; b ++){
		if(a < 0 || b < 0 || a > 24 || b > 24){ continue; }
		
		if(world.bmap[a, b] != noone){
			if(object_is_ancestor(world.bmap[a, b].object_index, objBreakable)){
				world.bmap[a, b].hp -= 10;
			}
		}
	}
}