
hasFade = false;
hasFan = false;
hasGeysers = false;
hasHydrants = false;
hasSprings = false;
hasZap = false;

mobsRemaining = 0;

player.y = 30;

for(var a=0; a<25; a++){
	for(var b=10; b<25; b++){
		
		bmap[a, b] = "wood";
		
	}
}

do {
	worldPositionPlayer();
} until (player.y < 200);


var w = ceil(player.stage / 10);
while(w > 10){ w -= 10; }
if(w == 2) {
	instance_create_depth(400, 680, 20, objBoss02);
} else if (w == 4) {
	instance_create_depth(400, 680, 20, objBoss03);
} else if (w == 6) {
	instance_create_depth(400, 680, 20, objBoss04);
} else if (w == 8) {
	player.x = 100; player.y = 100;
	instance_create_depth(400, 100, 20, objMegaDrop);
} else {
	instance_create_depth(400, 680, 20, objBoss01);
	
	mobsRemaining = 0 + min( (w-1) * 3, 16 );
	mobDelay = 30 * 8;
	
	n = 0 + min( ( (w-1) * 4 ), 30);
	while(n > 0){
		a = irandom_range(0, 24);
		b = irandom_range(16, 24);
		
		if(bmap[a, b] == "wood"){ bmap[a, b] = "woodSpike"; n --; }
	}
	
}




