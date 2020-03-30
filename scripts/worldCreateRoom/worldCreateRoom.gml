worldClearRoom();


//reset some player stuff...
player.hurt = false;
if(player.skillSlowAura){ instance_create_depth(player.x, player.y, -1, objSlowAura); }
if(player.skillShield && player.shield == noone){
	var s = instance_create_depth(player.x, player.y, -1, objPlayerShield);
	player.shield = s;
}
player.bombs = player.bombsMax;
player.onLadder = false;


//setup world stuff...
inWorld = ceil(player.stage / 10);
inZone = player.stage % 10;

hasHydrants = false;
hasSprings = false;
hasFade = false;
hasZap = false;
hasFan = false;
hasPlants = false;
hasGeysers = false;

if(inWorld == 2){ hasHydrants = true; }
if(inWorld == 3){ hasSprings = true; }
if(inWorld == 4){ hasFade = true; }
if(inWorld == 5){ hasZap = true; }
if(inWorld == 6){ hasFan = true; }
if(inWorld == 7){ hasPlants = true; }
if(inWorld == 8){ hasGeysers = true; }
if(inWorld >= 9){ 
	for(var i=0; i<2; i++){
		var r = irandom_range(1, 7);
		if(r == 1){hasHydrants = true; }
		if(r == 2){hasSprings = true; }
		if(r == 3){hasFade = true; }
		if(r == 4){hasZap = true; }
		if(r == 5){hasFan = true; }
		if(r == 6){hasPlants = true; }
		if(r == 7){hasGeysers = true; }
	}
	
}

audio_master_gain(1);
playMusic(string(inZone));

arena = false;
mobsRemaining = 9 + inWorld
mobDelay = 30 * 3;
if(player.stage % 10 == 4){ mobDelay *= .3; }
timeInWorld = 0;
ds_list_clear(pickups);
pickupCD = 30 * 5;

worldChooseMobs();

//during map creation, store strings in bmap
for(var a=0; a<25; a++){
	for(var b=0; b<25; b++){
		bmap[a, b] = "";
	}
}

if(player.stage % 10 == 2){
	worldCreateFreeFall();
} else if(inZone == 4){
	worldCreateArena();
} else if(inZone == 7){
	worldCreateOcean();
} else if(inZone == 9){
	worldCreateTrapRoom();
} else if (inZone == 0){
	worldCreateBossRoom();
} else if (inZone == 5) {
	worldCreatePlatformArena();
} else {
	
	//basic levels
	
	
	
	worldAddPlatformRows();
	worldAddWoodBlocks(3);
	worldAddRandomBlocks(13);
	var k = irandom_range(3, 5);
	if(inWorld == 1 && inZone == 1){ k = 1; }
	if(player.stage % 10 == 6){ 
		for(var a=0; a<25; a++){ bmap[a, 24] = "block"; }
		instance_create_depth(400, 400, 15, objFireman);
		k = 0; 
	}
	if(player.stage % 10 == 8){
		player.blueKeys = 3; ///////////
		worldAddKeys( 1, "blueKey" );
	} else {
		worldAddKeys( k, "" );
	}
	worldAddPickups( irandom_range(0, 1) );
	
	worldPositionPlayer();
}


// world stuff
//if( ceil(player.stage / 10) == 2){ worldAddTrees( irandom_range(4, 10) ); }



if(hasHydrants){ worldAddHydrants(irandom_range(2, 5)); }

if(hasSprings){
	for(var a=0; a<25; a++){
		for(var b=0; b<25; b++){
			if(bmap[a, b] == "block"){ 
				if(irandom_range(0, 2) == 0){
					bmap[a, b] = "spring"; 
				}
			}
		}
	}
}

if(hasFan){
	n = irandom_range(4, 12);
	tries = 0;
	while(n > 0 && tries < 10000){
		tries ++;
		var a = irandom_range(0, 24);
		var b = irandom_range(1, 23);
		
		if(bmap[a, b] == "block"){
			bmap[a, b] = irandom_range(0,1) == 0 ? "fanR" : "fanL";
			if(a == 0 || a == 1){ bmap[a, b] = "fanR"; }
			if(a == 24 || a == 23){ bmap[a, b] = "fanL"; }
			n --;
		}
	}
}

if(hasZap){
	n = irandom_range(4, 8);
	tries = 0;
	while(n > 0 && tries < 10000){
		tries ++;
		var a = irandom_range(0, 24);
		var b = irandom_range(0, 24);
		
		if(bmap[a, b] == "block"){
			bmap[a, b] = "zap";
			n --;
		}
	}
}


