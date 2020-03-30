

worldAddWoodBlocks(16);
for(var a=0; a<25; a++){ bmap[a, 24] = "water"; }


worldAddRandomBlocks(15);
worldAddKeys( irandom_range(4, 6), "moveKey" );

worldAddPickups( 0 );





bmap[12, 23] = "movePlat";


var ok = false;
while(!ok){
	var a = irandom_range(0, 24);
	var b = irandom_range(2, 12);
	
	if(world.bmap[a, b+2] == "block" && world.bmap[a, b] == ""){
		ok = true;	
	}
}

player.x = (a * 32) + 16;
player.y = (b * 32) + 16;

