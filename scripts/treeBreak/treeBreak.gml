var a = argument0;
var b = argument1;



for(var i=0; i<12; i++){ instance_create_depth((a * 32) + 16, (b * 32) - 16, -40, objLeaf); }
instance_destroy(world.bmap[a, b]);
world.bmap[a, b] = noone;

//var n = irandom_range(1, 4);
//for(var i=0; i<n; i++){
//	instance_create_depth((a * 32) + 16, (b * 32) + 16, -20, objCandle);
//}

//instance_create_depth((a * 32) + 16, (b * 32) + 16, -30, objEnt);