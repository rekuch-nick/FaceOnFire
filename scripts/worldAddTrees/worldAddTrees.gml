var n = argument0;
var tries = 0;

while(n > 0 && tries < 10000){
	tries ++;
	var a = irandom_range(0, 24);
	var b = irandom_range(0, 23);
	
	if(bmap[a, b] == "" && bmap[a, b+1] == "wood"){
		bmap[a, b] = "tree";
		n --;
	}
}