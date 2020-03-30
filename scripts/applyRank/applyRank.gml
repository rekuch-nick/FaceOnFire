

var rank = player.rank;
var class = player.character;

if(rank >= 2){

	if(class == 0){ player.skillDash2 = true; player.skillMultiToss = true; }
	if(class == 1){ player.skillJumpShot = true; }
	if(class == 2){ player.tossCDMax = 10; }
	if(class == 3){ player.skillDash2 = true; }
	if(class == 4){ player.skillJumpShot = true; }
	if(class == 5){ player.skillSparkToss2 = true; player.skillSprintShot = true; }
	if(class == 6){ player.skillFly2 = true; }
	if(class == 7){ player.skillMultiJump2 = true; }
	if(class == 8){ player.skillMultiToss = true;}
	if(class == 9){ player.skillSlowAura2 = true; }
	if(class == 10){ player.fireballCDMax = 7; }
	if(class == 11){ player.skillDash2 = true; }


}

if(rank >= 3){
	
	if(class == 0){ player.skillMultiJump = true; player.skillShield = true; }
	if(class == 1){ player.skillJumpShot2 = true; player.skillMultiJump2 = true; player.skillShield = true;}
	if(class == 2){ player.skillMultiJump = true; }
	if(class == 3){ player.skillMeteorStrike = true; }
	if(class == 4){ player.skillJumpShot2 = true; }
	if(class == 5){ player.skillMoreGear = true; player.skillHealFast = true; }
	if(class == 6){ player.tossCDMax = 5; }
	if(class == 7){ player.tossCDMax = 5; player.bombsMax = 5; }
	if(class == 8){ player.skillFly = true; player.skillFly2 = true; }
	if(class == 9){ player.tossCDMax = 10; player.basicShot = objPlayerWave; }
	if(class == 10){ player.tossCDMax = 3; player.skillShield = true; }
	if(class == 11){ player.tossCDMax = 5; }
	
	
	
}


