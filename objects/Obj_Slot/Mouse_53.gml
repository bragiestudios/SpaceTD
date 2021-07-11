/// @description FUNDIÇÃO


	//Se estamos em um processo de fundição:
		if inFUNDICAO>false
	//E sou o principal:
		and FUNDIR_ACAO = "|PRINCIPAL|"
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
						//Upgrade:
						with(NAVE_CONECTADA)
						{SETUP_ATIRADORE(other.FUNDIR_NAVE);}
						
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
				
			
			
			
			
			
			

			
			//descartamos as próximas ações, pois agora é uma fundição.
			//exit; - comentado pois por hora não existe próximas ações
		}