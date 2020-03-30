
var rarity = argument0;


var ex = irandom_range(0, 24);
var ey = irandom_range(0, 24);

var ex2 = irandom_range(0, 24);
var ey2 = irandom_range(0, 24);

var ex3 = irandom_range(0, 24);
var ey3 = irandom_range(0, 24);



for(var a=0; a<25; a++){
	for(var b=1; b<25; b++){
		
		var d1 = abs(a - ex) + abs(b - ey);
		var d2 = abs(a - ex2) + abs(b - ey3);
		var d3 = abs(a - ex2) + abs(b - ey3);
		var rmod = 0;
		rmod += d1 < 5 ? 3 : 0;
		rmod += d2 < 5 ? 3 : 0;
		rmod += d3 < 5 ? 3 : 0;
		
		var r = irandom_range(0, rarity + rmod);
		if(r == 0){
			bmap[a, b] = "wood";
		}
	}
}