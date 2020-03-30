
player.rank1Cost = 25;
player.rank2Cost = 50;


player.rank = player.startRank;


player.skillBreath = false; 
player.skillBreath2 = false;
player.skillDash = false; 
player.skillDash2 = false;
player.skillMeltSpike = false;
player.skillHealFast = false; 
player.skillHealFast2 = false;
player.skillMultiJump = false; 
player.skillMultiJump2 = false;
player.skillMoreGear = false;
player.skillJumpShot = false; 
player.skillJumpShot2 = false;
player.skillCallLightning = false;
player.skillMeteorStrike = false;
player.skillWallSlide = false;
player.skillFireTrail = false;
player.skillToss2 = false;
player.extraHearts = false;
player.skillFly = false;
player.skillFly2 = false;
player.skillMultiToss = false;
player.skillSparkToss2 = false;
player.skillSparkToss = false;
player.skillSprint = false;
player.skillSprintShot = false;
player.skillFloorMaking = false;
player.skillSlowAura = false;
player.skillSlowAura2 = false;
player.skillTrueFlight = false;
player.faceShoot = false;
player.skillLongBreath = false;
player.skillSuperMonsters = false;
player.skillVertShot = false;
player.skillShield = false;
player.skillLob = false;
player.skillLadder = false;

player.bombs = 0;
player.bombsMax = 0;
player.bombCD = 0;
player.jumpPower = 14;
player.basicShot = objPlayerToss;
player.headBreak = false;
player.moveSpeed = 5;
player.tossCDMax = 20;
player.rapidShot = 0;
player.fireballCDMax = 35;
if(player.shield != noone){ instance_destroy(player.shield); }
player.shield = noone;