if(hasFade && inZone != 0){
	worldAddRandomBlocks(13);
	for(var a=0; a<25; a++){
		for(var b=0; b<25; b++){
			if(bmap[a, b] == "block"){ bmap[a, b] = "fade"; }
		}
	}
	if(inZone == 4){
		for(var a=0; a<25; a++){ for(var b=0; b<4; b++){ bmap[a, b] = ""; } }
	}
}

if(hasPlants && (inZone != 0 || inWorld == 7)){

	for(var a=0; a<25; a++){
		for(var b=0; b<25; b++){
			if(bmap[a, b] == "wood" && irandom_range(0,2)==0){ bmap[a, b] = "plant"; }
		}
	}
}








///madlad test cases
// worldCreatePlatformArena();


// bmap[14, 14] = "spring"; bmap[15, 14] = "spring"; bmap[16, 14] = "spring"; bmap[17, 14] = "spring"; bmap[18, 14] = "spring"; bmap[19, 14] = "spring";




//to finalize creation, replace all strings with objects (and create them)
for(var a=0; a<25; a++){
	for(var b=0; b<25; b++){
		switch (bmap[a, b]) {
		case "block":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objBlock);
		break;
		case "block2":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objBlock);
		break;
		case "fade":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 13, objFadeBlock);
			bmap[a, b].phasedIn = irandom_range(0, 1) == 0 ? true : false;
		break;
		case "fade1":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 13, objFadeBlock);
			bmap[a, b].phasedIn = true;
		break;
		case "fade2":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 13, objFadeBlock);
			bmap[a, b].phasedIn = false;
		break;
		case "sticky":
		bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objStickyBlock);
		break;
		case "hydrant":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objHydrant);
		break;
		case "spike":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objSpikeBlock);
			bmap[a, b].xSpot = a;
			bmap[a, b].ySpot = b;
		break;
		case "water":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objWater);
		break;
		case "wood":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objWoodBlock);
			bmap[a, b].xSpot = a; bmap[a, b].ySpot = b;
		break;
		case "plant":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objPlantBlock);
			bmap[a, b].xSpot = a; bmap[a, b].ySpot = b;
		break;
		case "fanR":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objFanRight);
			bmap[a, b].xSpot = a; bmap[a, b].ySpot = b;
		break;
		case "fanL":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objFanLeft);
			bmap[a, b].xSpot = a; bmap[a, b].ySpot = b;
		break;
		case "zap":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objZapBlock);
			bmap[a, b].xSpot = a;
			bmap[a, b].ySpot = b;
		break;
		case "woodSpike":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objWoodBlock);
			bmap[a, b].xSpot = a;
			bmap[a, b].ySpot = b;
			bmap[a, b].extra = instance_create_depth(a * 32, b * 32, 9, objExtraCurse);
		break;
		case "spring":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objSpring);
			bmap[a, b].xSpot = a;
			bmap[a, b].ySpot = b;
		break;
		case "platform":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objPlatform);
		break;
		case "tree":
			bmap[a, b] = instance_create_depth(a * 32, b * 32, 10, objTree);
			break;
		case "key":
			bmap[a, b] = instance_create_depth((a * 32) + 16, (b * 32) + 16, -20, objKey);
			bmap[a, b] = noone;
		break;
		case "blueKey":
			bmap[a, b] = instance_create_depth((a * 32) + 16, (b * 32) + 16, -20, objBlueKey);
			bmap[a, b] = noone;
			break;
		case "moveKey":
			bmap[a, b] = instance_create_depth((a * 32) + 16, (b * 32) + 16, -20, objMoveKey);
			bmap[a, b] = noone;
		break;
		case "runKey":
			bmap[a, b] = instance_create_depth((a * 32) + 16, (b * 32) + 16, -20, objRunKey);
			bmap[a, b] = noone;
		break;
		case "keyEgg":
			bmap[a, b] = instance_create_depth((a * 32) + 16, (b * 32) + 16, -20, objKeyEgg);
			bmap[a, b] = noone;
		break;

		
		case "movePlat":
			instance_create_depth((a * 32) + 16, (b * 32) + 16, 11, objMovePlatform);
			bmap[a, b] = noone;
		break;
		
		
		default:
			bmap[a, b] = noone;
			
		}
	}
}

if(inZone != 0){ worldEnhanceWoodBlocks(); }


// starting platform
if(inZone == 7 || inZone == 9){
	var a = floor(player.x / 32);
	var b = floor(player.y / 32);
	var bb = b + 1;
	
	while(bmap[a, bb] != noone && bb < 24){
		bb ++;
	}
	
	if(bb < 24){	
		var s = instance_create_depth(a * 32, bb * 32, 22, objFirePlatform);
		s.spawns = 0;
		s.timeCD = 30 * 6;
		s.fade = true;
		bmap[a, bb] = s;
	}
}




//instance_create_depth((32 * 6) + 16, 400, 12, objLadder);




