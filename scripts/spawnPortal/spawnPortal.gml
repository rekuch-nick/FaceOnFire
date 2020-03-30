var note = argument0;

var px = floor(player.x / 32);
var py = floor(player.y / 32);

var n = 1;
while(n > 0){
	a = irandom_range(0, 24);
	b = irandom_range(0, 24);
	
	d = abs(px - a) + abs(py - b);
	
	if(world.bmap[a, b] == noone && d > 10){
		n --;
	}
}

s = instance_create_depth(16 + (a * 32), 16 + (b * 32), -25, objPortal);

if(note == "fast"){
	s.existedTime = 25 * 30;
}