var rarity = argument0;

for(var a=0; a<25; a++){
	for(var b=1; b<25; b++){
		var r = irandom_range(0, rarity);
		if(r == 0 && bmap[a, b] == ""){
			bmap[a, b] = "block";
		}
	}
}