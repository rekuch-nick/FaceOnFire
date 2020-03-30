var a = argument0;
var b = argument1;


if(a > 0 && player.skills[a-1, b] == false){
	return "???";
}

if(a == 0 && b == 0){
	return "Fire Breathing\n Make a rapid attack when you shoot without moving.";
}
if(a == 1 && b == 0){
	return "Fire Dash\n Press X while healthy to air dash, damaging monsters you bump.";
}
if(a == 2 && b == 0){
	return "Greater Fire Breathing\n Your breath attack produces twice as much fire.";
}
if(a == 3 && b == 0){
	return "Greater Fire Dash\n Spew extra fire when you use fire dash.";
}
if(a == 4 && b == 0){
	return "Forge Fires\n Your fire burns so hot you can slowly melt spikes.";
}








if(a == 0 && b == 1){
	return "Inner Flame\n When hurt, recover twice as quickly.";
}
if(a == 1 && b == 1){
	return "Double jump\n Jump while in the air to jump a second time.";
}

if(a == 2 && b == 1){
	return "Gear Supply\n Levels will contain more items to collect.";
}

if(a == 3 && b == 1){
	return "Jump Shot\n Shoot fire in all four basic directions when you double jump.";
}
if(a == 4 && b == 1){
	return "Sky Fire\n Press up and X while healthy to call lightning.";
}







if(a == 0 && b == 2){
	return "Meteor Strike\n Hold the jump button while falling to damage monsters you bump.";
}
if(a == 1 && b == 2){
	return "Wall Slide\n Press into a wall while falling to slow down.";
}
if(a == 2 && b == 2){
	return "Fire Trail\n While healthy, leave a fire trail wherever you go.";
}
if(a == 3 && b == 2){
	return "Fire Bat\n Summon a firey ally to attack your foes.";
}
if(a == 4 && b == 2){
	return "Flight\n Hold Y to fly for a few seconds.";
}
if(a == 5 && b == 2){
	return "Greater Bats\n You can summon multipe fire bats.";
}





return "...";