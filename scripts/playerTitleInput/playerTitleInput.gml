worldDetectGamepad();
		
		
		if(gamepad_button_check_pressed(global.gamepadID, gp_padl) || 
				gamepad_axis_value(global.gamepadID, gp_axislh) < -.5){
			
			player.stage --;
			if(player.stage < 1){ player.stage = player.stageMax; }
			icd = 4;
		} else if(gamepad_button_check_pressed(global.gamepadID, gp_padr) ||
				gamepad_axis_value(global.gamepadID, gp_axislh) > .5){
	
			player.stage ++;
			if(player.stage > player.stageMax ){ player.stage = 1; }
			icd = 4;
		}
		
		if(gamepad_button_check_pressed(global.gamepadID, gp_padu) || 
				gamepad_axis_value(global.gamepadID, gp_axislv) < -.5){
			
			world.titleScreen.cursor --;
			if(world.titleScreen.cursor < 0){ world.titleScreen.cursor = 1; }
			icd = 4;
		} else if(gamepad_button_check_pressed(global.gamepadID, gp_padd) ||
				gamepad_axis_value(global.gamepadID, gp_axislv) > .5){
	
			world.titleScreen.cursor ++;
			if(world.titleScreen.cursor > 1){ world.titleScreen.cursor = 0; }
			
			icd = 4;
		}









		
		
		if(gamepad_button_check(global.gamepadID, world.buttonJump) ||
				gamepad_button_check(global.gamepadID, world.buttonShoot) ||
				gamepad_button_check(global.gamepadID, gp_start) ){
			icd = 10;
			
			var c = world.titleScreen.cursor;
			
			if(c == 0){
				instance_destroy(world.titleScreen);
				world.titleScreen = noone;
				world.gameState = "hat";
				world.hatScreen = instance_create_depth(0, 0, -103, objHatSelect);
			}
			
			if(c == 1){
				icd = 10;
				world.optionsScreen = instance_create_depth(0, 0, -110, objOptionsScreen);
				
			}
			
			
		}
