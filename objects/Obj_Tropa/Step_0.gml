/// @description Direcionamento e lançamento:


	//Genérico:
		if id=inst_Tropa_Generica {exit;}
		
		
		if LANCAMENTO_FILHO!=noone
		{
			if FILHO[LANCAMENTO_FILHO].ALOCAMENTO_status>0
			{
				FILHO[LANCAMENTO_FILHO].ALOCAMENTO_status--;
				image_angle+=LANCAMENTO_ANGULO_ADD;
			}
			else
			{
				if point_distance(x,y,FILHO[LANCAMENTO_FILHO].x,FILHO[LANCAMENTO_FILHO].y)>150
				{
					if LANCAMENTO_FILHO<N_FILHOS-1
					{
						LANCAMENTO_FILHO++;
						
						if instance_exists(FILHO[LANCAMENTO_FILHO])
						{
							var ANGULO_DIFERENCA = point_direction(x,y,FILHO[LANCAMENTO_FILHO].ALOCAMENTO_x,FILHO[LANCAMENTO_FILHO].ALOCAMENTO_y)
							if (ANGULO_DIFERENCA>270) {ANGULO_DIFERENCA-=360;}
							LANCAMENTO_ANGULO_ADD=(ANGULO_DIFERENCA-image_angle)/FILHO[LANCAMENTO_FILHO].ALOCAMENTO_status;
						}
					}
					else
					{
						LANCAMENTO_FILHO=noone;
					}
				}
				
			}
			
		}
		else
		{
			if (ANGULO_PARADO>270) {ANGULO_PARADO-=360;}
			image_angle+=(ANGULO_PARADO-image_angle)/20
			speed=0;
		}