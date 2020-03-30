var moveSpeed = argument0;
var xOff = argument1;
var yOff = argument2;
var note = argument3;
var xStartOff = argument4;
var yStartOff = argument5;




	var s = instance_create_depth(x + xStartOff, y + yStartOff, -41, objWaterShot);
	s.moveSpeed = moveSpeed; 
	s.tx = x + xOff; 
	s.ty = y + yOff;




//if(note == "fireman"){
//	var s = instance_create_depth(x + xStartOff, y + yStartOff, -41, objWaterShot);
//	s.moveSpeed = moveSpeed; 
//	s.tx = x + xOff; 
//	s.ty = y + yOff;
//}