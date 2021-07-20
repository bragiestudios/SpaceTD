/// @description SELEÇÃO_NAVE
	
	


	//Se estiver em uma fundição, sair
		if inFUNDICAO>false {exit;}
		
		
	//Se já estiver em uma SELECAO_NAVE, sair
		if inSELECAO_NAVE!=SELECAO_NAVE_NOT {exit;}


	//Ativado popup de seleção:
		//Sem nenhuma nave ainda:
			if NAVE_CONECTADA = noone 
			{
				inSELECAO_NAVE=SELECAO_NAVE_SLOT_VAZIO;
			}
			else
			{
			
				#region Atiradores
//*********************************Atirador nível 0********************************
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_ATIRADOR_0
						 inSELECAO_NAVE=SELECAO_NAVE_UP_ATIRADOR_0;
					
					
//*********************************Atirador nível 1********************************
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_ATIRADOR_1_AGUA
						 inSELECAO_NAVE=SELECAO_NAVE_UP_ATIRADOR_1_AGUA;
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_ATIRADOR_1_AR
						 inSELECAO_NAVE=SELECAO_NAVE_UP_ATIRADOR_1_AR;
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_ATIRADOR_1_FOGO
						 inSELECAO_NAVE=SELECAO_NAVE_UP_ATIRADOR_1_FOGO;
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_ATIRADOR_1_TERRA
						 inSELECAO_NAVE=SELECAO_NAVE_UP_ATIRADOR_1_TERRA;
					
//*********************************Atirador nível 2********************************
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_ATIRADOR_2_AGUA
						 inSELECAO_NAVE=SELECAO_NAVE_UP_ATIRADOR_2_AGUA;
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_ATIRADOR_2_AR
						 inSELECAO_NAVE=SELECAO_NAVE_UP_ATIRADOR_2_AR;
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_ATIRADOR_2_FOGO
						 inSELECAO_NAVE=SELECAO_NAVE_UP_ATIRADOR_2_FOGO;
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_ATIRADOR_2_TERRA
						 inSELECAO_NAVE=SELECAO_NAVE_UP_ATIRADOR_2_TERRA;

				#endregion Atiradores
				
				#region Tropas
//*********************************Tropa nível 0********************************
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_TROPA_0
						 inSELECAO_NAVE=SELECAO_NAVE_UP_TROPA_0;
					
					
//*********************************Tropa nível 1********************************
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_TROPA_1_AGUA
						 inSELECAO_NAVE=SELECAO_NAVE_UP_TROPA_1_AGUA;
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_TROPA_1_AR
						 inSELECAO_NAVE=SELECAO_NAVE_UP_TROPA_1_AR;
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_TROPA_1_FOGO
						 inSELECAO_NAVE=SELECAO_NAVE_UP_TROPA_1_FOGO;
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_TROPA_1_TERRA
						 inSELECAO_NAVE=SELECAO_NAVE_UP_TROPA_1_TERRA;
					
//*********************************Tropa nível 2********************************
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_TROPA_2_AGUA
						 inSELECAO_NAVE=SELECAO_NAVE_UP_TROPA_2_AGUA;
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_TROPA_2_AR
						 inSELECAO_NAVE=SELECAO_NAVE_UP_TROPA_2_AR;
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_TROPA_2_FOGO
						 inSELECAO_NAVE=SELECAO_NAVE_UP_TROPA_2_FOGO;
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_TROPA_2_TERRA
						 inSELECAO_NAVE=SELECAO_NAVE_UP_TROPA_2_TERRA;
						 
				#endregion Tropas
				
				#region Suportes
//*********************************Suportes********************************
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_SUPORTE_0
						 inSELECAO_NAVE=SELECAO_NAVE_UP_SUPORTE_0;
						 
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_SUPORTE_1
						 inSELECAO_NAVE=SELECAO_NAVE_UP_SUPORTE_1;
						 
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_SUPORTE_2
						 inSELECAO_NAVE=SELECAO_NAVE_UP_SUPORTE_2;
						 
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_SUPORTE_3
						 inSELECAO_NAVE=SELECAO_NAVE_UP_SUPORTE_3;
						 
				#endregion Suportes
			}
		
	//Para evitar clique duplo:
	mySELECAO_NAVE=.5;	
	//Trata profundidade: 
	depth=DEPTH-100;
	

