draw_self();


draw_set_color(c_red);
draw_set_font(fntSkillDetail);

sizeMod = 2 + (pulseTime / 100);





draw_text_transformed_colour(150, 40, "Face on Fire", 4, 4, 0, c_red, c_red, c_yellow, c_yellow, random_range(.8, 1));

//if(player.startRank == 1){ draw_text_transformed(10, 10, "Rank I", 1, 1, 0); }
if(player.startRank == 2){ draw_text_transformed(10, 10, "Rank II", 1, 1, 0); }
if(player.startRank == 3){ draw_text_transformed(10, 10, "Rank III", 1, 1, 0); }



if(cursor == 0){
	
	
	
	draw_text_transformed(300 - (pulseTime / 4), 320 - (pulseTime / 4), "START", sizeMod, sizeMod, 0);
	draw_text_transformed(285, 420, "OPTIONS", 2, 2, 0);
	
} else if (cursor == 1) {
	
	draw_text_transformed(300, 320, "START", 2, 2, 0);
	draw_text_transformed(285 - (pulseTime / 4), 420 - (pulseTime / 4), "OPTIONS", sizeMod, sizeMod, 0);
		
}


draw_text_transformed(100, 700, "STAGE: " + string(player.stage), 2, 2, 0);
draw_text_transformed(100, 744, "Choose from 1 to " + string(player.stageMax), 1, 1, 0);
