var a = argument0;
var b = argument1;
var stand = argument2;

var aTile = floor(a / 32);
var bTile = floor(b / 32);




if(stand){
	var hit = tileCanStand(aTile, bTile);
} else {
	var hit = tileCanBlock(aTile, bTile);
}
	

return hit;