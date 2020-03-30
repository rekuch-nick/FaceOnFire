
with(objPickup){ instance_destroy(); }
with(objEffect){ instance_destroy(); }
with(objBlock){ instance_destroy(); }
with(objExtra){ instance_destroy(); }
with(objMob){ 
	if(followObject != noone){
		instance_destroy(followObject); 
	}
	instance_destroy(); 
}
with(objFireman){ instance_destroy(); }
with(objSlowAura){ instance_destroy(); }
with(objGeyser){ instance_destroy(); }


for(var a=0; a<25; a++){
	for(var b=0; b<25; b++){
		bmap[a, b] = noone;
	}
}