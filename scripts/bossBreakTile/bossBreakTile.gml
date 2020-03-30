var tx = argument0;
var ty = argument1;

var tries = 0;
var okay = false;


while(!okay && tries < 1000){
	tries ++; 
	var a = floor(tx / 32);
	var b = floor(ty / 32);
	
	a += irandom_range(-1, 1);
	a += irandom_range(-1, 1);
	b += irandom_range(-1, 1);
	b += irandom_range(-1, 1);
	
	if(!tileCanBlock(a, b)){ okay = false; continue; }
	
	if(world.bmap[a, b] == noone){ okay = false; continue; }
	
	if(world.bmap[a, b].object_index == objWoodBlock){ okay = true; }
	
}

if(okay){
	
	//instance_destroy(world.bmap[a, b]);
	//world.bmap[a, b] = noone;
	world.bmap[a, b].hp = 0;
}