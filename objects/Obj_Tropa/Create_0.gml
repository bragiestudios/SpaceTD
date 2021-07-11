
	//Variáveis locais:

		//Direção:
		ANGULO_PARADO = (x<obj_Camera.x) ? 0 : 180;
		image_angle	= ANGULO_PARADO;
		
		//Posição correta:
		x += (x<obj_Camera.x) ? -20 : 20;
		
		//Countdown
		COUNTDOWN_REPOSICAO = 0;
		
		//VELOCIDADE DO PROJETIL DO FILHO
		PROJETIL_TROPA_SPEED = 10
		
		//ALOCAMENTO:
		var Linha = point_distance(x,0,obj_Camera.x,0)>300 ? 1.8 : 1;
		ALOCAMENTO_x=obj_Camera.x+((x<obj_Camera.x) ? -50*Linha : 50*Linha);
		ALOCAMENTO_y=y;
		ALOCAMENTO_speed=40;
		
		//Contigura caracteristicas pelo tipo:
		SETUP_TROPA(NAVE_TROPA_0)
		
		//Filhos
		for(var i=0; i<N_FILHOS; i++)
		{
			FILHO[i]=instance_create_depth(x,y,depth,Obj_Tropa_Filhos);
			
			FILHO[i].PAI=id;
			
			FILHO[i].PROJETIL_TROPA_SPEED=PROJETIL_TROPA_SPEED;
			
			FILHO[i].VIDA=VIDA_FILHOS;
			FILHO[i].DANO=DANO_FILHOS;
			FILHO[i].COUNTDOWN_ATAQUE=RECARGA_ATAQUE_FILHOS;
			
			FILHO[i].VANTAGEM_ELEMENTAR=VANTAGEM_ELEMENTAR;
			FILHO[i].DESVANTAGEM_ELEMENTAR=DESVANTAGEM_ELEMENTAR;
			
			FILHO[i].ELEMENTO=ELEMENTO;
			
				
				var speed_= speed;
				var direction_= direction;
				direction=90+((360/N_FILHOS)*i);
				speed=N_FILHOS*10;
					FILHO[i].ALOCAMENTO_x=ALOCAMENTO_x+hspeed;
					FILHO[i].ALOCAMENTO_y=ALOCAMENTO_y+vspeed;
				speed=speed_;
				direction=direction_;
				
			
			FILHO[i].ALOCAMENTO_speed=ALOCAMENTO_speed;
			
			FILHO[i].ALOCAMENTO_delay=i*20;
		}