// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SELECAO_NAVE_TROPAS(sair_da_selecao){




#region PREÇO_E_VENDA_TROPA

	// >>>>>>>>>
	// Variáveis facilitadoras para definir preço
	
		var PRECO,P_VENDA;

//**************************************TROPAS NÍVEL 0**************************************							
			P_VENDA[NAVE_TROPA_0]		= 50;
			
//**************************************TROPAS NÍVEL 1**************************************					
			PRECO[NAVE_TROPA_1_AGUA]	= 50;
			PRECO[NAVE_TROPA_1_AR]		= 50;
			PRECO[NAVE_TROPA_1_FOGO]	= 50;
			PRECO[NAVE_TROPA_1_TERRA]	= 50;
			
			P_VENDA[NAVE_TROPA_1_AGUA]	= PRECO[NAVE_TROPA_1_AGUA]*.7;
			P_VENDA[NAVE_TROPA_1_AR]	= PRECO[NAVE_TROPA_1_AR]*.7;
			P_VENDA[NAVE_TROPA_1_FOGO]	= PRECO[NAVE_TROPA_1_FOGO]*.7;
			P_VENDA[NAVE_TROPA_1_TERRA]	= PRECO[NAVE_TROPA_1_TERRA]*.7;

//**************************************TROPAS NÍVEL 2**************************************					
			PRECO[NAVE_TROPA_2_AGUA]	= 50;
			PRECO[NAVE_TROPA_2_AR]		= 50;
			PRECO[NAVE_TROPA_2_FOGO]	= 50;
			PRECO[NAVE_TROPA_2_TERRA]	= 50;
			
			P_VENDA[NAVE_TROPA_2_AGUA]	= PRECO[NAVE_TROPA_2_AGUA]*.7;
			P_VENDA[NAVE_TROPA_2_AR]	= PRECO[NAVE_TROPA_2_AR]*.7;
			P_VENDA[NAVE_TROPA_2_FOGO]	= PRECO[NAVE_TROPA_2_FOGO]*.7;
			P_VENDA[NAVE_TROPA_2_TERRA]	= PRECO[NAVE_TROPA_2_TERRA]*.7;

//**************************************TROPAS NÍVEL 3**************************************			
			PRECO[NAVE_TROPA_3_ATAQUE]		= 50;
			PRECO[NAVE_TROPA_3_ESCUDO]		= 50;
			PRECO[NAVE_TROPA_3_MULTIRAO]	= 50;

			P_VENDA[NAVE_TROPA_3_ATAQUE]	= PRECO[NAVE_TROPA_3_ATAQUE]*.7;
			P_VENDA[NAVE_TROPA_3_ESCUDO]	= PRECO[NAVE_TROPA_3_ESCUDO]*.7;
			P_VENDA[NAVE_TROPA_3_MULTIRAO]	= PRECO[NAVE_TROPA_3_MULTIRAO]*.7;
	
	
	// Variáveis facilitadoras para definir preço
	// <<<<<<<<<
	
