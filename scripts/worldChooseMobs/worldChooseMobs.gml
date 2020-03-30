
var inWorld = ceil(player.stage / 10);
var inZone = player.stage % 10;
//
// 1  1 key
// 2  freefall
// 3  
// 4  arena
// 5  
// 6  countdown
// 7  ocean
// 8  blue key
// 9  trap room
// 10 boss
// 
var baseMob = objMob;
var altMob = objBubble;



switch(player.stage){
	case 1: baseMob = objMob; altMob = objMob; break;
	case 2: baseMob = objHoverDrop; altMob = objBubble; break;
	case 3: baseMob = objMob; altMob = objHoverDrop; break;
	case 4: baseMob = objIceCube; altMob = objIceCube; break;
	case 5: baseMob = objBubble; altMob = objBubble; break;
	case 6: baseMob = objMob; altMob = objHoverDrop; break;
	case 7: baseMob = objMob; altMob = objHoverDrop; break;
	case 8: baseMob = objMob; altMob = objShootMob; break;
	case 9: baseMob = objMob; altMob = objHoverDrop; break;
	case 10: baseMob = objMob; altMob = objMob; break;
	
	case 11: baseMob = objAcidRain; altMob = objShootMob; break;
	case 12: baseMob = objMob; altMob = objBubble; break;
	case 13: baseMob = objAcidRain; altMob = objShootMob; break;
	case 14: baseMob = objIceCube; altMob = objShootMob; break;
	case 15: baseMob = objBubble; altMob = objHoverDrop; break;
	case 16: baseMob = objAcidRain; altMob = objIceCube; break;
	case 17: baseMob = objAcidRain; altMob = objHoverDrop; break;
	case 18: baseMob = objAcidRain; altMob = objShootMob; break;
	case 19: baseMob = objAcidRain; altMob = objHoverDrop; break;
	case 20: baseMob = objAcidRain; altMob = objShootMob; break;
		
	case 21: baseMob = objHuntDrop; altMob = objShootMob; break;
	case 22: baseMob = objHuntDrop; altMob = objBubble; break;
	case 23: baseMob = objHuntDrop; altMob = objShootMob; break;
	case 24: baseMob = objIceCube; altMob = objHuntDrop; break;
	case 25: baseMob = objBubble; altMob = objShootMob; break;
	case 26: baseMob = objHuntDrop; altMob = objIceCube; break;
	case 27: baseMob = objMob; altMob = objHoverDrop; break;
	case 28: baseMob = objHuntDrop; altMob = objShootMob; break;
	case 29: baseMob = objHuntDrop; altMob = objBubble; break;
	case 30: baseMob = objHuntDrop; altMob = objHuntDrop; break;
	
	case 31: baseMob = objSnowSniper; altMob = objIceCube; break;
	case 32: baseMob = objIceCube; altMob = objHuntFace; break;
	case 33: baseMob = objSnowSniper; altMob = objAcidRain; break;
	case 34: baseMob = objShootMob; altMob = objIceCube; break;
	case 35: baseMob = objSnowSniper; altMob = objHoverDrop; break;
	case 36: baseMob = objIceCube; altMob = objShootMob; break;
	case 37: baseMob = objShootMob; altMob = objBubble; break;
	case 38: baseMob = objSnowSniper; altMob = objMob; break;
	case 39: baseMob = objHoverDrop; altMob = objHuntFace; break;
	case 40: baseMob = objSnowSniper; altMob = objSnowSniper; break;
		
	case 41: baseMob = objBigDrop; altMob = objMob; break;
	case 42: baseMob = objBigDrop; altMob = objHoverDrop; break;
	case 43: baseMob = objBigDrop; altMob = objMob; break;
	case 44: baseMob = objShootMob; altMob = objBigDrop; break;
	case 45: baseMob = objMug; altMob = objMob; break;
	case 46: baseMob = objShootMob; altMob = objBigDrop; break;
	case 47: baseMob = objMug; altMob = objBigDrop; break;
	case 48: baseMob = objAcidRain; altMob = objSnowSniper; break;
	case 49: baseMob = objHuntDrop; altMob = objMug; break;
	case 50: baseMob = objBigDrop; altMob = objBigDrop; break;
	
	
	case 51: baseMob = objSlowGlueDrop; altMob = objIceCube; break;
	case 52: baseMob = objSlowGlueDrop; altMob = objHoverDrop; break;
	case 53: baseMob = objSlowGlueDrop; altMob = objIceCube; break;
	case 54: baseMob = objBigDrop; altMob = objSnowSniper; break;
	case 55: baseMob = objBubble; altMob = objMob; break;
	case 56: baseMob = objSlowGlueDrop; altMob = objIceCube; break;
	case 57: baseMob = objSlowGlueDrop; altMob = objIceCube; break;
	case 58: baseMob = objSlowGlueDrop; altMob = objSnowSniper; break;
	case 59: baseMob = objSlowGlueDrop; altMob = objMug; break;
	case 60: baseMob = objSlowGlueDrop; altMob = objSlowGlueDrop; break;
	
	
	case 61: baseMob = objAcidRain; altMob = objSnowSniper; break;
	case 62: baseMob = objAcidRain; altMob = objMug; break;
	case 63: baseMob = objAcidRain; altMob = objShootMob; break;
	case 64: baseMob = objBigHuntDrop; altMob = objShootMob; break;
	case 65: baseMob = objMug; altMob = objSnowSniper; break;
	case 66: baseMob = objAcidRain; altMob = objSnowSniper; break;
	case 67: baseMob = objAcidRain; altMob = objHoverDrop; break;
	case 68: baseMob = objAcidRain; altMob = objShootMob; break;
	case 69: baseMob = objAcidRain; altMob = objMug; break;
	case 70: baseMob = objAcidRain; altMob = objBigDrop; break;
		
	default:
		var r = irandom_range(1, 6);
		baseMob = objMob;
		if(r == 2){ baseMob = objAcidRain; }
		if(r == 3){ baseMob = objHuntDrop; }
		if(r == 4){ baseMob = objMug; }
		if(r == 5){ baseMob = objSnowSniper; }
		if(r == 6){ baseMob = objSlowGlueDrop; }

		var r = irandom_range(0, 11);
		altMob = objBubble;
		if(r == 1){ altMob = objIceCube; }
		if(r == 2){ altMob = objShootMob; }
		if(r == 3){ altMob = objHoverDrop; }
		if(r == 4){ altMob = objHuntFace; } 
		if(r == 6){ altMob = objAcidRain; } 
		if(r == 7){ altMob = objHuntDrop; } 
		if(r == 8){ altMob = objSnowSniper; } 
		if(r == 9){ altMob = objBigDrop; } 
		if(r == 10){ altMob = objBigHuntDrop; } 
		if(r == 11){ altMob = objGlueDrop; } 


		// prevent flying mobs in some zones
		if(inZone == 2 || inZone == 4){ 
			if(altMob == objBubble || altMob == objHoverDrop){ 
	
				altMob = baseMob; 
			}
		}
		break;
	
	
}







//baseMob = objGlueDrop; altMob = baseMob; //////
//altMob = objHoverDrop;

world.mobList[0] = baseMob;
world.mobList[1] = baseMob;
world.mobList[2] = baseMob;
world.mobList[3] = baseMob;
//world.mobList[2] = irandom_range(0, 1) == 0 ? baseMob : altMob;
//world.mobList[3] = irandom_range(0, 1) == 0 ? baseMob : altMob;
world.mobList[4] = altMob;
world.mobList[5] = altMob;
