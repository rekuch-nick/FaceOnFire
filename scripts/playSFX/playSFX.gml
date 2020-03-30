var sound = argument0;


if(sound == sfxHitMob){
	var r = irandom_range(0, 2);
	if(r == 1){sound = sfxHitMob2; }
	if(r == 2){sound = sfxHitMob3; }
}

if(sound == sfxKillMob){
	var r = irandom_range(0, 2);
	if(r == 1){sound = sfxKillMob2; }
	if(r == 2){sound = sfxKillMob3; }
}

if(world.soundOn && sound != noone){
	
	audio_play_sound(sound, 11, false);
	
}
