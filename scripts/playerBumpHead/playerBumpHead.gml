

var xPoint = playerXLeft();
var yPoint = playerYHead();

var xTile = floor(xPoint / 32);
var yTile = floor(yPoint / 32);

	
if(tileCanBlock(xTile, yTile)){
	if(headBreak){ playerHeadBreak(xTile, yTile); }
	return true;
}




var xPoint = playerXRight();
var yPoint = playerYHead();

var xTile = floor(xPoint / 32);
var yTile = floor(yPoint / 32);


if(tileCanBlock(xTile, yTile)){
	if(headBreak){ playerHeadBreak(xTile, yTile); }
	return true;
}




return false;