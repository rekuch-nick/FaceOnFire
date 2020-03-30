

var xPoint = playerXLeft();
var yPoint = playerYFoot();

var xTile = floor(xPoint / 32);
var yTile = floor(yPoint / 32);



	
	
if(tileCanStand(xTile, yTile) && yPoint / 32 == floor(yPoint / 32)){
	return true;
}

var xPoint = playerXRight();
var yPoint = playerYFoot();

var xTile = floor(xPoint / 32);
var yTile = floor(yPoint / 32);


if(tileCanStand(xTile, yTile) && yPoint / 32 == floor(yPoint / 32)){
	return true;
}




if(player.onPlat > 0){ return true; }

with (objMovePlatform) {
	if(  (playerXRight() >= x - (sprite_width / 2) && playerXRight() <= x + (sprite_width / 2)) ||
			(playerXLeft() >= x - (sprite_width / 2) && playerXLeft() <= x + (sprite_width / 2))  ){
				
		
				
		if(floor(playerYFoot()) - 2 == floor(y)){ 
			if(player.duckTime < 5){
				player.onPlat = xDir * moveSpeed;
				return true; 
			}
		}
				
	}
}















return false;