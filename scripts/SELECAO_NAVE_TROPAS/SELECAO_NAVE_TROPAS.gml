// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SELECAO_NAVE_TROPAS(sair_da_selecao){




#region PREÇO_E_VENDA_ATIRADOR

	// >>>>>>>>>
	// Variáveis facilitadoras para definir preço
	
		var PRECO,P_VENDA;

//**************************************ATIRADORES NÍVEL 0**************************************							
		//Atiradores:
			PRECO[NAVE_ATIRADOR_0]			= 50;
			
			P_VENDA[NAVE_ATIRADOR_0]		= PRECO[NAVE_ATIRADOR_0];
			
//**************************************ATIRADORES NÍVEL 1**************************************					
			PRECO[NAVE_ATIRADOR_1_AGUA]		= 50;
			PRECO[NAVE_ATIRADOR_1_AR]		= 50;
			PRECO[NAVE_ATIRADOR_1_FOGO]		= 50;
			PRECO[NAVE_ATIRADOR_1_TERRA]	= 50;
			
			P_VENDA[NAVE_ATIRADOR_1_AGUA]	= PRECO[NAVE_ATIRADOR_1_AGUA]*.7;
			P_VENDA[NAVE_ATIRADOR_1_AR]		= PRECO[NAVE_ATIRADOR_1_AR]*.7;
			P_VENDA[NAVE_ATIRADOR_1_FOGO]	= PRECO[NAVE_ATIRADOR_1_FOGO]*.7;
			P_VENDA[NAVE_ATIRADOR_1_TERRA]	= PRECO[NAVE_ATIRADOR_1_TERRA]*.7;

//**************************************ATIRADORES NÍVEL 2**************************************					
			PRECO[NAVE_ATIRADOR_2_AGUA]		= 50;
			PRECO[NAVE_ATIRADOR_2_AR]		= 50;
			PRECO[NAVE_ATIRADOR_2_FOGO]		= 50;
			PRECO[NAVE_ATIRADOR_2_TERRA]	= 50;
			PRECO[NAVE_ATIRADOR_2_GELO]		= 50;
			PRECO[NAVE_ATIRADOR_2_TESLA]	= 50;
			
			P_VENDA[NAVE_ATIRADOR_2_AGUA]	= PRECO[NAVE_ATIRADOR_2_AGUA]*.7;
			P_VENDA[NAVE_ATIRADOR_2_AR]		= PRECO[NAVE_ATIRADOR_2_AR]*.7;
			P_VENDA[NAVE_ATIRADOR_2_FOGO]	= PRECO[NAVE_ATIRADOR_2_FOGO]*.7;
			P_VENDA[NAVE_ATIRADOR_2_TESLA]	= PRECO[NAVE_ATIRADOR_2_TESLA]*.7;
			P_VENDA[NAVE_ATIRADOR_2_GELO]	= PRECO[NAVE_ATIRADOR_2_GELO]*.7;
			P_VENDA[NAVE_ATIRADOR_2_TERRA]	= PRECO[NAVE_ATIRADOR_2_TERRA]*.7;

//**************************************ATIRADORES NÍVEL 3**************************************			
			PRECO[NAVE_ATIRADOR_3_FERVE]	= 50;
			PRECO[NAVE_ATIRADOR_3_PEDRA]	= 50;
			PRECO[NAVE_ATIRADOR_3_GELO]		= 50;
			PRECO[NAVE_ATIRADOR_3_TESLA]	= 50;

			P_VENDA[NAVE_ATIRADOR_3_FERVE]	= PRECO[NAVE_ATIRADOR_3_FERVE]*.7;
			P_VENDA[NAVE_ATIRADOR_3_PEDRA]	= PRECO[NAVE_ATIRADOR_3_PEDRA]*.7;
			P_VENDA[NAVE_ATIRADOR_3_GELO]	= PRECO[NAVE_ATIRADOR_3_GELO]*.7;
			P_VENDA[NAVE_ATIRADOR_3_TESLA]	= PRECO[NAVE_ATIRADOR_3_TESLA]*.7;		
	
	
	// Variáveis facilitadoras para definir preço
	// <<<<<<<<<
	
#endregion PREÇO_E_VENDA_ATIRADOR	


//switch(inSELECAO_NAVE)
	//{
		
		
			
	//}

	return sair_da_selecao;

}