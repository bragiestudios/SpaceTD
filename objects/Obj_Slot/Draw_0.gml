

	//Define COR:
		if NAVE_CONECTADA=noone //Slot vazio
		 COR=c_white;
		else
		 COR = NAVE_CONECTADA.COR;

	//Reposiciona: 
		//Esquerda:
			if SLOT_ID<100
			{
				//Impar:
				if (SLOT_ID%2)=0
				{
					x=obj_Camera.x-250;
					y=obj_Camera.y-780+100+((SLOT_ID-1)*185/2);
				}
				//Par:
				else
				{
					x=obj_Camera.x-405;
					y=obj_Camera.y-687+100+((SLOT_ID-2)*185/2);
				}
			}
		//Direita:
			else
			{
				//Impar:
				if (SLOT_ID%2)=0
				{
					x=obj_Camera.x+250;
					y=obj_Camera.y-687+100+((SLOT_ID-102)*185/2);
				}
				//Par:
				else
				{
					x=obj_Camera.x+405;
					y=obj_Camera.y-780+100+((SLOT_ID-101)*185/2);
				}
			}
			



	//Desenha popup-SELECAO_NAVE de tropa [PARTE 1]
		if mySELECAO_NAVE=true
		{
			//Escurece fundo:
					draw_set_alpha(.2)
					draw_set_color(c_black)
				draw_rectangle(0,0,room_width,room_height,false)
					draw_set_alpha(1)
		}
			
	//Se desenha:
		if NAVE_CONECTADA=noone //Slot vazio
		{
			//Sem nenhuma nave criada, desenha slot vazio:
				image_alpha=.3
				image_blend=COR
				draw_self()
		}
		else
		{
			//Desenha brilho:
				//Tratar alpha:	
				ALPHA1+=ALPHA_ADD1;
				ALPHA2+=ALPHA_ADD2;
	
				if ALPHA1>1 or ALPHA1<0.2
				 {ALPHA_ADD1*=-1; ALPHA1+=ALPHA_ADD1*2;}
	 
				if ALPHA2>1 or ALPHA2<0.2
				 {ALPHA_ADD2*=-1; ALPHA2+=ALPHA_ADD2*2;}
	 
				//Desenha:
				draw_sprite_ext(spr_Slot_Brilho  ,0,x,y,1,1,0,COR,ALPHA1/4)	 
				draw_sprite_ext(spr_Slot_Brilho_2,0,x,y,1,1,0,COR,ALPHA2/4)	
			
			
			//Se desenha:
				image_alpha=.5
				image_blend=COR
				draw_self()
				
			//Desenha destaque para fundição:
				if inFUNDICAO>false
				{
					//Se faço parte das opções de fundição atual...
					if string_count("|QUERO_IT_"+string(inFUNDICAO),FUNDIR_ACAO)
					{
						//Desenha que é uma opção para fundir:
						draw_set_color(c_white)
						draw_set_alpha(.2)
						draw_circle(x,y,85,false)
						draw_set_alpha(1)
					}
					
				}
				
				
			//desenha a nave:
				with(NAVE_CONECTADA)
				{
					event_perform(ev_draw,0)
				}
		}
		
		
		//trata mySELECAO_NAVE:
		switch(mySELECAO_NAVE)
		{
			//Soluciona bug de 1 click já ativar e desativar a seleção: 
				case .5:
					mySELECAO_NAVE=true;
					break;
					
			//Desenha popup-SELECAO_NAVE de tropa [PARTE 2]
				case true:
					//Desenha circulo, preview de alcance e botões(com ação):
						draw_and_check_opcoes_SELECAO_NAVE()
					break;
					
			//Retorna à profundidade original: 
				case false:
					depth=DEPTH;
					break;
		}