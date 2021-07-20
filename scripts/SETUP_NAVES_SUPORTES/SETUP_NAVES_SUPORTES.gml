

function SETUP_SUPORTE(tipo){

	TIPO_NAVE=tipo
	
	// >>>>>>>>>
	// Variáveis facilitadoras para equilibrar atributos:
					
			//Filhos Ativos Nível 0
				var FILHO_1_ATIVO_PADRAO_NIVEL_0 = true;
				var FILHO_2_ATIVO_PADRAO_NIVEL_0 = false;
				var FILHO_3_ATIVO_PADRAO_NIVEL_0 = false;
				var FILHO_4_ATIVO_PADRAO_NIVEL_0 = false;
				
			//Filhos Ativos Nível 1
				var FILHO_1_ATIVO_PADRAO_NIVEL_1 = true;
				var FILHO_2_ATIVO_PADRAO_NIVEL_1 = true;
				var FILHO_3_ATIVO_PADRAO_NIVEL_1 = false;
				var FILHO_4_ATIVO_PADRAO_NIVEL_1 = false;
				
			//Filhos Ativos Nível 2
				var FILHO_1_ATIVO_PADRAO_NIVEL_2 = true;
				var FILHO_2_ATIVO_PADRAO_NIVEL_2 = true;
				var FILHO_3_ATIVO_PADRAO_NIVEL_2 = true;
				var FILHO_4_ATIVO_PADRAO_NIVEL_2 = false;
				
			//Filhos Ativos Nível 3
				var FILHO_1_ATIVO_PADRAO_NIVEL_3 = true;
				var FILHO_2_ATIVO_PADRAO_NIVEL_3 = true;
				var FILHO_3_ATIVO_PADRAO_NIVEL_3 = true;
				var FILHO_4_ATIVO_PADRAO_NIVEL_3 = true;
				
				
			//Bonus de dano (%)
				var BONUS_DANO_PADRAO_NIVEL_0 = .05;
				var BONUS_DANO_PADRAO_NIVEL_1 = .05;
				var BONUS_DANO_PADRAO_NIVEL_2 = .05;
				var BONUS_DANO_PADRAO_NIVEL_3 = .05;
				
				
			//Bonus de velocidade (%)
				var BONUS_VELOCIDADE_PADRAO_NIVEL_0 = .05;
				var BONUS_VELOCIDADE_PADRAO_NIVEL_1 = .05;
				var BONUS_VELOCIDADE_PADRAO_NIVEL_2 = .05;
				var BONUS_VELOCIDADE_PADRAO_NIVEL_3 = .05;
				
			
	// Variáveis facilitadoras para equilibrar atributos
	// <<<<<<<<<

	switch(tipo)
	{
		//Nível 0:
				case NAVE_SUPORTE_0:
					COR = c_white;
					NIVEL = 0;
					
					FILHO[1].ATIVO	= FILHO_1_ATIVO_PADRAO_NIVEL_0;
					FILHO[2].ATIVO	= FILHO_2_ATIVO_PADRAO_NIVEL_0;
					FILHO[3].ATIVO	= FILHO_3_ATIVO_PADRAO_NIVEL_0;
					FILHO[4].ATIVO	= FILHO_4_ATIVO_PADRAO_NIVEL_0;
					
					BONUS_DANO		 = BONUS_DANO_PADRAO_NIVEL_0;
					BONUS_VELOCIDADE = BONUS_VELOCIDADE_PADRAO_NIVEL_0;
					
					ELEMENTO = ELEMENTO_NEUTRO;
					break;
					
					
		//Nível 1:
				case NAVE_SUPORTE_1:
					COR = c_white;
					NIVEL = 1;
					
					FILHO[1].ATIVO	= FILHO_1_ATIVO_PADRAO_NIVEL_1;
					FILHO[2].ATIVO	= FILHO_2_ATIVO_PADRAO_NIVEL_1;
					FILHO[3].ATIVO	= FILHO_3_ATIVO_PADRAO_NIVEL_1;
					FILHO[4].ATIVO	= FILHO_4_ATIVO_PADRAO_NIVEL_1;
					
					BONUS_DANO		 = BONUS_DANO_PADRAO_NIVEL_1;
					BONUS_VELOCIDADE = BONUS_VELOCIDADE_PADRAO_NIVEL_1;
					
					ELEMENTO = ELEMENTO_NEUTRO;
					break;
					
					
		//Nível 2:
				case NAVE_SUPORTE_2:
					COR = c_white;
					NIVEL = 2;
					
					FILHO[1].ATIVO	= FILHO_1_ATIVO_PADRAO_NIVEL_2;
					FILHO[2].ATIVO	= FILHO_2_ATIVO_PADRAO_NIVEL_2;
					FILHO[3].ATIVO	= FILHO_3_ATIVO_PADRAO_NIVEL_2;
					FILHO[4].ATIVO	= FILHO_4_ATIVO_PADRAO_NIVEL_2;
					
					BONUS_DANO		 = BONUS_DANO_PADRAO_NIVEL_2;
					BONUS_VELOCIDADE = BONUS_VELOCIDADE_PADRAO_NIVEL_2;
					
					ELEMENTO = ELEMENTO_NEUTRO;
					break;
					
					
		//Nível 3:
				case NAVE_SUPORTE_3:
					COR = c_white;
					NIVEL = 2;
					
					FILHO[1].ATIVO	= FILHO_1_ATIVO_PADRAO_NIVEL_3;
					FILHO[2].ATIVO	= FILHO_2_ATIVO_PADRAO_NIVEL_3;
					FILHO[3].ATIVO	= FILHO_3_ATIVO_PADRAO_NIVEL_3;
					FILHO[4].ATIVO	= FILHO_4_ATIVO_PADRAO_NIVEL_3;
					
					BONUS_DANO		 = BONUS_DANO_PADRAO_NIVEL_3;
					BONUS_VELOCIDADE = BONUS_VELOCIDADE_PADRAO_NIVEL_3;
					
					ELEMENTO = ELEMENTO_NEUTRO;
					break;
					
					
					

			
	}
	

}


