
if(player.icd < 1){ 
	worldDetectGamepad();
	
	creditScroll += .25;
	if(creditScroll > creditSize + 80){creditScroll = 0; }
		
		if(gamepad_button_check_pressed(global.gamepadID, world.buttonShoot) &&
				gamepad_button_check_pressed(global.gamepadID, world.buttonJump) &&
				gamepad_button_check_pressed(global.gamepadID, world.buttonFly) &&
				gamepad_button_check_pressed(global.gamepadID, world.buttonCharge)){
			
			game_end();
		}
	
		if(gamepad_button_check_pressed(global.gamepadID, gp_padu) || 
				gamepad_axis_value(global.gamepadID, gp_axislv) < -.5){
			
			
			cursor --;
			if(cursor == 1){ cursor --; }
			if(cursor == 5){ cursor --; }
			if(cursor < 0){ cursor = 6; }
			player.icd = 4;
		} else if(gamepad_button_check_pressed(global.gamepadID, gp_padd) ||
				gamepad_axis_value(global.gamepadID, gp_axislv) > .5){
	
			
			
			cursor ++;
			if(cursor == 1){ cursor ++; }
			if(cursor == 5){ cursor ++; }
			if(cursor > 6){ cursor = 0; }
			player.icd = 4;
		}
		
		
		
		
		
		

		if(gamepad_button_check_pressed(global.gamepadID, gp_padl) || 
				gamepad_axis_value(global.gamepadID, gp_axislh) < -.5 ||
				gamepad_button_check_pressed(global.gamepadID, gp_padr) ||
				gamepad_axis_value(global.gamepadID, gp_axislh) > .5 ||
				gamepad_button_check(global.gamepadID, world.buttonShoot) ||
				gamepad_button_check(global.gamepadID, world.buttonJump) ||
				gamepad_button_check(global.gamepadID, world.buttonFly) ||
				gamepad_button_check(global.gamepadID, world.buttonCharge) ){
				
			if(cursor == 0){
				world.soundOn = !world.soundOn;
				
				if(world.soundOn){
					audio_resume_all();
				} else {
					audio_pause_all();
				}
				
				player.icd = 6;
			}
			
			
			
			
		
		

		}



		if(cursor == 2){
			if(gamepad_button_check(global.gamepadID, world.buttonShoot)){
				var temp = world.buttonJump;
				world.buttonJump = world.buttonShoot;
				world.buttonShoot = temp;
			}
			if(gamepad_button_check(global.gamepadID, world.buttonCharge)){
				var temp = world.buttonJump;
				world.buttonJump = world.buttonCharge;
				world.buttonCharge = temp;
			}
			if(gamepad_button_check(global.gamepadID, world.buttonFly)){
				var temp = world.buttonJump;
				world.buttonJump = world.buttonFly;
				world.buttonFly = temp;
			}
			
		} else if (cursor == 3){
			if(gamepad_button_check(global.gamepadID, world.buttonJump)){
				var temp = world.buttonShoot;
				world.buttonShoot = world.buttonJump;
				world.buttonJump = temp;
			}
			if(gamepad_button_check(global.gamepadID, world.buttonCharge)){
				var temp = world.buttonShoot;
				world.buttonShoot = world.buttonCharge;
				world.buttonCharge = temp;
			}
			if(gamepad_button_check(global.gamepadID, world.buttonFly)){
				var temp = world.buttonShoot;
				world.buttonShoot = world.buttonFly;
				world.buttonFly = temp;
			}
			
		} else if (cursor == 4){
			if(gamepad_button_check(global.gamepadID, world.buttonJump)){
				var temp = world.buttonCharge;
				world.buttonCharge = world.buttonJump;
				world.buttonJump = temp;
			}
			if(gamepad_button_check(global.gamepadID, world.buttonShoot)){
				var temp = world.buttonCharge;
				world.buttonCharge = world.buttonShoot;
				world.buttonShoot = temp;
			}
		}
		
		if(cursor == 6){
			if(gamepad_button_check_pressed(global.gamepadID, gp_padl) || 
				gamepad_axis_value(global.gamepadID, gp_axislh) < -.5 ||
				gamepad_button_check_pressed(global.gamepadID, gp_padr) ||
				gamepad_axis_value(global.gamepadID, gp_axislh) > .5 ||
				gamepad_button_check(global.gamepadID, world.buttonShoot) ||
				gamepad_button_check(global.gamepadID, world.buttonJump) ||
				gamepad_button_check(global.gamepadID, world.buttonFly) ||
				gamepad_button_check(global.gamepadID, world.buttonCharge) ){
					
				resetTime ++;
				
				if(resetTime >= 30 * 8){
					for(var a=0; a<= 800; a+= 20){
						for(var b=0; b<= 800; b+= 20){
							instance_create_depth(a, b, -111, objRandomSpark);
						}
					}
					
					resetTime = 0;
					player.savedCandles = 0;
					player.stage = 1;
					player.stageMax = 1;
					if(player.character > 2){ player.character = 0; }
					
					
					saveGame();
					player.icd = 20;
				}
			} else {
				resetTime = 0;
			}
		} else {
			resetTime = 0;
		}



		
		
		if( //gamepad_button_check(global.gamepadID, gp_face1) ||
			//gamepad_button_check(global.gamepadID, gp_face2) ||
			//gamepad_button_check(global.gamepadID, gp_face3) ||
			//gamepad_button_check(global.gamepadID, gp_face4) ||
			gamepad_button_check(global.gamepadID, gp_start) ){
				player.icd = 10;
			
				world.gameState = lastState;
				world.optionsScreen = noone;
				
				if(world.gameState == "title"){ audio_master_gain(1); }
				instance_destroy();
			
			
		}


}