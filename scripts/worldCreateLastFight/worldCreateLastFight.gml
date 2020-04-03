
mobsRemaining = 0;
hasFade = false;
hasFan = false;
hasGeysers = false;
hasHydrants = false;
hasPlants = false;
hasSprings = false;
hasZap = false;

pickupCDMax = 30 * 30;

ds_list_add(pickups, objShieldPickup);
if(player.rank < 2){ 
	ds_list_add(pickups, objRankUp2); 
} else {
	ds_list_add(pickups, objShieldPickup);
}

ds_list_add(pickups, objShieldPickup);
ds_list_add(pickups, objRapidShot);

ds_list_add(pickups, objShieldPickup);
if(player.rank < 3){ 
	ds_list_add(pickups, objRankUp3); 
} else {
	ds_list_add(pickups, objShieldPickup);	
}

ds_list_add(pickups, objShieldPickup);
ds_list_add(pickups, objRapidShot);

for(var i=0; i<500; i++){
	ds_list_add(pickups, objBridgeKit);
}



for(var a=0; a<25; a++){
	for(var b=10; b<23; b++){
		
		bmap[a, b] = "wood";
		
	}
}
bmap[5, 23] = "movePlat";
bmap[15, 23] = "movePlat";
for(var a=0; a<25; a++){
	bmap[a, 24] = "water";
}
for(var b=0; b<23; b++){
	bmap[0, b] = "block";
	bmap[24, b] = "block";
}
bmap[0, 0] = "spike";
bmap[24, 0] = "spike";

for(var b=11; b<23; b+= 5){
	bmap[4, b] = "woodHeart";
	bmap[20, b] = "woodHeart";
}
if(player.extraHearts){
	bmap[9, 16] = "woodHeart";
	bmap[16, 16] = "woodHeart";
}

instance_create_depth(400, 200, 20, objFiremanBoss);
	

do {
	worldPositionPlayer();
} until (player.y < 200);


