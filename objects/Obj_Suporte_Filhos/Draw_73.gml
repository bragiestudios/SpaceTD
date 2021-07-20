

			if instance_exists(SLOT_AJUDADO)
			and ATIVO
			{
				if instance_exists(SLOT_AJUDADO.NAVE_CONECTADA)
				{
					var ELEMENTO = 0;
		
					switch(SLOT_AJUDADO.NAVE_CONECTADA.ELEMENTO)
					{
						case ELEMENTO_NEUTRO:	ELEMENTO=57; break;
			
						case ELEMENTO_AGUA:		ELEMENTO=5;	 break;
						case ELEMENTO_TERRA:	ELEMENTO=9;	 break;
						case ELEMENTO_FOGO:		ELEMENTO=13; break;
						case ELEMENTO_AR:		ELEMENTO=17; break;
			
						case ELEMENTO_FERVE:	ELEMENTO=21; break;
						case ELEMENTO_PEDRA:	ELEMENTO=25; break;
			
						case ELEMENTO_MULTIRAO:	ELEMENTO=25; break;
						case ELEMENTO_ESCUDO:	ELEMENTO=29; break;
						case ELEMENTO_ATAQUE:	ELEMENTO=33; break;
			
						case ELEMENTO_LAVA:		ELEMENTO=37; break;
						case ELEMENTO_FURACAO:	ELEMENTO=41; break;
						case ELEMENTO_CHUVA:	ELEMENTO=45; break;
			
						case ELEMENTO_TESLA:	ELEMENTO=49; break;
						case ELEMENTO_GELO:		ELEMENTO=53; break;
					}
		
		
					image_index=COUNT+ELEMENTO-1;
					var xx = x-xstart;
					var yy = y-ystart;
					draw_sprite_ext(spr_Suporte_Sombra,COUNT-1    ,SLOT_AJUDADO.x+xx,SLOT_AJUDADO.y+yy,.5,.5,0,-1,1)
					draw_sprite_ext(sprite_index      ,image_index,SLOT_AJUDADO.x+xx,SLOT_AJUDADO.y+yy,.5,.5,0,-1,1)
			
				}
			}