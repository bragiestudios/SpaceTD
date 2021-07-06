
function setup_macros_selecoes(){
	
										//LEGENDA:			0.1234
										//					0. Nivel
										//					1  Tipo tático
										//					2  Elemento
										//					3  Bifurcação evolutiva / venda
											 
		
	#region Vazio e não selecionado:
	
			#macro SELECAO_NAVE_NOT							-1
		
			#macro SELECAO_NAVE_SLOT_VAZIO					-1
			#macro SELECAO_NAVE_SLOT_VAZIO_TROPA			-1.1
			#macro SELECAO_NAVE_SLOT_VAZIO_ATIRADOR			-1.2
			#macro SELECAO_NAVE_SLOT_VAZIO_CANHAO			-1.3
			#macro SELECAO_NAVE_SLOT_VAZIO_SUPORTE			-1.4
			
	#endregion Vazio e não selecionado
	

	#region Tropas:
			//Nível 0: ...
				#macro SELECAO_NAVE_UP_TROPA_0					0.1
			
	#endregion Tropas

	
	#region Atiradores:
			//Nível 0:
				#macro SELECAO_NAVE_UP_ATIRADOR_0				0
				#macro SELECAO_NAVE_UP_ATIRADOR_0_AGUA 			0.21
				#macro SELECAO_NAVE_UP_ATIRADOR_0_AR			0.22
				#macro SELECAO_NAVE_UP_ATIRADOR_0_FOGO			0.23
				#macro SELECAO_NAVE_UP_ATIRADOR_0_TERRA 		0.24
				#macro SELECAO_NAVE_UP_ATIRADOR_0_VENDA			0.27
		
			//Nível 1:
				#macro SELECAO_NAVE_UP_ATIRADOR_1_AGUA			1.21
				#macro SELECAO_NAVE_UP_ATIRADOR_1_AGUA_2_AGUA	1.211
				#macro SELECAO_NAVE_UP_ATIRADOR_1_AGUA_2_GELO	1.212
				#macro SELECAO_NAVE_UP_ATIRADOR_1_AGUA_VENDA	1.217
		
				#macro SELECAO_NAVE_UP_ATIRADOR_1_AR			1.22
				#macro SELECAO_NAVE_UP_ATIRADOR_1_AR_2_AR		1.221
				#macro SELECAO_NAVE_UP_ATIRADOR_1_AR_2_TESLA	1.222
				#macro SELECAO_NAVE_UP_ATIRADOR_1_AR_VENDA		1.227
		
				#macro SELECAO_NAVE_UP_ATIRADOR_1_FOGO			1.23
				#macro SELECAO_NAVE_UP_ATIRADOR_1_FOGO_2_FOGO	1.231
				#macro SELECAO_NAVE_UP_ATIRADOR_1_FOGO_2_TESLA	1.232
				#macro SELECAO_NAVE_UP_ATIRADOR_1_FOGO_VENDA	1.237
		
				#macro SELECAO_NAVE_UP_ATIRADOR_1_TERRA			1.24
				#macro SELECAO_NAVE_UP_ATIRADOR_1_TERRA_2_TERRA	1.241
				#macro SELECAO_NAVE_UP_ATIRADOR_1_TERRA_2_GELO	1.242
				#macro SELECAO_NAVE_UP_ATIRADOR_1_TERRA_VENDA	1.247
		
			//Nível 2:
				#macro SELECAO_NAVE_UP_ATIRADOR_2_AGUA			2.21
				#macro SELECAO_NAVE_UP_ATIRADOR_2_AGUA__2_FERVE	2.211
				#macro SELECAO_NAVE_UP_ATIRADOR_2_AGUA_VENDA	2.217
		
				#macro SELECAO_NAVE_UP_ATIRADOR_2_AR			2.22
				#macro SELECAO_NAVE_UP_ATIRADOR_2_AR_3_PEDRA	2.221
				#macro SELECAO_NAVE_UP_ATIRADOR_2_AR_VENDA		2.227
		
				#macro SELECAO_NAVE_UP_ATIRADOR_2_FOGO			2.23
				#macro SELECAO_NAVE_UP_ATIRADOR_2_FOGO_2_FERVE	2.231
				#macro SELECAO_NAVE_UP_ATIRADOR_2_FOGO_VENDA	2.237
		
				#macro SELECAO_NAVE_UP_ATIRADOR_2_TERRA			2.24
				#macro SELECAO_NAVE_UP_ATIRADOR_2_TERRA_3_PEDRA	2.241
				#macro SELECAO_NAVE_UP_ATIRADOR_2_TERRA_VENDA	2.247
		
				#macro SELECAO_NAVE_UP_ATIRADOR_2_TESLA			2.25
				#macro SELECAO_NAVE_UP_ATIRADOR_2_TESLA_3_TESLA	2.251
				#macro SELECAO_NAVE_UP_ATIRADOR_2_TESLA_VENDA	2.257
		
				#macro SELECAO_NAVE_UP_ATIRADOR_2_GELO			2.26
				#macro SELECAO_NAVE_UP_ATIRADOR_2_GELO_3_GELO	2.261
				#macro SELECAO_NAVE_UP_ATIRADOR_2_GELO_VENDA	2.267
		
			//Nível 3:
				#macro SELECAO_NAVE_UP_ATIRADOR_3_FERVE			3.21
				#macro SELECAO_NAVE_UP_ATIRADOR_3_FERVE_VENDA	3.217
		
				#macro SELECAO_NAVE_UP_ATIRADOR_3_PEDRA			3.22
				#macro SELECAO_NAVE_UP_ATIRADOR_3_PEDRA_VENDA	3.227
		
				#macro SELECAO_NAVE_UP_ATIRADOR_3_TESLA			3.25
				#macro SELECAO_NAVE_UP_ATIRADOR_3_TESLA_VENDA	3.257
		
				#macro SELECAO_NAVE_UP_ATIRADOR_3_GELO			3.26
				#macro SELECAO_NAVE_UP_ATIRADOR_3_GELO_VENDA	3.267

	#endregion Atiradores


	#region Canhões:
			//Nível 0: ...
				#macro SELECAO_NAVE_UP_CANHAO_0					0.3
			
	#endregion Canhões
	
	
	#region Suportes:
			//Nível 0: ...
				#macro SELECAO_NAVE_UP_SUPORTE_0				0.4
			
	#endregion Suportes
	
		
}





