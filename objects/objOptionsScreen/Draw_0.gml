draw_self();

draw_set_color(c_red);
draw_set_font(fntSkillDetail);

draw_text_transformed(285, 40, "~OPTIONS~", 2.5, 2.5, 0);

var cursorMod = cursor * 60;
draw_text_transformed(30, 140 + cursorMod, "=>", 2, 2, 0);


draw_text_transformed(110, 140 + 0, "Sound: ", 2, 2, 0);
//draw_text_transformed(110, 140 + 60, "Start Button: ", 2, 2, 0);
draw_text_transformed(110, 140 + 120, "Jump Button: ", 2, 2, 0);
draw_text_transformed(110, 140 + 180, "Shoot Button: ", 2, 2, 0);
draw_text_transformed(110, 140 + 240, "Other Buttons: ", 2, 2, 0);
draw_text_transformed(110, 140 + 360, "Delete Save: ", 2, 2, 0);

draw_set_color(c_ltgray);
draw_text_transformed(190, 640, "Press start to go back.", 2, 2, 0);
draw_text_transformed(250, 680, "Press all four face buttons to quit.", 1, 1, 0);

draw_set_color(c_green);
sound = world.soundOn ? "on" : "off";
draw_text_transformed(500, 140 + 0, sound, 2, 2, 0);
//draw_text_transformed(500, 140 + 60, stringKey(world.buttonStart), 2, 2, 0);
draw_text_transformed(500, 140 + 120, stringKey(world.buttonJump), 2, 2, 0);
draw_text_transformed(500, 140 + 180, stringKey(world.buttonShoot), 2, 2, 0);
draw_text_transformed(500, 140 + 240, (stringKey(world.buttonCharge) + ", " + stringKey(world.buttonFly)), 2, 2, 0);

if(resetTime < 1){
	var s = "On Level " + string(player.stageMax);
	draw_text_transformed(500, 140 + 360, s, 2, 2, 0);
} else if (resetTime < 30){
	var s = "keep the button\nheld down to \nreset"
	draw_text_transformed(500, 140 + 360, s, 2, 2, 0);
} else if (resetTime < 30 * 5){
		if(resetTime % 2 == 0){ draw_set_color(c_yellow); } else { draw_set_color(c_white); }
		var s = "keep the button\nheld down to \nreset"
		draw_text_transformed(500, 140 + 360, s, 2, 2, 0);
} else {
		if(resetTime % 2 == 0){ draw_set_color(c_yellow); } else { draw_set_color(c_white); }
		var s = "KEEP THE BUTTONn\nHELD DOWN TO \nRESET"
		draw_text_transformed(500, 140 + 360, s, 2, 2, 0);
}


draw_set_color(c_red);
draw_text(100, 700, "Game by:");
draw_text(100, 720, "Music: ");

draw_set_color(c_yellow);
draw_text(200, 700, "rekuchn");

draw_set_color(c_ltgray);
s = "";
for(var i=0; i<80; i++){
	s += string_char_at(creditString, creditScroll + i);
}

draw_text(0, 740, s);




