draw_self();



draw_set_color(c_blue);
if(shotCD < 25){
	draw_set_color( shotCD % 2 == 0 ? c_blue : c_white );
}


draw_set_font(fntSkillDetail);

if(shots > 0){
	draw_text(x - 5, y - 40, string(shots));
}