worldDetectGamepad();
		
		
		if(gamepad_button_check_pressed(global.gamepadID, gp_padl) || 
				gamepad_axis_value(global.gamepadID, gp_axislh) < -.5 ||
				keyboard_check(vk_left) || keyboard_check(ord("A"))){
			
			player.stage --;
			if(player.stage < 1){ player.stage = player.stageMax; }
			icd = 4;
		} else if(gamepad_button_check_pressed(global.gamepadID, gp_padr) ||
				gamepad_axis_value(global.gamepadID, gp_axislh) > .5 ||
				keyboard_check(vk_right) || keyboard_check(ord("D"))){
	
			player.stage ++;
			if(player.stage > player.stageMax ){ player.stage = 1; }
			icd = 4;
		}
		
		if(gamepad_button_check_pressed(global.gamepadID, gp_padu) || 
				gamepad_axis_value(global.gamepadID, gp_axislv) < -.5 ||
				keyboard_check(vk_up) || keyboard_check(ord("W"))){ 
			
			world.titleScreen.cursor --;
			if(world.titleScreen.cursor < 0){ world.titleScreen.cursor = 1; }
			icd = 4;
		} else if(gamepad_button_check_pressed(global.gamepadID, gp_padd) ||
				gamepad_axis_value(global.gamepadID, gp_axislv) > .5 ||
				keyboard_check(vk_down) || keyboard_check(ord("S"))){
	
			world.titleScreen.cursor ++;
			if(world.titleScreen.cursor > 1){ world.titleScreen.cursor = 0; }
			
			icd = 4;
		}









		
		
		if(gamepad_button_check(global.gamepadID, world.buttonJump) ||
				gamepad_button_check(global.gamepadID, world.buttonShoot) ||
				gamepad_button_check(global.gamepadID, gp_start) ||
				keyboard_check(vk_space) || 
				keyboard_check(vk_enter) || 
				keyboard_check(ord("Z")) ||
				keyboard_check(ord("X")) ||
				keyboard_check(ord("1")) ||
				keyboard_check(ord("2"))
				){
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
