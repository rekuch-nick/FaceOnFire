if(world.gameState == "play"){
	zapCD --;
	if(zapCD < 1){
		zapCD = zapCDMax;
		
		
		do {
			inst = instance_find(objZapBlock, irandom(instance_number(objZapBlock) - 1));
		} until (inst != self);
		tx = inst.x + 16;
		ty = inst.y + 16;
		
		
		var angle = arctan2(ty - (y+16), tx - (x+16));
		var xSpeed = 1 * cos(angle);
		var ySpeed = 1 * sin(angle);
		var dis = point_distance(x + 16, y + 16, tx, ty);
		
		
		for(var i=0; i<dis; i+=32){
			var a = (x + 16) + (xSpeed * i);
			var b = (y + 16) + (ySpeed * i);
			instance_create_depth(a, b, -40, objShotComing);
		}
		
	
	
	
	}
}