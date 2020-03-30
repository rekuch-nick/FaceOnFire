var f = footY + 3;


if ( ! (y + f) / 32 == floor( (y + f) / 32) ) { return false; }



var px = floor(x / 32);
var py = floor((y + f) / 32);

if( tileCanStand(px, py)){ return true; }

var px = floor((x - bodyX) / 32);
if( tileCanStand(px, py)){ return true; }

var px = floor((x + bodyX) / 32);
if( tileCanStand(px, py)){ return true; }


return false;