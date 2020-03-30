arena = true;

for(var a=0; a<25; a++){
	bmap[a, 0] = "block";
	bmap[a, 1] = "block";
	bmap[a, 23] = "block";
	bmap[a, 24] = "block";
}


for(var b=0; b<25; b++){
	bmap[0, b] = "block";
	bmap[1, b] = "block";
	bmap[23, b] = "block";
	bmap[24, b] = "block";
}



player.x = 400;
player.y = 400;


worldAddPickups( 0 );


worldPositionPlayer();