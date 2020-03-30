

	
ini_open("saveData.ini");
player.savedCandles = ini_read_real("Main", "candles", 100000000);
player.stage = ini_read_real("Main", "stage", 1);
player.stageMax = ini_read_real("Main", "stageMax", 50);
world.soundOn = ini_read_real("Main", "sound", true);
world.buttonJump = ini_read_real("Main", "jumpKey", gp_face2);
world.buttonShoot = ini_read_real("Main", "shootKey", gp_face1);
world.buttonCharge = ini_read_real("Main", "chargeKey", gp_face3);
world.buttonFly = ini_read_real("Main", "flyKey", gp_face4);



//string = ini_read_string("Main","string","Hello world");
ini_close();
	
	
	