#endregion PREÇO_E_VENDA_TROPA	


	switch(inSELECAO_NAVE)
	{

		
//***********************ELEMENTO NEUTRO***********************
	#region NAVES NÍVEL 0:
	
		#region Nível 0:
			case SELECAO_NAVE_UP_TROPA_0:
			case SELECAO_NAVE_UP_TROPA_0_TERRA:
			case SELECAO_NAVE_UP_TROPA_0_AGUA:
			case SELECAO_NAVE_UP_TROPA_0_AR:
			case SELECAO_NAVE_UP_TROPA_0_FOGO:
			case SELECAO_NAVE_UP_TROPA_0_VENDA:
		
				/*
					Selecione o upgrade para nível 1 ou venda:
					- Terra;
					- Água;
					- Ar;
					- Fogo;
					- Venda;
				*/
				
				
				//Desenha área de alcance atual:
					draw_area_alcance_tropa(NAVE_CONECTADA.TIPO_NAVE);
					 
				//Desenha preview da área de alcance:
					switch(inSELECAO_NAVE)
					{
						case SELECAO_NAVE_UP_TROPA_0_TERRA:
							draw_area_alcance_tropa(NAVE_TROPA_1_TERRA)	break;
							 
						case SELECAO_NAVE_UP_TROPA_0_AGUA:
							draw_area_alcance_tropa(NAVE_TROPA_1_AGUA)	break;
							 
						case SELECAO_NAVE_UP_TROPA_0_AR:
							draw_area_alcance_tropa(NAVE_TROPA_1_AR)		break;
							
						case SELECAO_NAVE_UP_TROPA_0_FOGO:
							draw_area_alcance_tropa(NAVE_TROPA_1_FOGO)	break;
					}
				
				
				//Desenha Círculo de seleção:
					draw_sprite(spr_Circulo_Selecao,0,x,y)
					

				//Upgrade para Terra:
					var check_click = draw_bt_SELECAO_NAVE(-90+(72*4),SELECAO_NAVE_UP_TROPA_0_TERRA	,33, 0, 5, 1,NAVE_TROPA_1_TERRA,PRECO[NAVE_TROPA_1_TERRA],noone);
					 if check_click {sair_da_selecao=false;}
				//Upgrade para Água:
					var check_click = draw_bt_SELECAO_NAVE(-90+(72*3),SELECAO_NAVE_UP_TROPA_0_AGUA	,23, 0, 7, 1,NAVE_TROPA_1_AGUA,PRECO[NAVE_TROPA_1_AGUA],noone);
					 if check_click {sair_da_selecao=false;}
				//Upgrade para Ar:
					var check_click = draw_bt_SELECAO_NAVE(-90+(72*2),SELECAO_NAVE_UP_TROPA_0_AR		,31, 0, 7, 1,NAVE_TROPA_1_AR,PRECO[NAVE_TROPA_1_AR],noone);
					 if check_click {sair_da_selecao=false;}
				//Upgrade para Fogo:
					var check_click = draw_bt_SELECAO_NAVE(-90+(72*1),SELECAO_NAVE_UP_TROPA_0_FOGO	,25, 0, 5, 1,NAVE_TROPA_1_FOGO,PRECO[NAVE_TROPA_1_FOGO],noone);
					 if check_click {sair_da_selecao=false;}
				//Vender nave:
					var check_click = draw_bt_SELECAO_NAVE(-90      ,SELECAO_NAVE_UP_TROPA_0_VENDA	, 3, 4, 3, 4,NAVE_VENDA,P_VENDA[NAVE_TROPA_0],noone);
					 if check_click {sair_da_selecao=false;}
					 
		
			break;
			
		#endregion Nível 0
		
	#endregion NAVES NÍVEL 0:


//***********************ELEMENTO TERRA************************
	#region TROPAS TERRA
	
		#region Nível 1 Terra:
			case SELECAO_NAVE_UP_TROPA_1_TERRA:
			case SELECAO_NAVE_UP_TROPA_1_TERRA_2_TERRA:
			case SELECAO_NAVE_UP_TROPA_1_TERRA_VENDA:
		
				/*
					Selecione o upgrade para nível 2 ou venda:
					- Água 2;
					- Gelo 2;
					- Venda;
				*/
				//Desenha área de alcance atual:
					draw_area_alcance_tropa(NAVE_CONECTADA.TIPO_NAVE);
					 
				//Desenha preview da área de alcance:
					switch(inSELECAO_NAVE)
					{
						case SELECAO_NAVE_UP_TROPA_1_TERRA_2_TERRA:
							draw_area_alcance_tropa(NAVE_TROPA_2_TERRA)	break;
							 
					}
				
				
				//Desenha Círculo de seleção:
					draw_sprite(spr_Circulo_Selecao,0,x,y)
				

				//Upgrade para Terra 2:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90+(120*2),
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_1_TERRA_2_TERRA,
															/* SUB-IMAGES:	  */ 34, 0, 6, 1,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_TROPA_2_TERRA,
															/* PREÇO AÇÃO:	  */ PRECO[NAVE_TROPA_2_TERRA],
															/* REQUER FUSÃO:  */ ds_stack_start(NAVE_TROPA_1_TERRA));
					if check_click {sair_da_selecao=false;}
				
				//Vender nave:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_1_TERRA_VENDA,
															/* SUB-IMAGES:	  */ 3,4,3,4,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_VENDA,
															/* PREÇO AÇÃO:	  */ P_VENDA[NAVE_TROPA_1_TERRA],
															/* REQUER FUSÃO:  */ noone);
					 if check_click {sair_da_selecao=false;}
					 
		
			break;
		
		#endregion Nível 1 Agua:
		
		#region Nível 2 Terra:
			case SELECAO_NAVE_UP_TROPA_2_TERRA:
			case SELECAO_NAVE_UP_TROPA_2_TERRA_3_ATAQUE:
			case SELECAO_NAVE_UP_TROPA_2_TERRA_3_ESCUDO:
			case SELECAO_NAVE_UP_TROPA_2_TERRA_3_MULTIRAO:
			case SELECAO_NAVE_UP_TROPA_2_TERRA_VENDA:
		
				/*
					Selecione o upgrade para nível 3 ou venda:
					- Pedra 3;
					- Venda;
				*/
				
				//Desenha área de alcance atual:
					draw_area_alcance_tropa(NAVE_CONECTADA.TIPO_NAVE);
					 
				//Desenha preview da área de alcance:
					switch(inSELECAO_NAVE)
					{
						case SELECAO_NAVE_UP_TROPA_2_TERRA_3_PEDRA:
							draw_area_alcance_tropa(NAVE_TROPA_3_PEDRA)	break;
							 
					}
				
				
				//Desenha Círculo de seleção:
					draw_sprite(spr_Circulo_Selecao,0,x,y)
				

				//Upgrade para Pedra 3:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ 90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_2_TERRA_3_PEDRA,
															/* SUB-IMAGES:	  */ 39, 0, 9, 1,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_TROPA_3_PEDRA,
															/* PREÇO AÇÃO:	  */ PRECO[NAVE_TROPA_3_PEDRA],
															/* REQUER FUSÃO:  */ ds_stack_start(NAVE_TROPA_2_AR, NAVE_TROPA_2_TERRA));
					 if check_click {sair_da_selecao=false;}
				
				//Vender nave:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_2_TERRA_VENDA,
															/* SUB-IMAGES:	  */ 3,4,3,4,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_VENDA,
															/* PREÇO AÇÃO:	  */ P_VENDA[NAVE_TROPA_2_TERRA],
															/* REQUER FUSÃO:  */ noone);
					 if check_click {sair_da_selecao=false;}
					 
		
			break;			
		#endregion Nível 2 Terra:
		
	#endregion TROPAS TERRA

