var dir = argument0;

if(dir == 1){
	var xPoint = playerXRight();
	var yPoint = playerYFace();
}

if (dir == -1) {
	var xPoint = playerXLeft();
	var yPoint = playerYFace();
}


var xTile = floor(xPoint / 32);
var yTile = floor(yPoint / 32);


if(tileCanBlock(xTile, yTile)){
	
	if(world.bmap[xTile, yTile].object_index == objStickyBlock){
		player.touchingStickyBlock = true;
	}
	
	if(player.fireballTime > 0){
		if(object_is_ancestor(world.bmap[xTile, yTile].object_index, objBreakable)){
			world.bmap[xTile, yTile].hp -= 10;
			
		}
	}
		
	return true;
}

///

if(dir == 1){
	var xPoint = playerXRight();
	var yPoint = playerYFoot() - 1;
}

if (dir == -1) {
	var xPoint = playerXLeft();
	var yPoint = playerYFoot() - 1;
}


var xTile = floor(xPoint / 32);
var yTile = floor(yPoint / 32);


if(tileCanBlock(xTile, yTile)){
	return true;
}





return false;