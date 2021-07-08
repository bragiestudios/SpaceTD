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
				//Atirador 0:
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_ATIRADOR_0
						 inSELECAO_NAVE=SELECAO_NAVE_UP_ATIRADOR_0;
					
					
				//Atirador 1:
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_ATIRADOR_1_AGUA
						 inSELECAO_NAVE=SELECAO_NAVE_UP_ATIRADOR_1_AGUA;
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_ATIRADOR_1_AR
						 inSELECAO_NAVE=SELECAO_NAVE_UP_ATIRADOR_1_AR;
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_ATIRADOR_1_FOGO
						 inSELECAO_NAVE=SELECAO_NAVE_UP_ATIRADOR_1_FOGO;
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_ATIRADOR_1_TERRA
						 inSELECAO_NAVE=SELECAO_NAVE_UP_ATIRADOR_1_TERRA;
			}
		
	//Para evitar clique duplo:
	mySELECAO_NAVE=.5;	
	//Trata profundidade: 
	depth=DEPTH-100;
	

