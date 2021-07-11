// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SELECAO_NAVE_SLOT(sair_da_selecao){




#region PREÇO_E_VENDA_ATIRADOR

	// >>>>>>>>>
	// Variáveis facilitadoras para definir preço
	
		var PRECO;
		
		//Tropa:
			PRECO[NAVE_TROPA_0]			= 50; // Venda em: SELECAO_NAVE_TROPAS(sair_da_selecao)
						
		//Atirador:
			PRECO[NAVE_ATIRADOR_0]		= 50; // Venda em: SELECAO_NAVE_ATIRADORES(sair_da_selecao)
						
						
		//Canhão:
			PRECO[NAVE_CANHAO_0]		= 50; // Venda em: SELECAO_NAVE_CANHOES(sair_da_selecao)
						
		//Suporte:
			PRECO[NAVE_SUPORTE_0]		= 50; // Venda em: SELECAO_NAVE_SUPORTES(sair_da_selecao)
			

	// Variáveis facilitadoras para definir preço
	// <<<<<<<<<
	
#endregion PREÇO_E_VENDA_ATIRADOR	



switch(inSELECAO_NAVE)
	{
		
	#region SLOT_VAZIO:
	
			case SELECAO_NAVE_SLOT_VAZIO:
			case SELECAO_NAVE_SLOT_VAZIO_TROPA:
			case SELECAO_NAVE_SLOT_VAZIO_ATIRADOR:
			case SELECAO_NAVE_SLOT_VAZIO_CANHAO:
			case SELECAO_NAVE_SLOT_VAZIO_SUPORTE:
		
				/*
					Selecione uma nave inicial nível 0:
					- Tropa;
					- Atirador;
					- Canhão;
					- Suporte;
				*/
				
				//Desenha preview da nave a ser criada e área de alcance:
					switch(inSELECAO_NAVE)
					{
						case SELECAO_NAVE_SLOT_VAZIO_TROPA:
							var xx = (x<obj_Camera.x) ? -20 : 20;
							draw_sprite_ext(spr_Tropas_0_2,0,x+xx,y,1,1,(x<obj_Camera.x) ? 0 : 180,-1,.3);	draw_area_alcance_tropa(NAVE_TROPA_0) break;
						case SELECAO_NAVE_SLOT_VAZIO_ATIRADOR:
							draw_sprite_ext(spr_Atirador_0,0,x   ,y,1,1,(x<obj_Camera.x) ? 0 : 180,-1,.3);	draw_area_alcance_atirador(NAVE_ATIRADOR_0)	break;
						case SELECAO_NAVE_SLOT_VAZIO_CANHAO:
							draw_sprite_ext(spr_Atirador_0,0,x   ,y,1,1,(x<obj_Camera.x) ? 0 : 180,-1,.3); break;
						case SELECAO_NAVE_SLOT_VAZIO_SUPORTE:
							draw_sprite_ext(spr_Atirador_0,0,x   ,y,1,1,(x<obj_Camera.x) ? 0 : 180,-1,.3); break;
					}
					
				//Desenha Círculo de seleção:
					draw_sprite(spr_Circulo_Selecao,0,x,y)
				
				//Tropa:
					var check_click = draw_bt_SELECAO_NAVE( 45,SELECAO_NAVE_SLOT_VAZIO_TROPA	,17,0,13,1,Obj_Tropa	,PRECO[NAVE_TROPA_0]	,noone);
					 if check_click {sair_da_selecao=false;}
				//Atirador:
					var check_click = draw_bt_SELECAO_NAVE(135,SELECAO_NAVE_SLOT_VAZIO_ATIRADOR	,15,0,11,1,Obj_Atirador	,PRECO[NAVE_ATIRADOR_0]	,noone);
					 if check_click {sair_da_selecao=false;}
				//Canhão:
					var check_click = draw_bt_SELECAO_NAVE(225,SELECAO_NAVE_SLOT_VAZIO_CANHAO	,16,0,12,1,noone		,PRECO[NAVE_CANHAO_0]	,noone);
					 if check_click {sair_da_selecao=false;}
				//Suporte:
					var check_click = draw_bt_SELECAO_NAVE(315,SELECAO_NAVE_SLOT_VAZIO_SUPORTE	,14,0,10,1,noone		,PRECO[NAVE_SUPORTE_0]	,noone);
					 if check_click {sair_da_selecao=false;}
					 
		
			break;

	#endregion SLOT_VAZIO
		
			
	}



	return sair_da_selecao;

}