//***********************ELEMENTO AGUA*************************
	
	
	#region TROPAS AGUA
	
		#region Nível 1 Agua:
			case SELECAO_NAVE_UP_TROPA_1_AGUA:
			case SELECAO_NAVE_UP_TROPA_1_AGUA_2_AGUA:
			case SELECAO_NAVE_UP_TROPA_1_AGUA_VENDA:
		
				/*
					Selecione o upgrade para nível 2 ou venda:
					- Água 2;
					- Gelo 2;
					- Venda;
				*/
				//Desenha área de alcance atual:
					draw_area_alcance_tropa(NAVE_CONECTADA.TIPO_NAVE);
					 
				//Desenha preview da área de alcance:
					switch(inSELECAO_NAVE)
					{
						case SELECAO_NAVE_UP_TROPA_1_AGUA_2_AGUA:
							draw_area_alcance_tropa(NAVE_TROPA_2_AGUA)	break;
							 
							 
					}
				
				
				//Desenha Círculo de seleção:
					draw_sprite(spr_Circulo_Selecao,0,x,y)
				

				//Upgrade para Água 2:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90+(120*2),
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_1_AGUA_2_AGUA,
															/* SUB-IMAGES:	  */ 24, 0, 8, 1,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_TROPA_2_AGUA,
															/* PREÇO AÇÃO:	  */ PRECO[NAVE_TROPA_2_AGUA],
															/* REQUER FUSÃO:  */ ds_stack_start(NAVE_TROPA_1_AGUA));
					if check_click {sair_da_selecao=false;}
				
				
				//Vender nave:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_1_AGUA_VENDA,
															/* SUB-IMAGES:	  */ 3,4,3,4,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_VENDA,
															/* PREÇO AÇÃO:	  */ P_VENDA[NAVE_TROPA_1_AGUA],
															/* REQUER FUSÃO:  */ noone);
					 if check_click {sair_da_selecao=false;}
					 
		
			break;
		
		#endregion Nível 1 Agua
		
		#region Nível 2 Agua:
			case SELECAO_NAVE_UP_TROPA_2_AGUA:
			case SELECAO_NAVE_UP_TROPA_2_AGUA_3_ESCUDO:
			case SELECAO_NAVE_UP_TROPA_2_AGUA_VENDA:
		
				/*
					Selecione o upgrade para nível 3 ou venda:
					- Fervente 3;
					- Venda;
				*/
				
				//Desenha área de alcance atual:
					draw_area_alcance_tropa(NAVE_CONECTADA.TIPO_NAVE);
					 
				//Desenha preview da área de alcance:
					switch(inSELECAO_NAVE)
					{
						case SELECAO_NAVE_UP_TROPA_2_AGUA_3_FERVE:
							draw_area_alcance_tropa(NAVE_TROPA_3_FERVE)	break;
							 
					}
				
				
				//Desenha Círculo de seleção:
					draw_sprite(spr_Circulo_Selecao,0,x,y)
				

				
				//Upgrade para Fervente 3:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ 90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_2_AGUA_3_FERVE,
															/* SUB-IMAGES:	  */ 41, 0, 9, 1,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_TROPA_3_FERVE,
															/* PREÇO AÇÃO:	  */ PRECO[NAVE_TROPA_3_FERVE],
															/* REQUER FUSÃO:  */ ds_stack_start(NAVE_TROPA_2_AGUA, NAVE_TROPA_2_FOGO));
					 if check_click {sair_da_selecao=false;}
				
				//Vender nave:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_2_AGUA_VENDA,
															/* SUB-IMAGES:	  */ 3,4,3,4,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_VENDA,
															/* PREÇO AÇÃO:	  */ P_VENDA[NAVE_TROPA_2_AGUA],
															/* REQUER FUSÃO:  */ noone);
					 if check_click {sair_da_selecao=false;}
					 
		
			break;
		
		#endregion Nível 2 Agua
		
	#endregion TROPAS AGUA
	
	
