worldDetectGamepad();



if(icd < 1){

	if(gamepad_button_check(global.gamepadID, gp_start) || keyboard_check(vk_enter)){
		if(world.gameState == "play"){
			playSFX(sfxPause);
			world.pauseScreen = instance_create_depth(0, 0, -100, objPause);
			world.gameState = "pause";
			icd = 10;
			return;
		}
		
		if(world.gameState == "pause"){
			
			for(var a=0; a<6; a++){
				for(var b=0; b<3; b++){
					//if(world.pauseScreen.locks[a, b] != noone){
						//instance_destroy( world.pauseScreen.locks[a, b] );
					//}
				}
			}
			
			//instance_destroy(world.pauseScreen.cursor);
			instance_destroy(world.pauseScreen);
			audio_master_gain(1);
			world.pauseScreen = noone;
			world.gameState = "play";
			icd = 10;
			return;
		}
	}
	
	if(world.gameState == "pause"){
		
		if(gamepad_button_check_pressed(global.gamepadID, gp_padu) || 
				gamepad_axis_value(global.gamepadID, gp_axislv) < -.5 ||
				keyboard_check(vk_up) || keyboard_check(ord("W"))){
			
			if( gamepad_button_check(global.gamepadID, world.buttonJump) ||
					keyboard_check(vk_space)) {
				
				savedCandles += candles;
				candles = 0;
				rank = 1;
				ySpeed = 0;
				saveGame();
				
				world.gameState = "title";
				icd = 10;
				world.titleScreen = instance_create_depth(0, 0, -100, objTitle);
				
				instance_destroy(world.pauseScreen);
				world.pauseScreen = noone;
				return;
			}
		}
		
		
		if( gamepad_button_check(global.gamepadID, world.buttonShoot) || 
				keyboard_check(ord("Z")) || keyboard_check(ord("1") )){
			player.icd = 6;
			world.optionsScreen = instance_create_depth(0, 0, -110, objOptionsScreen);
		}
		
		
		
		/*
		
		var tx = player.xPauseCursor;
		var ty = player.yPauseCursor;
	
		if(gamepad_button_check_pressed(global.gamepadID, gp_padl) || 
				gamepad_axis_value(global.gamepadID, gp_axislh) < -.5){
			
			tx --;
			icd = 4;
		} else if(gamepad_button_check_pressed(global.gamepadID, gp_padr) ||
				gamepad_axis_value(global.gamepadID, gp_axislh) > .5){
	
			tx ++;
			icd = 4;
		}
		
		if(gamepad_button_check_pressed(global.gamepadID, gp_padu) || 
				gamepad_axis_value(global.gamepadID, gp_axislv) < -.5){
			
			ty --;
			icd = 4;
		} else if(gamepad_button_check_pressed(global.gamepadID, gp_padd) ||
				gamepad_axis_value(global.gamepadID, gp_axislv) > .5){
	
			ty ++;
			icd = 4;
		}
		
		if(tx != player.xPauseCursor){
			player.xPauseCursor = tx;
			if(player.xPauseCursor > 5){ player.xPauseCursor -= 6; }
			if(player.xPauseCursor < 0){ player.xPauseCursor += 6; }
		}
		
		if(ty != player.yPauseCursor){
			player.yPauseCursor = ty;
			if(player.yPauseCursor > 2){ player.yPauseCursor -= 3; }
			if(player.yPauseCursor < 0){ player.yPauseCursor += 3; }
		}
		
		world.pauseScreen.cost = 0;
		if(!player.skills[player.xPauseCursor, player.yPauseCursor]) {
			var a = player.xPauseCursor * player.xPauseCursor;
			world.pauseScreen.cost = 50 + floor(a * 30);
		}
		world.pauseScreen.print = setSkillString(player.xPauseCursor, player.yPauseCursor);
		world.pauseScreen.cursor.x = 128 + (player.xPauseCursor * 96);
		world.pauseScreen.cursor.y = 384 + (player.yPauseCursor * 128);
		
		*/
		
		if(icd > 0){ return; }
		
		
		/*
		
		if(gamepad_button_check(global.gamepadID, gp_face1) ||
				gamepad_button_check(global.gamepadID, gp_face2) ||
				gamepad_button_check(global.gamepadID, gp_face3) ||
				gamepad_button_check(global.gamepadID, gp_face4) ){
			icd = 5;
			if(player.candles >= world.pauseScreen.cost){
				var a = player.xPauseCursor;
				var b = player.yPauseCursor;
				if(a == 0 || player.skills[a - 1, b]){
					player.candles -= world.pauseScreen.cost;
					player.skills[a, b] = true;
					instance_destroy( world.pauseScreen.locks[a, b] );
					world.pauseScreen.locks[a, b] = noone;
				
				}
			}
		}
		
		*/

	}
	
	
	
}