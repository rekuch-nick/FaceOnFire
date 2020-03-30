


//clear existing player skills
for(var a=0; a<6; a++){
	for(var b=0; b<3; b++){
		player.skills[a, b] = false;
	}
}


//set choosable hats
cost[0] = 0;
cost[1] = 0;
cost[2] = 0;
cost[3] = 50;
cost[4] = 100;
cost[5] = 150;
cost[6] = 200;
cost[7] = 250;
cost[8] = 300;
cost[9] = 400;
cost[10] = 500;
cost[11] = 1000;



for(var a=0; a<12; a++){
	player.hasHat[a] = false;
}
if(player.savedCandles >= cost[0]){ player.hasHat[0] = true; }
if(player.savedCandles >= cost[1]){ player.hasHat[1] = true; }
if(player.savedCandles >= cost[2]){ player.hasHat[2] = true; }
if(player.savedCandles >= cost[3]){ player.hasHat[3] = true; }
if(player.savedCandles >= cost[4]){ player.hasHat[4] = true; }
if(player.savedCandles >= cost[5]){ player.hasHat[5] = true; }
if(player.savedCandles >= cost[6]){ player.hasHat[6] = true; }
if(player.savedCandles >= cost[7]){ player.hasHat[7] = true; }
if(player.savedCandles >= cost[8]){ player.hasHat[8] = true; }
if(player.savedCandles >= cost[9]){ player.hasHat[9] = true; }
if(player.savedCandles >= cost[10]){ player.hasHat[10] = true; }
if(player.savedCandles >= cost[11]){ player.hasHat[11] = true; }

cursor = player.character;

for(var i=0; i<12; i++){
	a = 60 + (i * 60);
	b = 220;
	hats[i] = instance_create_depth(a, b, -104, objHat);
	hats[i].image_index = i;
	if(!player.hasHat[i]){ hats[i].image_blend = c_black; }
	
}