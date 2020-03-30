
image_index = 0;
var life = (hp / mhp);
if(life < .8){ image_index = 1;} 
if(life < .6){ image_index = 2;} 
if(life < .4){ image_index = 3;} 
if(life < .2){ image_index = 4;} 

if(world.gameState == "play"){

	var px = (player.x);// / 32;
	var py = (player.y);// / 32;

	var xp = (xSpot * 32) + 12;
	var yp = (ySpot * 32) + 12;
	
	var range = 50;
	if(hardToBurn){ range = 75; }
	
	if(!hardToBurn || player.skillMeltSpike){
		if(px > xp - range && px < xp + range){
			if(py > yp - range && py < yp + range){
				hp --;
			}
		}
	}
	

	//if( abs(xSpot - px) <= 1 || abs(ySpot - py) <= 1){
	//	hp --;
	//}


	if(hp <= 0){
		playSFX(sfxBreak);
		var clearBMap = true;
		
		instance_create_depth(x + 8, y + 8, -40, deathSpark);
		instance_create_depth(x + 24, y + 8, -40, deathSpark);
		instance_create_depth(x + 8, y + 24, -40, deathSpark);
		instance_create_depth(x + 24, y + 24, -40, deathSpark);
		
		
		if(ySpot > 0){ if(world.bmap[xSpot, ySpot - 1] != noone){
			if( world.bmap[xSpot, ySpot - 1].object_index  == objTree){
				treeBreak(xSpot, ySpot - 1);
			}
		}}
		
		
		if(extra != noone){
			if(extra.object_index = objExtraBomb){
				for(var a = xSpot - 4; a <= xSpot + 4; a ++){
					for(var b = ySpot - 4; b <= ySpot + 4; b ++){
						if(a < 0 || b < 0 || a > 24 || b > 24){ continue; }
						if(world.bmap[a, b] == noone){ continue; }
						if(object_is_ancestor(world.bmap[a, b].object_index, objBreakable)){
							world.bmap[a, b].hp = 0;
						}
					}
				}
			}
			if(extra.object_index = objExtraFace){
				var s = instance_create_depth(x + 16, y + 16, -30, objHuntFace);
				s.flashTime = 60;
			}
			if(extra.object_index = objExtraCurse){
				world.bmap[xSpot, ySpot] = instance_create_depth(x, y, 10, objSpikeBlock);
				world.bmap[xSpot, ySpot].xSpot = xSpot;
				world.bmap[xSpot, ySpot].ySpot = ySpot;
				clearBMap = false;
			}
			if(extra.object_index = objExtraHeart){
				var s = instance_create_depth(x + 16, y + 16, -30, objHeart);
			}
			if(extra.object_index = objExtraCandle){
				var s = instance_create_depth(x + 16, y + 16, -30, objCandle);
			}
			
			
			
			instance_destroy(extra);
		}
		
		
		
		
		if(clearBMap){ world.bmap[xSpot, ySpot] = noone; }
		instance_destroy();
	}
	
}