function draw_and_check_opcoes_SELECAO_NAVE(){
	
	
	var sair_da_selecao = (mouse_check_button_pressed(mb_left)) ? true : false;
	
	// >>>>>>>>>
	// Variáveis facilitadoras para definir preço
	
		var PRECO,P_VENDA;
		
		//Atiradores:
			PRECO[NAVE_ATIRADOR_0]			= 50;
			
			P_VENDA[NAVE_ATIRADOR_0]		= PRECO[NAVE_ATIRADOR_0];
			
			
			PRECO[NAVE_ATIRADOR_1_AGUA]		= 50;
			PRECO[NAVE_ATIRADOR_1_AR]		= 50;
			PRECO[NAVE_ATIRADOR_1_FOGO]		= 50;
			PRECO[NAVE_ATIRADOR_1_TERRA]	= 50;
			
			P_VENDA[NAVE_ATIRADOR_1_AGUA]	= PRECO[NAVE_ATIRADOR_1_AGUA]*.7;
			P_VENDA[NAVE_ATIRADOR_1_AR]		= PRECO[NAVE_ATIRADOR_1_AR]*.7;
			P_VENDA[NAVE_ATIRADOR_1_FOGO]	= PRECO[NAVE_ATIRADOR_1_FOGO]*.7;
			P_VENDA[NAVE_ATIRADOR_1_TERRA]	= PRECO[NAVE_ATIRADOR_1_TERRA]*.7;
			
			PRECO[NAVE_ATIRADOR_2_AGUA]		= 50;
			PRECO[NAVE_ATIRADOR_2_AR]		= 50;
			PRECO[NAVE_ATIRADOR_2_FOGO]		= 50;
			PRECO[NAVE_ATIRADOR_2_TERRA]	= 50;
			PRECO[NAVE_ATIRADOR_2_GELO]		= 50;
			PRECO[NAVE_ATIRADOR_2_TESLA]	= 50;
			
			P_VENDA[NAVE_ATIRADOR_2_AGUA]	= PRECO[NAVE_ATIRADOR_2_AGUA]*.7;
			P_VENDA[NAVE_ATIRADOR_2_AR]		= PRECO[NAVE_ATIRADOR_2_AR]*.7;
			P_VENDA[NAVE_ATIRADOR_2_FOGO]	= PRECO[NAVE_ATIRADOR_2_FOGO]*.7;
			P_VENDA[NAVE_ATIRADOR_2_TERRA]	= PRECO[NAVE_ATIRADOR_2_TERRA]*.7;
	
	
	// Variáveis facilitadoras para definir preço
	// <<<<<<<<<
	
	
	
	
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
				
				//Tropa:
					var check_click = draw_bt_SELECAO_NAVE( 45,SELECAO_NAVE_SLOT_VAZIO_TROPA	,1,0,1,0,noone,PRECO[NAVE_ATIRADOR_0]);
					 if check_click {sair_da_selecao=false;}
				//Atirador:
					var check_click = draw_bt_SELECAO_NAVE(135,SELECAO_NAVE_SLOT_VAZIO_ATIRADOR	,2,0,2,0,Obj_Atirador,PRECO[NAVE_ATIRADOR_0]);
					 if check_click {sair_da_selecao=false;}
				//Canhão:
					var check_click = draw_bt_SELECAO_NAVE(225,SELECAO_NAVE_SLOT_VAZIO_CANHAO	,3,0,3,0,noone,PRECO[NAVE_ATIRADOR_0]);
					 if check_click {sair_da_selecao=false;}
				//Suporte:
					var check_click = draw_bt_SELECAO_NAVE(315,SELECAO_NAVE_SLOT_VAZIO_SUPORTE	,4,0,4,0,noone,PRECO[NAVE_ATIRADOR_0]);
					 if check_click {sair_da_selecao=false;}
					 
				
				//Desenha preview da nave a ser criada e área de alcance:
					switch(inSELECAO_NAVE)
					{
						case SELECAO_NAVE_SLOT_VAZIO_TROPA:
							draw_sprite_ext(spr_Atirador_0,0,x,y,1,1,(x<obj_Camera.x) ? 0 : 180,-1,.3);	draw_area_alcance_atirador(NAVE_ATIRADOR_0)	break;
						case SELECAO_NAVE_SLOT_VAZIO_ATIRADOR:
							draw_sprite_ext(spr_Atirador_0,0,x,y,1,1,(x<obj_Camera.x) ? 0 : 180,-1,.3);	draw_area_alcance_atirador(NAVE_ATIRADOR_0)	break;
						case SELECAO_NAVE_SLOT_VAZIO_CANHAO:
							draw_sprite_ext(spr_Atirador_0,0,x,y,1,1,(x<obj_Camera.x) ? 0 : 180,-1,.3); break;
						case SELECAO_NAVE_SLOT_VAZIO_SUPORTE:
							draw_sprite_ext(spr_Atirador_0,0,x,y,1,1,(x<obj_Camera.x) ? 0 : 180,-1,.3); break;
					}
		
			break;

		#endregion SLOT_VAZIO


		#region Atiradores:
	
		//Nível 0:
			case SELECAO_NAVE_UP_ATIRADOR_0:
			case SELECAO_NAVE_UP_ATIRADOR_0_TERRA:
			case SELECAO_NAVE_UP_ATIRADOR_0_AGUA:
			case SELECAO_NAVE_UP_ATIRADOR_0_AR:
			case SELECAO_NAVE_UP_ATIRADOR_0_FOGO:
			case SELECAO_NAVE_UP_ATIRADOR_0_VENDA:
		
				/*
					Selecione o upgrade para nível 1 ou venda:
					- Terra;
					- Água;
					- Ar;
					- Fogo;
					- Venda;
				*/
				

				//Upgrade para Terra:
					var check_click = draw_bt_SELECAO_NAVE(-90+(72*4),SELECAO_NAVE_UP_ATIRADOR_0_TERRA	, 5, 0, 5, 0,NAVE_ATIRADOR_1_TERRA,PRECO[NAVE_ATIRADOR_1_TERRA]);
					 if check_click {sair_da_selecao=false;}
				//Upgrade para Água:
					var check_click = draw_bt_SELECAO_NAVE(-90+(72*3),SELECAO_NAVE_UP_ATIRADOR_0_AGUA	, 6, 0, 6, 0,NAVE_ATIRADOR_1_AGUA,PRECO[NAVE_ATIRADOR_1_AGUA]);
					 if check_click {sair_da_selecao=false;}
				//Upgrade para Ar:
					var check_click = draw_bt_SELECAO_NAVE(-90+(72*2),SELECAO_NAVE_UP_ATIRADOR_0_AR		, 7, 0, 7, 0,NAVE_ATIRADOR_1_AR,PRECO[NAVE_ATIRADOR_1_AR]);
					 if check_click {sair_da_selecao=false;}
				//Upgrade para Fogo:
					var check_click = draw_bt_SELECAO_NAVE(-90+(72*1),SELECAO_NAVE_UP_ATIRADOR_0_FOGO	, 8, 0, 8, 0,NAVE_ATIRADOR_1_FOGO,PRECO[NAVE_ATIRADOR_1_FOGO]);
					 if check_click {sair_da_selecao=false;}
				//Vender nave:
					var check_click = draw_bt_SELECAO_NAVE(-90      ,SELECAO_NAVE_UP_ATIRADOR_0_VENDA	,10, 9,10, 9,NAVE_VENDA,P_VENDA[NAVE_ATIRADOR_0]);
					 if check_click {sair_da_selecao=false;}
					 
				//Desenha área de alcance atual:
					draw_area_alcance_atirador(NAVE_CONECTADA.TIPO_NAVE);
					 
				//Desenha preview da área de alcance:
					switch(inSELECAO_NAVE)
					{
						case SELECAO_NAVE_UP_ATIRADOR_0_TERRA:
							draw_area_alcance_atirador(NAVE_ATIRADOR_1_TERRA)	break;
							 
						case SELECAO_NAVE_UP_ATIRADOR_0_AGUA:
							draw_area_alcance_atirador(NAVE_ATIRADOR_1_AGUA)	break;
							 
						case SELECAO_NAVE_UP_ATIRADOR_0_AR:
							draw_area_alcance_atirador(NAVE_ATIRADOR_1_AR)		break;
							
						case SELECAO_NAVE_UP_ATIRADOR_0_FOGO:
							draw_area_alcance_atirador(NAVE_ATIRADOR_1_FOGO)	break;
					}
		
			break;
	
		//Nível 1 Agua:
			case SELECAO_NAVE_UP_ATIRADOR_1_AGUA:
			case SELECAO_NAVE_UP_ATIRADOR_1_AGUA_2_AGUA:
			case SELECAO_NAVE_UP_ATIRADOR_1_AGUA_2_GELO:
			case SELECAO_NAVE_UP_ATIRADOR_1_AGUA_VENDA:
		
				/*
					Selecione o upgrade para nível 2 ou venda:
					- Água 2;
					- Gelo 2;
					- Venda;
				*/
				

				//Upgrade para Água 2:
					var check_click = draw_bt_SELECAO_NAVE(-90+(72*4),SELECAO_NAVE_UP_ATIRADOR_1_AGUA_2_AGUA , 5, 0, 5, 0,NAVE_ATIRADOR_2_AGUA,PRECO[NAVE_ATIRADOR_1_TERRA]);
					 if check_click {sair_da_selecao=false;}
				//Upgrade para Gelo 2:
					var check_click = draw_bt_SELECAO_NAVE(-90+(72*3),SELECAO_NAVE_UP_ATIRADOR_1_AGUA_2_GELO , 6, 0, 6, 0,NAVE_ATIRADOR_2_GELO,PRECO[NAVE_ATIRADOR_1_AGUA]);
					 if check_click {sair_da_selecao=false;}
				//Vender nave:
					var check_click = draw_bt_SELECAO_NAVE(-90      ,SELECAO_NAVE_UP_ATIRADOR_1_AGUA_VENDA	 ,10, 9,10, 9,NAVE_VENDA,P_VENDA[NAVE_ATIRADOR_0]);
					 if check_click {sair_da_selecao=false;}
					 
				//Desenha área de alcance atual:
					draw_area_alcance_atirador(NAVE_CONECTADA.TIPO_NAVE);
					 
				//Desenha preview da área de alcance:
					switch(inSELECAO_NAVE)
					{
						case SELECAO_NAVE_UP_ATIRADOR_0_TERRA:
							draw_area_alcance_atirador(NAVE_ATIRADOR_1_TERRA)	break;
							 
						case SELECAO_NAVE_UP_ATIRADOR_0_AGUA:
							draw_area_alcance_atirador(NAVE_ATIRADOR_1_AGUA)	break;
							 
						case SELECAO_NAVE_UP_ATIRADOR_0_AR:
							draw_area_alcance_atirador(NAVE_ATIRADOR_1_AR)		break;
							
						case SELECAO_NAVE_UP_ATIRADOR_0_FOGO:
							draw_area_alcance_atirador(NAVE_ATIRADOR_1_FOGO)	break;
					}
		
			break;

		#endregion Atiradores
		
		
		
		
		
	}





				//Clicou, mas não foi em nenhum botão, sair da seleção!
					if sair_da_selecao
					{
						inSELECAO_NAVE=SELECAO_NAVE_NOT;
						mySELECAO_NAVE=false;
						exit;
					}



}



