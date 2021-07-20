/// @description FUNDIÇÃO


	//Se estamos em um processo de fundição:
		if inFUNDICAO>false
		{
			
			#region Fundir
			
				//E sou o principal para fundição:
					if FUNDIR_ACAO = "|PRINCIPAL|"
					{
						//Para sair, caso clique no vazio:
							var sair_da_fundicao = true;
				
				
				
							//checa se clicou em algum slot da etapa atual:
								with(Obj_Slot)
								{
									//Se faço parte das opções de fundição atual...
										if string_count("|QUERO_IT_"+string(inFUNDICAO),FUNDIR_ACAO)
									//E clicou em mim..
										and point_in_circle(mouse_x,mouse_y,x,y,85)
										{
											//Vira um dos que serão usados para fundição (serão deletados)
											FUNDIR_ACAO = "|SELECIONADO|"
							
											//Informa que podemos passar para a próxima etapa da fundição
											other.FUNDIR_ETAPAS--;
											inFUNDICAO++;
							
											//Informa que não devemos desistir da fundição:
											sair_da_fundicao = false;
							
										}
								}
				
				
							//Fim da fundição, ação:
								if FUNDIR_ETAPAS=0
								{
									//FAZ O UPGRADE:
									with(NAVE_CONECTADA)
									{
										switch(object_index)
										{
											case Obj_Atirador:
											SETUP_ATIRADOR(other.FUNDIR_NAVE); break;
											
											case Obj_Tropa:
											SETUP_TROPA(other.FUNDIR_NAVE); break;
								
											case Obj_Suporte:
											SETUP_SUPORTE(other.FUNDIR_NAVE); break;
										}
											
									}
						
									//Custo:
									GRANA-=FUNDIR_PRECO;
						
									//Deleta as naves selecionadas:
									with(Obj_Slot)
									{
										if FUNDIR_ACAO = "|SELECIONADO|"
										{
											alarm[0]=1;
										}
							
										//Limpar todos os slots:
										FUNDIR			= ""
										FUNDIR_ACAO		= "";
										FUNDIR_PRECO	= 0;
										FUNDIR_NAVE		= 0;
										FUNDIR_ETAPAS	= 0;
									}
						
									
									//Finaliza fundição:
									inFUNDICAO=false;
						
								}
				
				
						//Clique no vazio, sair:
						if sair_da_fundicao
						{
							//Limpar todos os slots:
								with(Obj_Slot){FUNDIR_ACAO = ""}
					
							//Sai:
								inFUNDICAO=false;
						}
					}
					
			#endregion Fundir
					
					
			#region Realocar suporte
			
				//E sou o principal para realocar suporte:
					if REALOCAR_SUPORTE_ACAO = "|PRINCIPAL|"
					{
						
						//Para sair, caso clique no vazio:
							var sair_da_fundicao = true;
				
				
							//checa se clicou em algum slot válido para realocamento de suporte:
								with(Obj_Slot)
								{
									//Se faço parte das opçõe de realocamento do suporte...
										if REALOCAR_SUPORTE_ACAO=="|ACEITA|"
									//E clicou em mim..
										and point_in_circle(mouse_x,mouse_y,x,y,85)
									//E tenho uma nave conectada:
										and instance_exists(NAVE_CONECTADA)
										{
											
												var PARTICULA_SUPORTE = other.NAVE_CONECTADA.FILHO[other.REALOCAR_SUPORTE_ETAPA];
												PARTICULA_SUPORTE.SLOT_AJUDADO=id;
												
												//Informa que podemos passar para a próxima etapa do realocamento
												other.REALOCAR_SUPORTE_ETAPA++;
												inFUNDICAO++;
												repeat(4)
												{
													if other.REALOCAR_SUPORTE_ETAPA<=4
													{
														var PARTICULA_SUPORTE = other.NAVE_CONECTADA.FILHO[other.REALOCAR_SUPORTE_ETAPA];
													
														if PARTICULA_SUPORTE.ATIVO == false
														{
															other.REALOCAR_SUPORTE_ETAPA++;
															inFUNDICAO++;
														}
													}
												}
												
												//Informa que não devemos desistir da fundição:
												sair_da_fundicao = false;
											
							
										}
								}
				
				
							//Fim da fundição, ação:
								if REALOCAR_SUPORTE_ETAPA>4
								{
									//Limpar todos os slots:
									with(Obj_Slot){REALOCAR_SUPORTE_ACAO = ""}
									
									//Finaliza fundição:
									inFUNDICAO=false;
						
								}
				
				
						//Clique no vazio, sair:
						if sair_da_fundicao
						{
							//Limpar todos os slots:
								with(Obj_Slot){REALOCAR_SUPORTE_ACAO = ""}
					
							//Sai:
								inFUNDICAO=false;
						}
					}
					
			#endregion Realocar suporte
		}