

var type = inWorld;
while(type > 7){ type -= 7; }



for(var a=0; a<25; a++){
	bmap[a, 0] = "";
}

if(type == 1){


	for(var a=0; a<25; a++){
		for(var b=1; b<25; b++){
			bmap[a, b] = "platform";
			if(irandom_range(0, 9) == 0){ a += irandom_range(1, 3); }
		}
	}
	
} else if (type == 2) {
	
	worldAddWoodBlocks(16);
	
	for(var a=3; a<22; a++){
		//bmap[a, 5] = "platform";
		if(irandom_range(0, 3) == 0){ a += 2; }
	}
	
	for(var a=3; a<25; a+= 6){
		for(var b=2; b<23; b++){
			bmap[a, b] = "sticky";
			
			if(irandom_range(0, 5) == 1){ b += 2; }
		}
	}
	
	//for(var i=2; i<6; i++){ world.mobList[i] = objBubble; } 
	
/*	
} else if (type == 3) {
	for(b=5; b<15; b+= 2){ bmap[12, b] = "movePlat"; }
	
	for(a=0; a<25; a++){
		bmap[a, 21] = "spring";
		if(a == 10){ a = 14; }
	}
	
	for(a=0; a<25; a+= 3){
		bmap[a, 5] = "platform";
	}
	
*/


} else if (type == 4) {
	s = "fade1";
	for(var b=6; b<25; b+= 5){
		if(s == "fade1"){ s = "fade2"; } else { s = "fade1"; }
		for(var a=0; a<25; a++){
			bmap[a, b] = s;
		}
	}
	
	
} else if (type == 5) {
	
	
	
	for(var a=3; a<22; a++){
		if(irandom_range(0, 3) == 0){ a += 2; }
	}
	
	for(var a=3; a<25; a+= 6){
		for(var b=2; b<16; b++){
			bmap[a, b] = "sticky";
			
			if(irandom_range(0, 5) == 1){ b += 2; }
		}
	}
	
	bmap[5, 19] = "spring"; bmap[6, 19] = "spring"; bmap[7, 19] = "spring";
	bmap[11, 19] = "spring"; bmap[12, 19] = "spring"; bmap[13, 19] = "spring";
	bmap[17, 19] = "spring"; bmap[18, 19] = "spring"; bmap[19, 19] = "spring";
	
	for(a=0; a<25; a++){ 
		if(a == 5){ a = 8; }
		if(a == 11){ a = 14; }
		if(a == 17){ a = 20; }
		bmap[a, 24] = "spike";
	}
	
	bmap[0, 0] = "zap";
	bmap[0, 24] = "zap";
	bmap[24, 0] = "zap";
	bmap[24, 24] = "zap";
	
	
} else if (type == 6) {
	
	for(var b=6; b<22; b++){
		bmap[0, b] = "fanR";
		bmap[14, b] = "fanR";
		
		bmap[24, b] = "fanL";
		bmap[10, b] = "fanL";
		
		bmap[11, b] = "block2";
		bmap[12, b] = "block2";
		bmap[13, b] = "block2";
		
		if(b == 10){b += 4;}
	}
	
	for(var b=22; b<25; b++){
		var s = "block2";
		s = "spike";
		
		bmap[0, b] = s;
		bmap[10, b] = s;
		bmap[11, b] = s;
		bmap[12, b] = s;
		bmap[13, b] = s;
		bmap[14, b] = s;
		bmap[24, b] = s;
	}

	
	bmap[6, 7] = "movePlat";
	bmap[17, 8] = "movePlat";
	bmap[6, 17] = "movePlat";
	bmap[17, 18] = "movePlat";
	
} else if (type == 7){
	
	for(a=0; a<25; a++){ for(b=0; b<25; b++){
		if(irandom_range(0,3)==0){ bmap[a, b] = "plant"; }
	}}
	


} else {

	for(var b=3; b<25; b++){
		for(var a=0; a<25; a++){
			bmap[a, b] = "platform";
			if(irandom_range(0, 9) == 0){ a += irandom_range(1, 3); }
		}
	}
	

	
}


worldAddKeys( irandom_range(4, 6), "keyEgg" );




worldPositionPlayer();





