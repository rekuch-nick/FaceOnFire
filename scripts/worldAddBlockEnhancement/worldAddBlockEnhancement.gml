
var num = argument0;
var typ = argument1;

var minAdjacent = 0;
if(typ == objExtraBomb){ minAdjacent = 4; }

var tries = 0;
while(tries < 1000 && num > 0){
	tries ++;

	var a = irandom_range(0, 24);
	var b = irandom_range(0, 24);
	
	
	if(world.bmap[a, b] == noone){ continue; }
	if(world.bmap[a, b].object_index != objWoodBlock){ continue; }
	if(world.bmap[a, b].extra != noone){ continue; }
	
	if(minAdjacent > 0 && adjacentWoodBlocks(a, b) < minAdjacent){ continue; }
	
	world.bmap[a, b].extra = instance_create_depth(world.bmap[a, b].x, world.bmap[a, b].y, 9, typ);
	num --;
}