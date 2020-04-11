draw_self();


draw_set_color(c_white);
draw_set_font(fntSkillDetail);


draw_text(80, 40, "Current Candels: " + string(player.candles));
draw_text(80, 60, "Lifetime Candels: " + string(player.savedCandles + player.candles));


var s = "     Wooden blocks in your way? \n";
draw_text(40, 110, s);

var s = "     Stuck? Ready to change hats? \n";
draw_text(40, 170, s);

var s = "     Wanna go to the settings screen? \n";
draw_text(40, 230, s);

var s = "     What's with the candles? \n";
draw_text(40, 290, s);

var s = "     Are there keyboard controls? \n";
draw_text(40, 390, s);

var s = "     How does healing work? \n";
draw_text(40, 460, s);


draw_text(140, 750, "Press start to resume.");



draw_set_color(c_ltgray);

var s = "Mash the down key repeatedly to burn faster.";
draw_text(40, 130, s);

s = "Hold up and press jump on this screen to return to the title.";
draw_text(40, 190, s);

s = "Press shoot on this screen.";
draw_text(40, 250, s);

s = "Collecting 25 and 50 on a single life will make it possible for rank up \n";
s += "power-ups to appear.\n";
s += "The total collected over any number of lives will unlock new hats."
draw_text(40, 310, s);

s = "Arrow keys, space to jump, 1 to shoot, 2 as X and Y, and Enter as start.\n";
s += "This game probably won't be much fun without a gamepad though.";
draw_text(40, 410, s);

s = "How long it takes to heal is directly impacted by how many times you've\n";
s += "been hurt previously on the current stage. Picking up a heart will both\n";
s += "heal you immediately, and reduce the current hit counter by one.";
draw_text(40, 480, s);





draw_set_color(c_white);
if(player.rank > 1){
	var s1 = "Rank II";
	if(player.rank == 3){ s1 += "I"; }
	
	
	var s2 = "";
	if(player.character == 0){
		s2 += "Make a special shot when dashing. ";
		s2 += "Shoot multiple shots at a time. ";
	}
	if(player.character == 1){
		s2 += "Jumpshot now fires in 8 directions. ";
	}
	if(player.character == 2){
		s2 += "Shoot faster. ";
	}
	if(player.character == 3){
		s2 += "Make a special shot when dashing. ";
	}
	if(player.character == 4){
		s2 += "Make a special shot when you double jump. ";
	}
	if(player.character == 5){
		s2 += "Shoot behind you when you sprint. ";
	}
	if(player.character == 6){
		s2 += "Fly time is doubled. ";
	}
	if(player.character == 7){
		s2 += "Triple Jump. +1 bomb. ";
	}
	if(player.character == 8){
		s2 += "Shoot multiple shots at a time. ";
	}
	if(player.character == 9){
		s2 += "Some shots slowed by your aura will be reflected. ";
		s2 += "Jump and slide off walls. ";
	}
	if(player.character == 10){
		s2 += "Your wide shot is faster. ";
	}
	if(player.character == 11){
		s2 += "Make a special shot when dashing. ";
	}
	
	
	
	
	if(player.rank > 2){
		if(player.character == 0){
			s2 += "Start each \nlevel with a shield. ";
		}
		if(player.character == 1){
			s2 += "Triple jump. Start each level with a shield. ";
		}
		if(player.character == 2){
			s2 += "Double jump. ";
		}
		if(player.character == 3){
			s2 += "\nDamage and bounce off of monsters while falling. ";
		}
		if(player.character == 4){
			s2 += "Jumpshot now fires in 8 directions. ";
		}
		if(player.character == 5){
			s2 += "Heal faster. Find more power-ups. ";
		}
		if(player.character == 6){
			s2 += "Shoot much faster. ";
		}
		if(player.character == 7){
			s2 += "Shoot faster. Wall slide. +1 bomb.";
		}
		if(player.character == 8){
			s2 += "\nHold down the button after a jump to fly for 2 seconds. ";
		}
		if(player.character == 9){
			s2 += "\nGain a wave shot. ";
		}
		if(player.character == 10){
			s2 += "Shoot faster. Start wach level with a shield. ";
		}
		if(player.character == 11){
			s2 += "Shoot faster. ";
		}
	}
	
	
	
	
	draw_text_transformed(90, 660, s1, 1.1, 1.1, 0);
	draw_text_transformed(30, 680, s2, 1, 1, 0);
	
	
	
} else {
	draw_text_transformed(90, 660, "When you rank up, check back here to see your new abilities.", 1., 1, 0);
}