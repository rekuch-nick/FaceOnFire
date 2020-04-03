mobsRemaining = 0;
hasFade = false;
hasFan = false;
hasGeysers = false;
hasHydrants = false;
hasPlants = false;
hasSprings = false;
hasZap = false;



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
	bmap[24, b] = "block";
}

bmap[20, 20] = "key";

player.x = 100;
player.y = 400;