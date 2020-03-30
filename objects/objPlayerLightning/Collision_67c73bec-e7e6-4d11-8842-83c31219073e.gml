


var n = other.object_index;
var alreadyHit = false;

for(var i=0; i<ds_list_size(mobsHit); i++){
	if(ds_list_find_value(mobsHit, i) == n){
		alreadyHit = true;
		break;
	}
}

if(!alreadyHit){
	ds_list_add(mobsHit, other.object_index);
	
	//other.hp -= pow;
	other.incomingDamage += pow;
}
