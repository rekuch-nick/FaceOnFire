


var tries = 0;
var okay = false;
var distance = 0;

while(tries < 2500 && !okay){
	tries++;
	distance = tries / 50;
	
	var a = irandom_range(0, 24);
	var b = irandom_range(2, 20);
	
	var d = abs(a - floor(player.x / 32)) + abs(b - floor(player.y / 32));
	
	if(bmap[a, b] == ""){ okay = true; }

	if(d > distance){ okay = false; }

	
	
	
}

if(okay){
	player.x = (a * 32) + 16;
	player.y = (b * 32) + 16;
}