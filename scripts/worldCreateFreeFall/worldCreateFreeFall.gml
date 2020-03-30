



worldAddRandomBlocks(15);
if(hasPlants){
	for(var a=0; a<25; a++){
		for(var b=0; b<25; b++){
			if(bmap[a, b] == "block" && irandom_range(0,2)==0){ bmap[a, b] = "plant"; }
		}
	}
}


if(inWorld > 1){
	worldAddKeys( irandom_range(4, 6), "runKey" );
} else {
	worldAddKeys( irandom_range(4, 6), "" );
}

worldAddPickups( 0 );


worldPositionPlayer();