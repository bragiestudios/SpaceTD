
	//Variáveis locais:

		//Direção:
		ANGULO_PARADO = (x<obj_Camera.x) ? 0 : 180;
		image_angle	= ANGULO_PARADO;
		
		//Posição correta:
		x += (x<obj_Camera.x) ? -20 : 20;
		
		//VELOCIDADE DO PROJETIL DO FILHO
		PROJETIL_TROPA_SPEED = 5
		
		//ALOCAMENTO:
		var Linha = point_distance(x,0,obj_Camera.x,0)>300 ? 1.8 : 1;
		ALOCAMENTO_x=obj_Camera.x+((x<obj_Camera.x) ? -50*Linha : 50*Linha);
		ALOCAMENTO_y=y//+choose(+100,-100);
		ALOCAMENTO_speed=40;
		
		ANGULO_PARADO = point_direction(x,y,ALOCAMENTO_x,ALOCAMENTO_y);  //[[[[[[ESCOLHER ISSO AQUI DEPOIS]]]]]]]]]
		
		//Contigura caracteristicas pelo tipo:
		SETUP_TROPA(NAVE_TROPA_0)

		//Genérico:
			if id=inst_Tropa_Generica {exit;}
		
		
		//Filhos
			for(var i=0; i<N_FILHOS; i++)
			{FILHO[i]=noone;}
			
			alarm[0]=1;
		
			LANCAMENTO_FILHO=0;
			LANCAMENTO_ANGULO_ADD=0;
		
		
		
		