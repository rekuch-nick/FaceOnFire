
for(var b=irandom_range(1, 5); b<25; b+=0){
	b += irandom_range(0, 8);
	for(var a=0; a<25; a++){
		var r = irandom_range(0, 3);
		if(r != 0){
			bmap[a, b] = "platform";
		}
	}
}
