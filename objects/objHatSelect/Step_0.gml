


if(player.icd < 1){ 
	worldDetectGamepad();
		
		
		
		if( (gamepad_button_check(global.gamepadID, world.buttonShoot) ||
			gamepad_button_check(global.gamepadID, world.buttonJump) ||
			gamepad_button_check(global.gamepadID, world.buttonFly) ||
			gamepad_button_check(global.gamepadID, world.buttonCharge) ||
			gamepad_button_check(global.gamepadID, gp_start) ||
			keyboard_check(vk_enter) ||
			keyboard_check(ord("1")) ||
			keyboard_check(ord("2")) ||
			keyboard_check(ord("Z")) ||
			keyboard_check(ord("X"))
			) && player.hasHat[cursor] ){
				
				playerResetSkills();
				
				player.character = cursor;
				
				
				
				if(cursor == 0){
					player.skillBreath = true;
					player.skillDash = true;
					player.fireballTimeMax = 15;
				}
				if(cursor == 1){
					player.basicShot = objPlayerBreath; player.tossCDMax = 10;
					player.skillHealFast = true;
					player.skillMultiJump = true;
					player.skillRevenge = true;
					player.skillJumpShot = true;
				}
				if(cursor == 2){
					player.basicShot = objPlayerWave;
					player.skillMeteorStrike = true;
					player.skillWallSlide = true;
				}
				if(cursor == 3){
					player.skillToss2 = true;
					player.jumpPower = 18;
					player.skillDash = true;
				}
				if(cursor == 4){
					player.basicShot = objPlayerBreath; player.tossCDMax = 10;
					player.skillMultiJump = true;
					player.skillFireTrail = true;
					player.extraHearts = true;
					player.multiBreath = true;
				}
				if(cursor == 5){
					player.jumpPower = 18;
					player.skillHealFast = true;
					player.skillSparkToss = true;
					player.tossCDMax = 10;
					player.skillSprint = true;
					player.skillLadder = true; player.bombsMax = 3;
				}
				if(cursor == 6){
					player.skillFly = true;
					player.skillMultiToss = true;
					player.skillWallSlide = true;
				}
				if(cursor == 7){
					player.basicShot = objPlayerSnipe; 
					player.skillMultiJump = true;
					player.bombsMax = 3;
					player.skillLob = true;
				}
				if(cursor == 8){
					player.skillDash = true;
					player.skillDash2 = true;
					player.skillMoreGear = true;
				}
				if(cursor == 9){
					player.skillMeteorStrike = true;
					player.skillFloorMaking = true;
					player.skillSlowAura = true;
					player.skillBreath = true;
					player.skillBreath2 = true;
					player.basicShot = noone;
					player.skillShield = true;
				}
				if(cursor == 10){
					player.basicShot = objPlayerBreath; player.tossCDMax = 6;
					player.tossCDMax = 10;
					player.moveSpeed = 8;
					player.skillTrueFlight = true;
					player.faceShoot = true;
					player.skillLongBreath = true;
					player.skillSuperMonsters = true;
					player.skillVertShot = true;
					player.skillDash = true;
					player.skillDash2 = true;
				}
				
				
				if(cursor == 11){
					player.basicShot = objPlayerSnipe; 
					player.tossCDMax = 10;
					player.skillMultiJump = true;
					player.skillMultiJump2 = true;
					player.skillDash = true;
					player.skillMeteorStrike = true;
					player.skillWallSlide = true;
				}
				
				
				applyRank();
				player.icd = 10;
				world.gameState = "hatAnimate";
				player.phaseTime = 1;
				player.growHat = hats[cursor];
			
			
		}
		
		
		
		
		

		if(gamepad_button_check_pressed(global.gamepadID, gp_padl) || 
				gamepad_axis_value(global.gamepadID, gp_axislh) < -.5 ||
				keyboard_check(vk_left) || keyboard_check(ord("A"))){
			
			cursor --;
			if(cursor < 0){ cursor = 11; }
			
			player.icd = 5;
		} else if(gamepad_button_check_pressed(global.gamepadID, gp_padr) ||
				gamepad_axis_value(global.gamepadID, gp_axislh) > .5 ||
				keyboard_check(vk_right) || keyboard_check(ord("d"))){
	
			
			cursor ++;
			if(cursor > 11){ cursor = 0; }
			
			player.icd = 5;
		}
		
		if(gamepad_button_check_pressed(global.gamepadID, gp_padu) || 
				gamepad_axis_value(global.gamepadID, gp_axislv) < -.5 ||
				keyboard_check(vk_up) || keyboard_check(ord("W"))){
			
			
			
			player.icd = 5;
		} else if(gamepad_button_check_pressed(global.gamepadID, gp_padd) ||
				gamepad_axis_value(global.gamepadID, gp_axislv) > .5 ||
				keyboard_check(vk_down) || keyboard_check(ord("S"))){
	
			
			
			
			player.icd = 5;
		}




		
		
		

		
		for(var i=0; i<12; i++){
			
			if(cursor == i){
				hats[i].image_xscale = 2 + random_range(.0, .1);
				hats[i].image_yscale = 2 + random_range(.0, .1);
			} else {
				hats[i].image_xscale = 1;
				hats[i].image_yscale = 1;
			}
			

		}




		
		
		


}