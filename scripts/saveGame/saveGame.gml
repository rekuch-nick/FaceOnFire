

ini_open("saveData.ini");
ini_write_real("Main", "candles", player.savedCandles);
ini_write_real("Main", "stage", player.stage);
ini_write_real("Main", "stageMax", player.stageMax);
ini_write_real("Main", "sound", world.soundOn);
ini_write_real("Main", "jumpKey", world.buttonJump);
ini_write_real("Main", "shootKey", world.buttonShoot);
ini_write_real("Main", "chargeKey", world.buttonCharge);
ini_write_real("Main", "flyKey", world.buttonFly);



//ini_write_string("Main","string",string);
ini_close();

