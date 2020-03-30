var t = argument0;

var px = floor(player.x / 32);
var py = floor(player.y / 32);

var n = 1;
while(n > 0){
	a = irandom_range(0, 24);
	b = irandom_range(0, 24);
	var okay = true;
	d = abs(px - a) + abs(py - b);
	
	if(t == objLightningPickup && b < 16){ okay = false; }
	
	if(world.bmap[a, b] == noone && d > 10 && okay){
		n --;
	}
}

s = instance_create_depth(16 + (a * 32), 16 + (b * 32), -20, t);

for(var i=0; i< 30; i++){
	instance_create_depth(16 + (a * 32), 16 + (b * 32), -40, objRandomSpark);
}

