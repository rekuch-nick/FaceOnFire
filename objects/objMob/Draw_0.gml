draw_self();

if(keyKeeper){

	draw_set_color(c_red);
	draw_set_font(fntSkillDetail);


	var s = ""
	s += string( ceil((hp / mhp) * 100) );
	s = "%" + s;

	draw_text_transformed(670, 20, s, 2, 2, 0);
	
}


	draw_set_color(c_white);
	draw_set_font(fntSkillDetail);
	//draw_text_transformed(x-5, y-5, string(thinkCD), 1, 1, 0);
	//draw_text_transformed(x-5, y-5, string(xSpeed), 1, 1, 0);
	//draw_text_transformed(x-5, y-5, string(yDir), 1, 1, 0);
	//draw_text_transformed(x-5, y-5, string(mobWallCheck(x, y + footY + 1 , true)), 1, 1, 0);
	//draw_text_transformed(x-5, y-5, testOut, 1, 1, 0);
	
	