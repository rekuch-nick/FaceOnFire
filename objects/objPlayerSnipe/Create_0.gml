
x = player.x;
y = player.y;

moveSpeed = 10;



xSpeed = player.xDPad * moveSpeed;
ySpeed = player.yDPad * moveSpeed;

if(xSpeed == 0 && ySpeed == 0){
	xSpeed = moveSpeed * player.xDir;
}

image_angle = point_direction(x, y, x + xSpeed, y + ySpeed);


remove = false;

pow = 3;
