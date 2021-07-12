/// @description Gerar Filhos


		//Filhos
		for(var i=0; i<N_FILHOS; i++)
		{
			if !instance_exists(FILHO[i]) 
			{
				FILHO[i]=instance_create_depth(x,y,depth+1,Obj_Tropa_Filhos);
			
				FILHO[i].PAI=id;
			
				FILHO[i].FILHO_ID=i;
			
				FILHO[i].TIPO_NAVE=TIPO_NAVE;
			
				FILHO[i].PROJETIL_TROPA_SPEED=PROJETIL_TROPA_SPEED;
			
				FILHO[i].VIDA=VIDA_FILHOS;
				FILHO[i].DANO=DANO_FILHOS;
				FILHO[i].COUNTDOWN_ATAQUE=RECARGA_ATAQUE_FILHOS;
				FILHO[i].RECARGA_ATAQUE=RECARGA_ATAQUE_FILHOS;
			
				FILHO[i].VANTAGEM_ELEMENTAR=VANTAGEM_ELEMENTAR;
				FILHO[i].DESVANTAGEM_ELEMENTAR=DESVANTAGEM_ELEMENTAR;
			
				FILHO[i].ELEMENTO=ELEMENTO;
			
				
					var speed_= speed;
					var direction_= direction;
					direction=90+((360/N_FILHOS)*i);
					speed=N_FILHOS*10; //Raio
						FILHO[i].ALOCAMENTO_x=ALOCAMENTO_x+hspeed;
						FILHO[i].ALOCAMENTO_y=ALOCAMENTO_y+vspeed;
					speed=speed_;
					direction=direction_;
				
			
				FILHO[i].ALOCAMENTO_speed=ALOCAMENTO_speed;
			
				FILHO[i].ALOCAMENTO_status=20;
			}
		}
		
		
		//Lançamento:
		LANCAMENTO_FILHO=0;
		var ANGULO_DIFERENCA = point_direction(x,y,FILHO[LANCAMENTO_FILHO].ALOCAMENTO_x,FILHO[LANCAMENTO_FILHO].ALOCAMENTO_y)
		if (ANGULO_DIFERENCA>270) {ANGULO_DIFERENCA-=360;}
		LANCAMENTO_ANGULO_ADD=(ANGULO_DIFERENCA-image_angle)/FILHO[LANCAMENTO_FILHO].ALOCAMENTO_status;
		
		
		alarm[0]=VELOCIDADE_REPOSICAO;