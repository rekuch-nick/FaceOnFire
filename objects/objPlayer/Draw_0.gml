draw_self();

draw_set_color(c_white);
draw_set_font(fntSkillDetail);


//draw_text(10, 10, string(flyTime) );
// draw_text(10, 10, string(player.candles) );



if(readoutTime > 0){
	
	var s = "";
	
	if(character == 6 || (character == 8 && rank > 2) ){ s = ceil(flyTime / 30 * 10); }
	if(bombsMax != 0){ s = string(bombs) + "/" + string(bombsMax); }
	
	
	draw_set_color(c_ltgray);
	draw_text_transformed(x-16, y-32, s, .6, .6, 0);
	
	
	readoutTime --;
}




if(stage == 101){
	
	s = "You WON!!!"
	draw_set_color(c_white);
	draw_text_transformed(330, 60, s, 2.4, 2.4, 0);
	
	s =  "You can keep playing random levels \n";
	s += "for as long as you like, \n"
	s += "but you've probably seen it all. \n \n";
	s += "Thank you so much for playing!";
	
	draw_set_color(c_white);
	draw_text_transformed(50, 330, s, 2, 2, 0);
	
}