draw_self();


draw_set_color(c_white);
draw_set_font(fntSkillDetail);


draw_text(40, 40, "Current Candels: " + string(player.candles));
draw_text(40, 60, "Lifetime Candels: " + string(player.savedCandles + player.candles));


var s = "Stuck? Ready to change hats? \n";
s += "Hold up and press jump on this screen to return to the title.";
draw_text(40, 160, s);

var s = "Wanna go to the settings screen? \n";
s += "Press shoot.";
draw_text(40, 260, s);



draw_text(140, 460, "Press start to resume.");


/*
draw_text(70, 230, print);

if(cost > 0){ // && string != "???"){
	draw_text(70, 320, string(cost) + " candles to unlock");
}

*/