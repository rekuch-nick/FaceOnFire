var dir = argument0;
var newSpeed = moveSpeed;
lastRunning = running;

var tossShot = false;
if(skillSprint && dir == 1 && rightTapTime > 0 && rightTapTime < dashMax && ySpeed == 0){ running = true; tossShot = true;}
if(skillSprint && dir == -1 && leftTapTime > 0 && leftTapTime < dashMax && ySpeed == 0){ running = true; tossShot = true;}
if(tossShot){
	with(objPlayerSpark){
		if(xSpeed == 0){ timeCD = 50; }
		xSpeed = dir * 10;
	}
}


var if(dir == xDir){ runTime ++; } else { runTime = 0; }
//if(runTime > 20){ newSpeed += 2;}



if(lastRunning != running && running && player.skillSprintShot){
		var s1 = instance_create_depth(player.x, player.y - 32, -40, objPlayerJumpShot);
		s1.xSpeed = -8 * xDir;
		
		var s2 = instance_create_depth(player.x, player.y, -40, objPlayerJumpShot);
		s2.xSpeed = -8 * xDir;
		
		var s3 = instance_create_depth(player.x, player.y + 32, -40, objPlayerJumpShot);
		s3.xSpeed = -8 * xDir;

}


if(running){ newSpeed += 6; }
newSpeed *= dir;

xSpeed = newSpeed;
xDir = dir;