var xx = argument0;
var yy = argument1;

var sum = 0;

for(var a=xx-1; a<=xx+1; a++){
	for(var b=yy-1; b<=yy+1; b++){
		
		if(a < 0 || b < 0 || a > 24 || b > 24){ continue; }
		if(bmap[a, b] == noone){ continue; }
		if(bmap[a, b].object_index == objWoodBlock){ sum ++; }
		if(bmap[a, b].object_index == objPlantBlock){ sum ++; }
		
	}
}

return sum;