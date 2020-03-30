
xBest = -1;
yBest = -1;

for(var a=0; a<MAP_SIZE; a++){
	for(var b=0; b<MAP_SIZE; b++){
		
		if(mapStatus[a, b] == "open"){
			if(xBest == -1 || costReal[a, b] + costGuess[a, b] < costReal[xBest, yBest] + costGuess[xBest, yBest]){
				xBest = a;
				yBest = b;
			}
			
		}
		
	}
}

xCursor = xBest;
yCursor = yBest;