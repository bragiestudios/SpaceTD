/// @description Gerar Filhos


		//Filhos
		for(var i=0; i<N_FILHOS; i++)
		{
			if !instance_exists(FILHO[i]) 
			{
				FILHO[i]=instance_create_depth(x,y,depth+1,Obj_Tropa_Filhos);
			
				SETUP_TROPA_FILHO(i);
				
				FILHO[i].PAI=id;
			
				FILHO[i].FILHO_ID=i;
			
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