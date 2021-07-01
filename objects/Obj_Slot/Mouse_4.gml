

	//Se já estiver em uma SELECAO_NAVE, sair
		if inSELECAO_NAVE!=SELECAO_NAVE_NOT {exit;}


	//Ativado popup de seleção:
		//Sem nenhuma nave ainda:
			if NAVE_CONECTADA = noone 
			{
				inSELECAO_NAVE=SELECAO_NAVE_SLOT_VAZIO;
				mySELECAO_NAVE=.5;
			}
			else
			{
				//Atirador 0:
					if NAVE_CONECTADA.TIPO_NAVE=NAVE_ATIRADOR_0
					{
						inSELECAO_NAVE=SELECAO_NAVE_UP_ATIRADOR_0;
						mySELECAO_NAVE=.5;
					}
			}
			
			
			
	//Trata profundidade: 
	if mySELECAO_NAVE=0.5
	{
		depth=DEPTH-100;
	}