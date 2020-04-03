var type = argument0;

if(world.soundObject != noone){
	audio_stop_sound(world.soundObject);
}


world.soundObject = noone;
if(type == "title"){ world.soundObject = bgmTitle; }
if(type == "1"){ world.soundObject = bgm001; }
if(type == "2"){ world.soundObject = bgm002; }
if(type == "3"){ world.soundObject = bgm003; }
if(type == "4"){ world.soundObject = bgm004; }
if(type == "5"){ world.soundObject = bgm005; }
if(type == "6"){ world.soundObject = bgm006; }
if(type == "7"){ world.soundObject = bgm007; }
if(type == "8"){ world.soundObject = bgm008; }
if(type == "9"){ world.soundObject = bgm009; }
if(type == "0"){ world.soundObject = bgm010; }
if(type == "win"){ world.soundObject = bgmWin; }




if(world.soundObject != noone){
	audio_play_sound(world.soundObject, 10, true);
}

if(!world.soundOn){
	audio_pause_all();	
}