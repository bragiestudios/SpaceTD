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


//switch(inSELECAO_NAVE)
	//{
		
		
			
	//}

	return sair_da_selecao;

}