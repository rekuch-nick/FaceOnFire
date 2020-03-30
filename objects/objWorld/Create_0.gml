

gameState = "title";

bmap[25, 25] = noone;

//worldCreateRoom();

pickups = ds_list_create();
pickupCD = 30 * 5;


soundObject = noone;




titleScreen = instance_create_depth(0, 0, -100, objTitle);
pauseScreen = noone;
optionsScreen = noone;
hatScreen = noone;


spawnCD = 30;
spawnCDMax = 30;
mobList[5] = noone;

arena = false;
timeInWorld = 0;

optionsCursor = 0;
buttonStart = gp_start;
//buttonJump = gp_face2;
//buttonShoot = gp_face1;
//buttonCharge = gp_face4;
//buttonFly = gp_face3;


fadeBlockTime = 30 * 10;


geyserCD = 40;