//***********************ELEMENTO FOGO*************************
	#region TROPAS FOGO
		
		#region Nível 1 Fogo:
			case SELECAO_NAVE_UP_TROPA_1_FOGO:
			case SELECAO_NAVE_UP_TROPA_1_FOGO_2_FOGO:
			case SELECAO_NAVE_UP_TROPA_1_FOGO_VENDA:
		
				/*
					Selecione o upgrade para nível 2 ou venda:
					- Fogo 2;
					- Tesla 2;
					- Venda;
				*/
				
				//Desenha área de alcance atual:
					draw_area_alcance_tropa(NAVE_CONECTADA.TIPO_NAVE);
					 
				//Desenha preview da área de alcance:
					switch(inSELECAO_NAVE)
					{
						case SELECAO_NAVE_UP_TROPA_1_FOGO_2_FOGO:
							draw_area_alcance_tropa(NAVE_TROPA_2_FOGO)	break;
							 
							 
					}
				
				
				//Desenha Círculo de seleção:
					draw_sprite(spr_Circulo_Selecao,0,x,y)
				

				//Upgrade para Fogo 2:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90+(120*2),
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_1_FOGO_2_FOGO,
															/* SUB-IMAGES:	  */ 26, 0, 6, 1,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_TROPA_2_FOGO,
															/* PREÇO AÇÃO:	  */ PRECO[NAVE_TROPA_2_FOGO],
															/* REQUER FUSÃO:  */ ds_stack_start(NAVE_TROPA_1_FOGO));
					if check_click {sair_da_selecao=false;}
				
				
				//Vender nave:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_1_FOGO_VENDA,
															/* SUB-IMAGES:	  */ 3,4,3,4,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_VENDA,
															/* PREÇO AÇÃO:	  */ P_VENDA[NAVE_TROPA_1_FOGO],
															/* REQUER FUSÃO:  */ noone);
					 if check_click {sair_da_selecao=false;}
					 
		
			break;
		
		#endregion Nível 1 Fogo
		
		#region Nível 2 Fogo
			case SELECAO_NAVE_UP_TROPA_2_FOGO:
			case SELECAO_NAVE_UP_TROPA_2_FOGO_3_ATAQUE:
			case SELECAO_NAVE_UP_TROPA_2_FOGO_VENDA:
		
				/*
					Selecione o upgrade para nível 3 ou venda:
					- Fervente 3;
					- Venda;
				*/
				
				//Desenha área de alcance atual:
					draw_area_alcance_tropa(NAVE_CONECTADA.TIPO_NAVE);
					 
				//Desenha preview da área de alcance:
					switch(inSELECAO_NAVE)
					{
						case SELECAO_NAVE_UP_TROPA_2_FOGO_3_FERVE:
							draw_area_alcance_tropa(NAVE_TROPA_3_FERVE)	break;
							 
					}
				
				
				//Desenha Círculo de seleção:
					draw_sprite(spr_Circulo_Selecao,0,x,y)
				

				
				//Upgrade para Fervente 3:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ 90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_2_FOGO_3_FERVE,
															/* SUB-IMAGES:	  */ 41, 0, 9, 1,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_TROPA_3_FERVE,
															/* PREÇO AÇÃO:	  */ PRECO[NAVE_TROPA_3_FERVE],
															/* REQUER FUSÃO:  */ ds_stack_start(NAVE_TROPA_2_AGUA, NAVE_TROPA_2_FOGO));
					 if check_click {sair_da_selecao=false;}
				
				//Vender nave:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_2_FOGO_VENDA,
															/* SUB-IMAGES:	  */ 3,4,3,4,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_VENDA,
															/* PREÇO AÇÃO:	  */ P_VENDA[NAVE_TROPA_2_FOGO],
															/* REQUER FUSÃO:  */ noone);
					 if check_click {sair_da_selecao=false;}
					 
		
			break;
		
		
		#endregion Nível 2 Fogo
	
	#endregion TROPAS FOGO	
	
	
