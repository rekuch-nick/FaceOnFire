pulseTime += pulseDir * 3;

if(pulseTime > 70){ pulseDir = -1; }
if(pulseTime < 15){ pulseDir = 1; }



if(keyboard_check(vk_backspace)){
	player.savedCandles = 100000;
	player.stageMax = 100;
}

if(keyboard_check(ord("7"))){ player.startRank = 1; }
if(keyboard_check(ord("8"))){ player.startRank = 2; }
if(keyboard_check(ord("9"))){ player.startRank = 3; }