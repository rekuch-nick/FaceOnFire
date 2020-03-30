pulseTime += pulseDir * 3;

if(pulseTime > 70){ pulseDir = -1; }
if(pulseTime < 15){ pulseDir = 1; }



if(keyboard_check_pressed(vk_backspace)){
	player.savedCandles = 100000;
	player.stageMax = 100;
}

if(keyboard_check_pressed(ord("1"))){ player.startRank = 1; }
if(keyboard_check_pressed(ord("2"))){ player.startRank = 2; }
if(keyboard_check_pressed(ord("3"))){ player.startRank = 3; }