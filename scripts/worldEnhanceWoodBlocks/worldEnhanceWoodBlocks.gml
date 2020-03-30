var ww = ceil(player.stage / 10);
var stage = player.stage % 10;
var n = 0;




n = irandom_range(0, 1);
if(player.extraHearts){ n += 2; }
worldAddBlockEnhancement(n, objExtraHeart);








n = 4;
worldAddBlockEnhancement(n, objExtraCandle);



n = irandom_range(2, 6);
worldAddBlockEnhancement(n, objExtraBomb);


if(ww % 3 == 0 && (stage == 3 || stage == 6 || stage == 8) ){
	n = irandom_range(-2, 2);
	worldAddBlockEnhancement(n, objExtraFace);
}

if(ww >= 4 && ww % 2 == 0 && (stage == 3 || stage == 6 || stage == 8) ){
	n = irandom_range(4, 9);
	worldAddBlockEnhancement(n, objExtraCurse);
}