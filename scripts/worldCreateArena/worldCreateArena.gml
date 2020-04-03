arena = true;

for(var a=0; a<25; a++){
	bmap[a, 0] = "block";
	bmap[a, 1] = "block";
	bmap[a, 23] = "block";
	bmap[a, 24] = "block";
}

for(var a=10; a<15; a++){
	bmap[a, 22] = "block";
}

for(var b=0; b<25; b++){
	bmap[0, b] = "block";
	bmap[1, b] = "block";
	bmap[23, b] = "block";
	bmap[24, b] = "block";
}



if(hasFade){
	var s = "fade1";
	for(a=0; a<25; a++){
		for(var b=22; b<25; b++){
			
			if(a % 6 == 0){
				if(s == "fade1"){ s = "fade2"; } else {s = "fade1"; }
			}
			
			if(bmap[a, b] == "block"){
				bmap[a, b] = s;
			}
		}
	}
	
}



player.x = 400;
player.y = 400;


worldAddPickups( 0 );


worldPositionPlayer();