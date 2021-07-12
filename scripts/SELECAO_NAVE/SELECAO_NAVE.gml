
function setup_macros_selecoes(){
	
										//LEGENDA:			0.1234
										//					0. Nivel
										//					1  Tipo tático
										//					2  Elemento
										//					3  Bifurcação evolutiva / venda
											 
		
	#region Vazio e não selecionado:
	
			#macro SELECAO_NAVE_NOT								-4
		
			#macro SELECAO_NAVE_SLOT_VAZIO						-1
			#macro SELECAO_NAVE_SLOT_VAZIO_TROPA				-1.1
			#macro SELECAO_NAVE_SLOT_VAZIO_ATIRADOR				-1.2
			#macro SELECAO_NAVE_SLOT_VAZIO_CANHAO				-1.3
			#macro SELECAO_NAVE_SLOT_VAZIO_SUPORTE				-1.4
			
	#endregion Vazio e não selecionado
	

	#region Tropas:
			//Nível 0: ...
				#macro SELECAO_NAVE_UP_TROPA_0					0.1
				#macro SELECAO_NAVE_UP_TROPA_0_AGUA 			0.11
				#macro SELECAO_NAVE_UP_TROPA_0_AR				0.12
				#macro SELECAO_NAVE_UP_TROPA_0_FOGO				0.13
				#macro SELECAO_NAVE_UP_TROPA_0_TERRA 			0.14
				#macro SELECAO_NAVE_UP_TROPA_0_REALOCAR 		0.16
				#macro SELECAO_NAVE_UP_TROPA_0_VENDA			0.17
		
			//Nível 1:
				#macro SELECAO_NAVE_UP_TROPA_1_AGUA				1.11
				#macro SELECAO_NAVE_UP_TROPA_1_AGUA_2_AGUA		1.111
				#macro SELECAO_NAVE_UP_TROPA_1_AGUA_REALOCAR 	1.116
				#macro SELECAO_NAVE_UP_TROPA_1_AGUA_VENDA		1.117
		
				#macro SELECAO_NAVE_UP_TROPA_1_AR				1.12
				#macro SELECAO_NAVE_UP_TROPA_1_AR_2_AR			1.121
				#macro SELECAO_NAVE_UP_TROPA_1_AR_REALOCAR 		1.126
				#macro SELECAO_NAVE_UP_TROPA_1_AR_VENDA			1.127
		
				#macro SELECAO_NAVE_UP_TROPA_1_FOGO				1.13
				#macro SELECAO_NAVE_UP_TROPA_1_FOGO_2_FOGO		1.131
				#macro SELECAO_NAVE_UP_TROPA_1_FOGO_REALOCAR 	1.136
				#macro SELECAO_NAVE_UP_TROPA_1_FOGO_VENDA		1.137
		
				#macro SELECAO_NAVE_UP_TROPA_1_TERRA			1.14
				#macro SELECAO_NAVE_UP_TROPA_1_TERRA_2_TERRA	1.141
				#macro SELECAO_NAVE_UP_TROPA_1_TERRA_REALOCAR 	1.146
				#macro SELECAO_NAVE_UP_TROPA_1_TERRA_VENDA		1.147
		
			//Nível 2:
				#macro SELECAO_NAVE_UP_TROPA_2_AGUA				2.11
				#macro SELECAO_NAVE_UP_TROPA_2_AGUA_3_ESCUDO	2.111
				#macro SELECAO_NAVE_UP_TROPA_2_AGUA_REALOCAR 	2.116
				#macro SELECAO_NAVE_UP_TROPA_2_AGUA_VENDA		2.117
		
				#macro SELECAO_NAVE_UP_TROPA_2_AR				2.12
				#macro SELECAO_NAVE_UP_TROPA_2_AR_3_MULTIRAO	2.121
				#macro SELECAO_NAVE_UP_TROPA_2_AR_REALOCAR 		2.126
				#macro SELECAO_NAVE_UP_TROPA_2_AR_VENDA			2.127
		
				#macro SELECAO_NAVE_UP_TROPA_2_FOGO				2.13
				#macro SELECAO_NAVE_UP_TROPA_2_FOGO_3_ATAQUE	2.131
				#macro SELECAO_NAVE_UP_TROPA_2_FOGO_REALOCAR 	2.136
				#macro SELECAO_NAVE_UP_TROPA_2_FOGO_VENDA		2.137
			
				#macro SELECAO_NAVE_UP_TROPA_2_TERRA			2.14
				#macro SELECAO_NAVE_UP_TROPA_2_TERRA_3_ESCUDO	2.141
				#macro SELECAO_NAVE_UP_TROPA_2_TERRA_3_ATAQUE	2.142
				#macro SELECAO_NAVE_UP_TROPA_2_TERRA_3_MULTIRAO	2.143
				#macro SELECAO_NAVE_UP_TROPA_2_TERRA_REALOCAR 	2.146
				#macro SELECAO_NAVE_UP_TROPA_2_TERRA_VENDA		2.147
		
			//Nível 3:
				#macro SELECAO_NAVE_UP_TROPA_3_ESCUDO				3.11
				#macro SELECAO_NAVE_UP_TROPA_3_ESCUDO_REALOCAR 		3.116
				#macro SELECAO_NAVE_UP_TROPA_3_ESCUDO_VENDA			3.117
		
				#macro SELECAO_NAVE_UP_TROPA_3_ATAQUE				3.12
				#macro SELECAO_NAVE_UP_TROPA_3_ATAQUE_REALOCAR 		3.126
				#macro SELECAO_NAVE_UP_TROPA_3_ATAQUE_VENDA			3.127
		
				#macro SELECAO_NAVE_UP_TROPA_3_MULTIRAO				3.13
				#macro SELECAO_NAVE_UP_TROPA_3_MULTIRAO_REALOCAR 	3.136
				#macro SELECAO_NAVE_UP_TROPA_3_MULTIRAO_VENDA		3.137
			
	#endregion Tropas

	
	#region Atiradores:
			//Nível 0:
				#macro SELECAO_NAVE_UP_ATIRADOR_0				0.2
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
				#macro SELECAO_NAVE_UP_ATIRADOR_2_AGUA_3_FERVE	2.211
				#macro SELECAO_NAVE_UP_ATIRADOR_2_AGUA_VENDA	2.217
		
				#macro SELECAO_NAVE_UP_ATIRADOR_2_AR			2.22
				#macro SELECAO_NAVE_UP_ATIRADOR_2_AR_3_PEDRA	2.221
				#macro SELECAO_NAVE_UP_ATIRADOR_2_AR_VENDA		2.227
		
				#macro SELECAO_NAVE_UP_ATIRADOR_2_FOGO			2.23
				#macro SELECAO_NAVE_UP_ATIRADOR_2_FOGO_3_FERVE	2.231
				#macro SELECAO_NAVE_UP_ATIRADOR_2_FOGO_VENDA	2.237
		
				#macro SELECAO_NAVE_UP_ATIRADOR_2_TERRA			2.24
				#macro SELECAO_NAVE_UP_ATIRADOR_2_TERRA_3_PEDRA	2.241
				#macro SELECAO_NAVE_UP_ATIRADOR_2_TERRA_VENDA	2.247
		
			//Nível 3:
				#macro SELECAO_NAVE_UP_ATIRADOR_3_FERVE			3.21
				#macro SELECAO_NAVE_UP_ATIRADOR_3_FERVE_VENDA	3.217
		
				#macro SELECAO_NAVE_UP_ATIRADOR_3_PEDRA			3.22
				#macro SELECAO_NAVE_UP_ATIRADOR_3_PEDRA_VENDA	3.227

	#endregion Atiradores


	#region Canhões:
			//Nível 0:
				#macro SELECAO_NAVE_UP_CANHAO_0					0.3
				#macro SELECAO_NAVE_UP_CANHAO_0_AGUA 			0.31
				#macro SELECAO_NAVE_UP_CANHAO_0_AR				0.32
				#macro SELECAO_NAVE_UP_CANHAO_0_FOGO			0.33
				#macro SELECAO_NAVE_UP_CANHAO_0_TERRA 			0.34
				#macro SELECAO_NAVE_UP_CANHAO_0_VENDA			0.37
		
			//Nível 1:
				#macro SELECAO_NAVE_UP_CANHAO_1_AGUA			1.31
				#macro SELECAO_NAVE_UP_CANHAO_1_AGUA_2_AGUA		1.311
				#macro SELECAO_NAVE_UP_CANHAO_1_AGUA_2_GELO		1.312
				#macro SELECAO_NAVE_UP_CANHAO_1_AGUA_VENDA		1.317
		
				#macro SELECAO_NAVE_UP_CANHAO_1_AR				1.32
				#macro SELECAO_NAVE_UP_CANHAO_1_AR_2_AR			1.321
				#macro SELECAO_NAVE_UP_CANHAO_1_AR_2_TESLA		1.322
				#macro SELECAO_NAVE_UP_CANHAO_1_AR_VENDA		1.327
		
				#macro SELECAO_NAVE_UP_CANHAO_1_FOGO			1.33
				#macro SELECAO_NAVE_UP_CANHAO_1_FOGO_2_FOGO		1.331
				#macro SELECAO_NAVE_UP_CANHAO_1_FOGO_2_TESLA	1.332
				#macro SELECAO_NAVE_UP_CANHAO_1_FOGO_VENDA		1.337
		
				#macro SELECAO_NAVE_UP_CANHAO_1_TERRA			1.34
				#macro SELECAO_NAVE_UP_CANHAO_1_TERRA_2_TERRA	1.341
				#macro SELECAO_NAVE_UP_CANHAO_1_TERRA_2_GELO	1.342
				#macro SELECAO_NAVE_UP_CANHAO_1_TERRA_VENDA		1.347
		
			//Nível 2:
				#macro SELECAO_NAVE_UP_CANHAO_2_AGUA			2.31
				#macro SELECAO_NAVE_UP_CANHAO_2_AGUA_3_CHUVA	2.311
				#macro SELECAO_NAVE_UP_CANHAO_2_AGUA_VENDA		2.317
		
				#macro SELECAO_NAVE_UP_CANHAO_2_AR				2.32
				#macro SELECAO_NAVE_UP_CANHAO_2_AR_3_FURACAO	2.321
				#macro SELECAO_NAVE_UP_CANHAO_2_AR_VENDA		2.327
		
				#macro SELECAO_NAVE_UP_CANHAO_2_FOGO			2.33
				#macro SELECAO_NAVE_UP_CANHAO_2_FOGO_3_LAVA		2.331
				#macro SELECAO_NAVE_UP_CANHAO_2_FOGO_3_CHUVA	2.332
				#macro SELECAO_NAVE_UP_CANHAO_2_FOGO_3_FURACAO	2.333
				#macro SELECAO_NAVE_UP_CANHAO_2_FOGO_VENDA		2.337
		
				#macro SELECAO_NAVE_UP_CANHAO_2_TERRA			2.34
				#macro SELECAO_NAVE_UP_CANHAO_2_TERRA_3_LAVA	2.341
				#macro SELECAO_NAVE_UP_CANHAO_2_TERRA_VENDA		2.347
		
			//Nível 3:
				#macro SELECAO_NAVE_UP_CANHAO_3_LAVA			3.31
				#macro SELECAO_NAVE_UP_CANHAO_3_LAVA_VENDA		3.317
		
				#macro SELECAO_NAVE_UP_CANHAO_3_CHUVA			3.32
				#macro SELECAO_NAVE_UP_CANHAO_3_CHUVA_VENDA		3.327
		
				#macro SELECAO_NAVE_UP_CANHAO_3_FURACAO			3.33
				#macro SELECAO_NAVE_UP_CANHAO_3_FURACAO_VENDA	3.337
			
	#endregion Canhões
	
	
	#region Suportes:
			//Nível 0:
				#macro SELECAO_NAVE_UP_SUPORTE_0				0.4
				#macro SELECAO_NAVE_UP_SUPORTE_0_1 				0.41
				#macro SELECAO_NAVE_UP_SUPORTE_0_REALOCAR 		0.46
				#macro SELECAO_NAVE_UP_SUPORTE_0_VENDA			0.47
				
			//Nível 1:
				#macro SELECAO_NAVE_UP_SUPORTE_1				1.4
				#macro SELECAO_NAVE_UP_SUPORTE_1_2 				1.41
				#macro SELECAO_NAVE_UP_SUPORTE_1_REALOCAR 		1.46
				#macro SELECAO_NAVE_UP_SUPORTE_1_VENDA			1.47
				
			//Nível 2:
				#macro SELECAO_NAVE_UP_SUPORTE_2				2.4
				#macro SELECAO_NAVE_UP_SUPORTE_2_3 				2.41
				#macro SELECAO_NAVE_UP_SUPORTE_2_REALOCAR 		2.46
				#macro SELECAO_NAVE_UP_SUPORTE_2_VENDA			2.47
				
			//Nível 3:
				#macro SELECAO_NAVE_UP_SUPORTE_3				3.4
				#macro SELECAO_NAVE_UP_SUPORTE_3_REALOCAR 		3.46
				#macro SELECAO_NAVE_UP_SUPORTE_3_VENDA			3.47
			
	#endregion Suportes
	

	#region EXTRAS:
	
			//Nível 2:
				#macro SELECAO_NAVE_UP_EXTRA_2_TESLA			2.95
				#macro SELECAO_NAVE_UP_EXTRA_2_TESLA_3_TESLA	2.951
				#macro SELECAO_NAVE_UP_EXTRA_2_TESLA_VENDA		2.957
		
				#macro SELECAO_NAVE_UP_EXTRA_2_GELO				2.96
				#macro SELECAO_NAVE_UP_EXTRA_2_GELO_3_GELO		2.961
				#macro SELECAO_NAVE_UP_EXTRA_2_GELO_VENDA		2.967
		
			//Nível 3:
		
				#macro SELECAO_NAVE_UP_EXTRA_3_TESLA			3.95
				#macro SELECAO_NAVE_UP_EXTRA_3_TESLA_VENDA		3.957
		
				#macro SELECAO_NAVE_UP_EXTRA_3_GELO				3.96
				#macro SELECAO_NAVE_UP_EXTRA_3_GELO_VENDA		3.967

	#endregion EXTRAS

}





