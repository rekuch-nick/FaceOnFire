draw_self();


draw_set_color(c_yellow);
draw_set_font(fntSkillDetail);

draw_text_transformed(200, 40, "Select a Hat:", 3, 3, 0);



var s = "";
switch(cursor) {
	case 0:
		s += "While standing still, you can make a rapid fire\n";
		s += "breath attack.";
		s += "Hold X or Y to make a dash attack that \nblocks";
		s += " enemy shots.";
		break;
	case 1:
		s += "You heal twice as quickly.\n";
		s += "Jump again while in the air to double jump.\n";
		s += "Make a shot when you double jump.\n";
		s += "When hurt, hurt nearby monsters";
		break;
	case 2:
		s += "While falling, you'll damage monsters you bump.\n";
		s += "If you hold jump while falling onto a monster, you'll\n";
		s += "bounce off it.\n";
		s += "You can slide and jump off of walls.";
		break;
	case 3:
		s += "Jump higher.\n";
		s += "Hold X or Y to make a dash attack that blocks\n";
		s += "enemy shots.";
		break;
	case 4:
		s += "Jump again while in the air to double jump.\n";
		s += "Leave a trail of fire wherever you go.\n";
		s += "More hearts will be in blocks.";
		break;
	case 5:
		s += "Jump higher.\n";
		s += "You heal more quickly.\n";
		s += "Double tap left or right to sprint.\n";
		s += "Sprint while attacking to make a special shot.\n";
		s += "Press X or Y to make a ladder.\n";
		break;
	case 6:
		s += "Hold the jump button to jump higher. \n";
		s += "You can slide and jump off of walls.";
		break;
	case 7:
		s += "Shots will fire in whatever direction you press.\n";
		s += "Press X or Y to toss a bomb, up to 3 times on \n";
		s += "each stage.\n";
		s += "Jump again while in the air to double jump.";
		break;
	case 8:
		s += "Hold X or Y to make a super dash attack.\n";
		s += "You will find more items.";
		break;
	case 9:
		s += "Press X or Y to create a platform.\n";
		s += "Nearby enemy shots you will be slowed. Nearby\n";
		s += "falling (not flying) monsters will be slowed.\n";
		s += "Start each screen with a shield.\n";
		s += "If you hold jump while falling onto a monster, you'll\n";
		s += "bounce off it.\n";
		s += "While standing still, you can make a rapid fire\n";
		s += "breath attack.";
		break;
	case 10:
		s += "Fly perfectly with the direction keys.\n";
		s += "Ignore gravity. \n";
		s += "Shoot in diffrent ways with the 3 face buttons. \n";
		s += "All monsters will have extra HP and attacks.";
		break;
	case 11:
		s += "OP hat just for messing around. \n";
		s += "All basic move powers, also, you heal \n";
		s += "in two seconds.";
		break;
	
	
}

if(!player.hasHat[cursor]){
	s = "Collect ";
	s += string(cost[cursor] - player.savedCandles);
	s += " more candles to unlock this hat.";
}


draw_set_color(c_white);
draw_text_transformed(50, 440, s, 1.5, 1.5, 0);