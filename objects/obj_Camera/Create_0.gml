

	//Posição inicial:
		x=room_width/2
		y=room_height/2


	//Dimenções da tela:
		globalvar wDISPLAY, hDISPLAY;
		wDISPLAY = 0;
		hDISPLAY = 0;
	
	//Responsivo:
		set_responsividade_de_tela();
		
	//Repete responsivo:
		alarm[0]=room_speed*2;
		
	//Posiciona placares:
		yPLACAR = 500;
		
	//Para desenhar placares sobrepostos:
		depth=-100;
		
