// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SELECAO_NAVE_SUPORTES(sair_da_selecao){




#region PREÇO_E_VENDA_SUPORTE

	// >>>>>>>>>
	// Variáveis facilitadoras para definir preço
	
		var PRECO,P_VENDA;

//**************************************TROPAS NÍVEL 0**************************************							
			P_VENDA[NAVE_SUPORTE_0]		= 50;
			
//**************************************TROPAS NÍVEL 1**************************************					
			PRECO[NAVE_SUPORTE_1]	= 50;
			
			P_VENDA[NAVE_SUPORTE_1]	= PRECO[NAVE_SUPORTE_1]*.7;
			
//**************************************TROPAS NÍVEL 2**************************************					
			PRECO[NAVE_SUPORTE_2]	= 50;
			
			P_VENDA[NAVE_SUPORTE_2]	= PRECO[NAVE_SUPORTE_2]*.7;
			
//**************************************TROPAS NÍVEL 3**************************************					
			PRECO[NAVE_SUPORTE_3]	= 50;
			
			P_VENDA[NAVE_SUPORTE_3]	= PRECO[NAVE_SUPORTE_3]*.7;
	
	
	// Variáveis facilitadoras para definir preço
	// <<<<<<<<<
	
#endregion PREÇO_E_VENDA_SUPORTE	


	switch(inSELECAO_NAVE)
	{

		
//***********************ELEMENTO NEUTRO***********************

	
		#region Nível 0:
			case SELECAO_NAVE_UP_SUPORTE_0:
			case SELECAO_NAVE_UP_SUPORTE_0_1:
			case SELECAO_NAVE_UP_SUPORTE_0_REALOCAR:
			case SELECAO_NAVE_UP_SUPORTE_0_VENDA:
		
				/*
					Selecione o upgrade para nível 1 ou venda:
					- Suporte 1;
					- Realocar;
					- Venda;
				*/
				
				//Desenha Círculo de seleção:
					draw_sprite(spr_Circulo_Selecao,0,x,y)
				

				//Upgrade para Suporte 1:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ 90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_SUPORTE_0_1,
															/* SUB-IMAGES:	  */ 18, 0, 6, 1,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_SUPORTE_1,
															/* PREÇO AÇÃO:	  */ PRECO[NAVE_SUPORTE_1],
															/* REQUER FUSÃO:  */ ds_stack_start(NAVE_SUPORTE_0));
					if check_click {sair_da_selecao=false;}
				

				//Realocar:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -45,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_SUPORTE_0_REALOCAR,
															/* SUB-IMAGES:	  */ 48, 0, 6, 1,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_REALOCAR_SUPORTE,
															/* PREÇO AÇÃO:	  */ 0,
															/* REQUER FUSÃO:  */ noone);
					if check_click {sair_da_selecao=false;}
					
				
				//Vender nave:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_SUPORTE_0_VENDA,
															/* SUB-IMAGES:	  */ 3,4,3,4,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_VENDA,
															/* PREÇO AÇÃO:	  */ P_VENDA[NAVE_SUPORTE_0],
															/* REQUER FUSÃO:  */ noone);
					 if check_click {sair_da_selecao=false;}
					 
		
			break;
		
		#endregion Nível 0
		
		
		#region Nível 1:
			case SELECAO_NAVE_UP_SUPORTE_1:
			case SELECAO_NAVE_UP_SUPORTE_1_2:
			case SELECAO_NAVE_UP_SUPORTE_1_REALOCAR:
			case SELECAO_NAVE_UP_SUPORTE_1_VENDA:
		
				/*
					Selecione o upgrade para nível 2 ou venda:
					- Suporte 2;
					- Realocar;
					- Venda;
				*/
				
				//Desenha Círculo de seleção:
					draw_sprite(spr_Circulo_Selecao,0,x,y)
				

				//Upgrade para Suporte 1:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ 90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_SUPORTE_1_2,
															/* SUB-IMAGES:	  */ 18, 0, 6, 1,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_SUPORTE_2,
															/* PREÇO AÇÃO:	  */ PRECO[NAVE_SUPORTE_2],
															/* REQUER FUSÃO:  */ ds_stack_start(NAVE_SUPORTE_1));
					if check_click {sair_da_selecao=false;}
				

				//Realocar:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -45,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_SUPORTE_1_REALOCAR,
															/* SUB-IMAGES:	  */ 48, 0, 6, 1,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_REALOCAR_SUPORTE,
															/* PREÇO AÇÃO:	  */ 0,
															/* REQUER FUSÃO:  */ noone);
					if check_click {sair_da_selecao=false;}
					
				
				//Vender nave:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_SUPORTE_1_VENDA,
															/* SUB-IMAGES:	  */ 3,4,3,4,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_VENDA,
															/* PREÇO AÇÃO:	  */ P_VENDA[NAVE_SUPORTE_1],
															/* REQUER FUSÃO:  */ noone);
					 if check_click {sair_da_selecao=false;}
					 
		
			break;
		
		#endregion Nível 1
		
		
		#region Nível 2:
			case SELECAO_NAVE_UP_SUPORTE_2:
			case SELECAO_NAVE_UP_SUPORTE_2_3:
			case SELECAO_NAVE_UP_SUPORTE_2_REALOCAR:
			case SELECAO_NAVE_UP_SUPORTE_2_VENDA:
		
				/*
					Selecione o upgrade para nível 3 ou venda:
					- Suporte 3;
					- Realocar;
					- Venda;
				*/
				
				//Desenha Círculo de seleção:
					draw_sprite(spr_Circulo_Selecao,0,x,y)
				

				//Upgrade para Suporte 1:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ 90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_SUPORTE_2_3,
															/* SUB-IMAGES:	  */ 18, 0, 6, 1,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_SUPORTE_3,
															/* PREÇO AÇÃO:	  */ PRECO[NAVE_SUPORTE_3],
															/* REQUER FUSÃO:  */ ds_stack_start(NAVE_SUPORTE_2));
					if check_click {sair_da_selecao=false;}
				

				//Realocar:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -45,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_SUPORTE_2_REALOCAR,
															/* SUB-IMAGES:	  */ 48, 0, 6, 1,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_REALOCAR_SUPORTE,
															/* PREÇO AÇÃO:	  */ 0,
															/* REQUER FUSÃO:  */ noone);
					if check_click {sair_da_selecao=false;}
					
				
				//Vender nave:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_SUPORTE_2_VENDA,
															/* SUB-IMAGES:	  */ 3,4,3,4,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_VENDA,
															/* PREÇO AÇÃO:	  */ P_VENDA[NAVE_SUPORTE_2],
															/* REQUER FUSÃO:  */ noone);
					 if check_click {sair_da_selecao=false;}
					 
		
			break;
		
		#endregion Nível 2
		
		
		#region Nível 3:
			case SELECAO_NAVE_UP_SUPORTE_3:
			case SELECAO_NAVE_UP_SUPORTE_3_REALOCAR:
			case SELECAO_NAVE_UP_SUPORTE_3_VENDA:
		
				/*
					Selecione venda:
					- Realocar;
					- Venda;
				*/
				
				//Desenha Círculo de seleção:
					draw_sprite(spr_Circulo_Selecao,0,x,y)
				

				//Realocar:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -45,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_SUPORTE_3_REALOCAR,
															/* SUB-IMAGES:	  */ 48, 0, 6, 1,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_REALOCAR_SUPORTE,
															/* PREÇO AÇÃO:	  */ 0,
															/* REQUER FUSÃO:  */ noone);
					if check_click {sair_da_selecao=false;}
					
				
				//Vender nave:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_SUPORTE_3_VENDA,
															/* SUB-IMAGES:	  */ 3,4,3,4,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_VENDA,
															/* PREÇO AÇÃO:	  */ P_VENDA[NAVE_SUPORTE_3],
															/* REQUER FUSÃO:  */ noone);
					 if check_click {sair_da_selecao=false;}
					 
		
			break;
		
		#endregion Nível 2

			
	}

	return sair_da_selecao;

}