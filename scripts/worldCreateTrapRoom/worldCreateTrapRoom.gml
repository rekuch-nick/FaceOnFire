


worldAddRandomBlocks(14);
worldAddWoodBlocks(30);

var n = (min(ceil(player.stage / 10) * 3, 20) + 4);
var tries = 0;
while(n > 0 && tries < 10000){
	tries ++
	var a = irandom_range(0, 24);
	var b = irandom_range(0, 24);
	
	if(bmap[a, b] == "block"){
		bmap[a, b] = "spike";
		n --;
	}
		
}

/*
for(var a=0; a<25; a++){
	for(var b=0; b<25; b++){
		if(irandom_range(0, 1) == 1) {
			if(bmap[a, b] == "block"){ bmap[a, b] = "spike"; }
		}
	}
}
*/
	



worldAddKeys( irandom_range(4, 6), "moveKey" );
worldAddPickups( 0 );



for(var b=irandom_range(4, 6); b<25; b++){
	bmap[irandom_range(5, 20), b] = "movePlat";
	b += irandom_range(1, 2);
}


player.hurtTime = 90;

worldPositionPlayer();


/*
var ok = false;
while(!ok){
	var a = irandom_range(0, 24);
	var b = irandom_range(2, 20);
	
	if(world.bmap[a, b+2] == "block" && world.bmap[a, b] == ""){
		ok = true;	
	}
}

player.x = (a * 32) + 16;
player.y = (b * 32) + 16;
*/