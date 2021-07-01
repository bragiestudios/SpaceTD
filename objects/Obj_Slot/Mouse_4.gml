

	//Se já estiver em uma SELECAO_NAVE, sair
		if inSELECAO_NAVE!=SELECAO_NAVE_NOT {exit;}


	//Popup ativado:
		if NAVE_ID = noone
		{
			inSELECAO_NAVE=SELECAO_NAVE_SLOT_VAZIO;
			mySELECAO_NAVE=.5;
		}