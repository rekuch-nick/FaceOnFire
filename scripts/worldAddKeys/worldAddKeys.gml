var n = argument0;
var t = argument1;

if(t == ""){ t = "key"; }

var tries = 0;

while(n > 0 && tries < 10000){
	tries ++;
	var a = irandom_range(0, 24);
	var b = irandom_range(0, 24);
	var okay = true;
	
	if(t == "keyEgg"){
		okay = false;
		for(var xx=a-1; xx<=a+1; xx++){
			for(var yy=b-1; yy<=b+1; yy++){
				if(xx < 0 || yy < 0 || xx > 24 || yy > 24){ continue; }
				if(bmap[xx, yy] == "platform" || bmap[xx, yy] == "block" ||
						bmap[xx, yy] == "sticky" || bmap[xx, yy] == "fade1" || bmap[xx, yy] == "fade2" ||
						bmap[xx, yy] == "fade" || bmap[xx, yy] == "fanR" || bmap[xx, yy] == "fanL" ||
						bmap[xx, yy] == "plant" ){
					okay = true;
					break;
				}
			}
		}
	}
	
	
	if(bmap[a, b] != ""){ okay = false; }
	
	if(okay){
		bmap[a, b] = t;
		n --;
	}
}