function draw_bt_SELECAO_NAVE(	angulo,
								sub_SELECAO_NAVE,
								img_bt,
								img_selecao,
								img_bt_sem_grana,
								img_selecao_sem_grana,
								conteudo,
								preco)
{
		//Manha pra pegar a posição de desenho no circulo de seleção:
			direction=angulo;
			speed=145;
					
		//Desenha o botão em si:
			if GRANA>=preco
			{
				var estou_selecionado = (inSELECAO_NAVE=sub_SELECAO_NAVE) ? true : false;
				draw_sprite(spr_bt_SELECAO_NAVE,(estou_selecionado) ? img_selecao : img_bt,x+hspeed,y+vspeed)
			}
			else
			{
				var estou_selecionado = (inSELECAO_NAVE=sub_SELECAO_NAVE) ? true : false;
				draw_sprite(spr_bt_SELECAO_NAVE,(estou_selecionado) ? img_selecao_sem_grana : img_bt_sem_grana,x+hspeed,y+vspeed)
			}
			
					
		//Checa se o botão foi clicado:
			if	mouse_check_button_pressed(mb_left)
			and point_in_circle(mouse_x,mouse_y,x+hspeed,y+vspeed,45)
			{
				//Ações do botão:
					if !estou_selecionado
					{
						//Me seleciona:
						//Muda para o sub-menu onde temos mais informações sobre o que é a tropa
						inSELECAO_NAVE=sub_SELECAO_NAVE;
									
					}
					else
					{
						if conteudo=NAVE_VENDA
						{
							//VENDE A NAVE:
							alarm[0]=1;
							GRANA+=preco;
						}
						else
						if GRANA>=preco 
						{
							if NAVE_CONECTADA=noone
							{
								//CRIA A NAVE:
									var obj_ = instance_create_layer(x,y,"Gameplay",conteudo);
									obj_.SLOT_PAI=id;
									NAVE_CONECTADA=obj_;
									GRANA-=preco;
							}
							else
							{
								//FAZ O UPGRADE:
								with(NAVE_CONECTADA)
								{SETUP_ATIRADORES(conteudo);}
								GRANA-=preco;
							}
						}
						
						//Sai da seleção de naves:
							inSELECAO_NAVE=SELECAO_NAVE_NOT;
							mySELECAO_NAVE=false;
					
					}
								
				//Dispensa a saída da seleção:
					speed=0; //limpa speed
					return true;
			}
			
			speed=0; //limpa speed
			return false;
}
	


function draw_area_alcance_atirador(tipo_nave){
	
	
	//Descobre o alcance:
	with(inst_Atirador_Generico) {SETUP_ATIRADORES(tipo_nave);}
	var alcance_px_draw=inst_Atirador_Generico.ALCANCE_px;
	var alcance_an_draw=inst_Atirador_Generico.ALCANCE_an;
	
	
	
	//Desenha:
			draw_set_alpha(.1)
			draw_set_color(inst_Atirador_Generico.COR)
			draw_set_circle_precision(64)
		var angulo_base = (x<obj_Camera.x) ? 0 : 180;
		draw_circle_ext(x,y,alcance_px_draw,16,angulo_base-(alcance_an_draw/2),alcance_an_draw,0,false)
			draw_set_alpha(1)
	
	
}