//***********************ELEMENTO AR***************************	
	#region TROPAS AR
	
		#region Nível 1 Ar
			case SELECAO_NAVE_UP_TROPA_1_AR:
			case SELECAO_NAVE_UP_TROPA_1_AR_2_AR:
			case SELECAO_NAVE_UP_TROPA_1_AR_VENDA:
		
				/*
					Selecione o upgrade para nível 2 ou venda:
					- Ar 2;
					- Tesla 2;
					- Venda;
				*/
				
				//Desenha área de alcance atual:
					draw_area_alcance_tropa(NAVE_CONECTADA.TIPO_NAVE);
					 
				//Desenha preview da área de alcance:
					switch(inSELECAO_NAVE)
					{
						case SELECAO_NAVE_UP_TROPA_1_AR_2_AR:
							draw_area_alcance_tropa(NAVE_TROPA_2_FOGO)	break;
							 
							 
					}
				
				
				//Desenha Círculo de seleção:
					draw_sprite(spr_Circulo_Selecao,0,x,y)
				

				//Upgrade para Ar 2:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90+(120*2),
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_1_AR_2_AR,
															/* SUB-IMAGES:	  */ 32, 0, 8, 1,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_TROPA_2_AR,
															/* PREÇO AÇÃO:	  */ PRECO[NAVE_TROPA_2_AR],
															/* REQUER FUSÃO:  */ ds_stack_start(NAVE_TROPA_1_AR));
					if check_click {sair_da_selecao=false;}
				
				
				//Vender nave:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_1_AR_VENDA,
															/* SUB-IMAGES:	  */ 3,4,3,4,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_VENDA,
															/* PREÇO AÇÃO:	  */ P_VENDA[NAVE_TROPA_1_AR],
															/* REQUER FUSÃO:  */ noone);
					 if check_click {sair_da_selecao=false;}
					 
		
			break;
			
		#endregion Nível 1 Ar
		
		#region Nível 2 Terra:
			case SELECAO_NAVE_UP_TROPA_2_AR:
			case SELECAO_NAVE_UP_TROPA_2_AR_3_MULTIRAO:
			case SELECAO_NAVE_UP_TROPA_2_AR_VENDA:
		
				/*
					Selecione o upgrade para nível 3 ou venda:
					- Pedra 3;
					- Venda;
				*/
				
				//Desenha área de alcance atual:
					draw_area_alcance_tropa(NAVE_CONECTADA.TIPO_NAVE);
					 
				//Desenha preview da área de alcance:
					switch(inSELECAO_NAVE)
					{
						case SELECAO_NAVE_UP_TROPA_2_AR_3_PEDRA:
							draw_area_alcance_tropa(NAVE_TROPA_3_PEDRA)	break;
							 
					}
				
				
				//Desenha Círculo de seleção:
					draw_sprite(spr_Circulo_Selecao,0,x,y)
				

				
				//Upgrade para Pedra 3:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ 90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_2_AR_3_PEDRA,
															/* SUB-IMAGES:	  */ 39, 0, 9, 1,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_TROPA_3_PEDRA,
															/* PREÇO AÇÃO:	  */ PRECO[NAVE_TROPA_3_PEDRA],
															/* REQUER FUSÃO:  */ ds_stack_start(NAVE_TROPA_2_AR, NAVE_TROPA_2_TERRA));
					 if check_click {sair_da_selecao=false;}
				
				//Vender nave:
					var check_click = draw_bt_SELECAO_NAVE(	/* POSIÇÃO GRAUS: */ -90,
															/* SELEÇÃO AÇÃO:  */ SELECAO_NAVE_UP_TROPA_2_AR_VENDA,
															/* SUB-IMAGES:	  */ 3,4,3,4,  // REFERENCIA EM: spr_bt_SELECAO_NAVE //
															/* PRÓXIMA NAVE:  */ NAVE_VENDA,
															/* PREÇO AÇÃO:	  */ P_VENDA[NAVE_TROPA_2_AR],
															/* REQUER FUSÃO:  */ noone);
					 if check_click {sair_da_selecao=false;}
					 
		
			break;			
		#endregion Nível 2 Terra:
	
	#endregion TROPAS AR	
		
			
	}

	return sair_da_selecao;

}