function draw_and_check_opcoes_SELECAO_NAVE(){
	
	
	var sair_da_selecao = (mouse_check_button_pressed(mb_left)) ? true : false;
	
	
	//Subdivisão do script:
		sair_da_selecao = SELECAO_NAVE_SLOT(sair_da_selecao);
		sair_da_selecao = SELECAO_NAVE_TROPAS(sair_da_selecao);
		sair_da_selecao = SELECAO_NAVE_ATIRADORES(sair_da_selecao);
	


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
								preco,
								stack_fundir)
{
		//Manha pra pegar a posição de desenho no circulo de seleção:
			var speed_=speed;
			direction=angulo;
			speed=186;
			var xx = x+hspeed;
			var yy = y+vspeed;
			speed=speed_;//limpa speed
				
		//Informa se está selecionado:
			var estou_selecionado = (inSELECAO_NAVE=sub_SELECAO_NAVE) ? true : false;
					
					
		//Rotina para verificar se tem todas na naves necessárias para fundir:
			if stack_fundir!=noone // noone = não requer nada
			{
				var REQUER_FUNDIR = true;
				
				//Limpar todos os slots:
					with(Obj_Slot){FUNDIR = "|DESCARTADO|"}
					FUNDIR = "|PRINCIPAL|"
					
					
					var ITEM_REQUER = 0;
					
				
					// while verifica item por item da pilha (stack)
					while(!ds_stack_empty(stack_fundir))
					{
						
						var NAVE_REQUER_ATUAL = ds_stack_get(stack_fundir);
						var NAVE_REQUER_ATUAL_POSSUI = false;
						ITEM_REQUER++;
						
							// with verifica todas as instancias do obj_slot.
							with(Obj_Slot)
							{
								//Ignora slots vazios:
								if NAVE_CONECTADA!=noone 
								//Ignora o próprio slot que tá fazendo a pergunta
								and FUNDIR!="|PRINCIPAL|"
								//Ignora slots que não estão próximos:
								and point_distance(x,y,other.x,other.y)<250
								{
									//Se a nave no slot atual for o tipo de nave que queremos:
									if NAVE_CONECTADA.TIPO_NAVE=NAVE_REQUER_ATUAL
									{
										
										if (FUNDIR == "|DESCARTADO|")
										{
											FUNDIR = "";
											
											if estou_selecionado
											{
												//Desenha que é uma opção para fundir:
												draw_set_color(c_white)
												draw_set_alpha(.2)
												draw_circle(x,y,85,false)
												draw_set_alpha(1)
											}
											
										}
										
										//Caso eu seja a primeira opção desse item:
											if NAVE_REQUER_ATUAL_POSSUI==false
											{
												//Verifica se já não é a primeira opção de outro item:
												if !string_count("|INIT|",FUNDIR)
												{
													NAVE_REQUER_ATUAL_POSSUI=true;
													FUNDIR+="|INIT|";
												}
											}
										
											FUNDIR+="|QUERO_IT_"+string(ITEM_REQUER);
											//"|INIT||QUERO_IT_1|"
											//"|QUERO_IT_1||QUERO_IT_2|" ...
											
											
											
										
									}
								
								}
							}
						
						
						//Terminamos a rotina with com esse item ausente.
						if NAVE_REQUER_ATUAL_POSSUI=false
						{
							REQUER_FUNDIR=false;
						}
						
					}
					
					
					//Já usamos, descartar pilha:
					ds_stack_destroy(stack_fundir)
	
			}
			else
			 var REQUER_FUNDIR = true;
					
					
					
		//Desenha o botão em si:
			if GRANA>=preco
			and REQUER_FUNDIR
			{
				//Versão com grana e com as naves que requer para fundir:
				draw_sprite(spr_bt_SELECAO_NAVE,(estou_selecionado) ? img_selecao : img_bt,xx,yy)
			}
			else
			{
				//Versão sem grana ou sem nas naves que requer para fundir:
				draw_sprite(spr_bt_SELECAO_NAVE,(estou_selecionado) ? img_selecao_sem_grana : img_bt_sem_grana,xx,yy)
			}
			
					
		//Checa se o botão foi clicado:
			if	mouse_check_button_pressed(mb_left)
			and point_in_circle(mouse_x,mouse_y,xx,yy,55)
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
						and REQUER_FUNDIR
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
								if stack_fundir=noone // noone = não requer nada
								{
									//FAZ O UPGRADE:
									with(NAVE_CONECTADA)
									{
										switch(object_index)
										{
											case Obj_Atirador:
											SETUP_ATIRADOR(conteudo); break;
											
											case Obj_Tropa:
											SETUP_TROPA(conteudo); break;
										}
											
									}
									GRANA-=preco;
								}
								else
								{
									//Prepara Slots para as ações de fundir:
									with(Obj_Slot) {FUNDIR_ACAO=FUNDIR;}
									
									//Contextualiza slot atual (princial) com as informações necessárias:
									FUNDIR_PRECO	= preco;
									FUNDIR_NAVE		= conteudo;
									FUNDIR_ETAPAS	= ITEM_REQUER;
									
									//Informa globalmente que estamos em um processo de fundição:
									inFUNDICAO=true;
								}
							}
						}
						
						//Sai da seleção de naves:
							inSELECAO_NAVE=SELECAO_NAVE_NOT;
							mySELECAO_NAVE=false;
					
					}
								
				//Dispensa a saída da seleção:
					return true;
			}
			return false;
}
	


function draw_area_alcance_atirador(tipo_nave){
	
	
	//Descobre o alcance:
	with(inst_Atirador_Generico) {SETUP_ATIRADOR(tipo_nave);}
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


function draw_area_alcance_tropa(tipo_nave){
	
	
	//Descobre o alcance:
	with(inst_Tropa_Generica) {SETUP_TROPA(tipo_nave);}
	var alcance_px_draw=inst_Tropa_Generica.ALCANCE_REALOCAMENTO_px;
	var alcance_an_draw=inst_Tropa_Generica.ALCANCE_REALOCAMENTO_an;
	
	
	
	//Desenha:
			draw_set_alpha(.1)
			draw_set_color(inst_Tropa_Generica.COR)
			draw_set_circle_precision(64)
		var angulo_base = (x<obj_Camera.x) ? 0 : 180;
		draw_circle_ext(x,y,alcance_px_draw,16,angulo_base-(alcance_an_draw/2),alcance_an_draw,0,false)
			draw_set_alpha(1)
	
	
}