var n = argument0;

n += 1;
if(player.skillMoreGear){ n += 2; }


var tries = 0;

var firstn = n;

// n += 5; ///

while(n > 0 && tries < 10000){
	tries ++;
	//var a = irandom_range(0, 24);
	//var b = irandom_range(0, 24);

	

	var r = irandom_range(1, 7);
	//r = 6; ///
	
	var t = objRapidShot;
	if(player.character == 9){ t = objSwirl; }
	if(r == 2){ var t = objBridgeKit;}
	if(r == 3){ var t = objShieldPickup;}
	if(r == 4){ var t = objSwirl;}
	if(r == 5){ var t = objBatPickup;}
	if(r == 6){ var t = objLightningPickup;}
	if(r == 7){ var t = objLadderKit;}
	//if(r == 8){ var t = objClockPickup;}
	
	if(n == firstn){
		if(player.rank == 1 && player.candles >= player.rank1Cost){ t = objRankUp2; } //////////////25/////////////
		if(player.rank == 2 && player.candles >= player.rank2Cost){ t = objRankUp3; }
		
		
	}

	
	//if(bmap[a, b] == ""){
	//	bmap[a, b] = t;
	
	
	ds_list_add(pickups, t);
	n --;
	//}
}