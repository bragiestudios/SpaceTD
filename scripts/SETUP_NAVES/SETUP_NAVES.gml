

function setup_macros_naves(){
	
		#macro NAVE_VENDA					0
		
		#macro NAVE_TROPA_0					0.1
		#macro NAVE_CANHAO_0				0.3
		#macro NAVE_SUPORTE_0				0.4
		
		
	//Atiradores:
		#macro NAVE_ATIRADOR_0				0.2
		
		#macro NAVE_ATIRADOR_1_AGUA			1.21
		#macro NAVE_ATIRADOR_1_AR			1.22
		#macro NAVE_ATIRADOR_1_FOGO			1.23
		#macro NAVE_ATIRADOR_1_TERRA		1.24
		
		
		#macro NAVE_ATIRADOR_2_AGUA			2.21
		#macro NAVE_ATIRADOR_2_AR			2.22
		#macro NAVE_ATIRADOR_2_FOGO			2.23
		#macro NAVE_ATIRADOR_2_TERRA		2.24
		#macro NAVE_ATIRADOR_2_TESLA		2.25
		#macro NAVE_ATIRADOR_2_GELO			2.26
		
		
		#macro NAVE_ATIRADOR_3_FERVE		2.21
		#macro NAVE_ATIRADOR_3_PEDRA		2.22
		#macro NAVE_ATIRADOR_3_TESLA		2.25
		#macro NAVE_ATIRADOR_3_GELO			2.26
		
		
	//Canhões: 
		#macro NAVE_CANHAO_1_TERRA			10000
		

}



function SETUP_ATIRADORES(tipo){

	TIPO_NAVE=tipo
	
	// >>>>>>>>>
	// Variáveis facilitadoras para equilibrar atributos:
	
			//ALCANCE DO TIRO (DISTANCIA EM PIXELS):
				var ALCANCE_px_PADRAO_NIVEL_0 = 500;
				var ALCANCE_px_PADRAO_NIVEL_1 = 530;
				var ALCANCE_px_PADRAO_NIVEL_2 = 560;
				var ALCANCE_px_PADRAO_NIVEL_3 = 600;
	
					var ALCANCE_px_BONUS_AR   = 1.1;
					var ALCANCE_px_BONUS_AGUA = 0.95;

			//ALCANCE DO TIRO (ANGULO):
				var ALCANCE_an_PADRAO_NIVEL_0 = 90;
				var ALCANCE_an_PADRAO_NIVEL_1 = 100;
				var ALCANCE_an_PADRAO_NIVEL_2 = 120;
				var ALCANCE_an_PADRAO_NIVEL_3 = 150;
	
					var ALCANCE_an_BONUS_AR   = 1.1;
					var ALCANCE_an_BONUS_AGUA = 0.9;
					
			//DANO POR ATAQUE:
				var DANO_PADRAO_NIVEL_0 = 5;
				var DANO_PADRAO_NIVEL_1 = 7.5;
				var DANO_PADRAO_NIVEL_2 = 10;
				var DANO_PADRAO_NIVEL_3 = 15;
	
					var DANO_BONUS_AR   = 0.8;
					var DANO_BONUS_AGUA = 1.4;
				
			//TEMPO DE RECARGA (COUNTDOWN) DE ATAQUE:
				var RECARGA_PADRAO_NIVEL_0 = 80;
				var RECARGA_PADRAO_NIVEL_1 = 30;
				var RECARGA_PADRAO_NIVEL_2 = 20;
				var RECARGA_PADRAO_NIVEL_3 = 10;
	
					var RECARGA_BONUS_AR   = 0.8;
					var RECARGA_BONUS_AGUA = 1.4;
				
			//MODIFICADORES ELEMENTAR DE VANTAGEM E DESVANTAGEM EM DANO CAUSADO:
				var VANTAGEM_ELEMENTAR_PADRAO	  = 1.2;
				var DESVANTAGEM_ELEMENTAR_PADRAO  = 0.5;
			
	// Variáveis facilitadoras para equilibrar atributos
	// <<<<<<<<<

	switch(tipo)
	{
		//Nível 0:
				case NAVE_ATIRADOR_0:
					COR = c_white;
					NIVEL = 0;
					ALCANCE_px	= ALCANCE_px_PADRAO_NIVEL_0;
					ALCANCE_an	= ALCANCE_an_PADRAO_NIVEL_0;
					DANO		= DANO_PADRAO_NIVEL_0;
					RECARGA		= RECARGA_PADRAO_NIVEL_0;
					VANTAGEM_ELEMENTAR	  = VANTAGEM_ELEMENTAR_PADRAO;
					DESVANTAGEM_ELEMENTAR = DESVANTAGEM_ELEMENTAR_PADRAO;
					ELEMENTO = ELEMENTO_NEUTRO;
					break;

		//Nível 1:
				case NAVE_ATIRADOR_1_TERRA:
					COR = c_TERRA;
					NIVEL = 1;
					ALCANCE_px	= ALCANCE_px_PADRAO_NIVEL_1;
					ALCANCE_an	= ALCANCE_an_PADRAO_NIVEL_1;
					DANO		= DANO_PADRAO_NIVEL_1;
					RECARGA		= RECARGA_PADRAO_NIVEL_1;
					VANTAGEM_ELEMENTAR	  = VANTAGEM_ELEMENTAR_PADRAO;
					DESVANTAGEM_ELEMENTAR = DESVANTAGEM_ELEMENTAR_PADRAO;
					ELEMENTO = ELEMENTO_TERRA;
					break;
			
			
				case NAVE_ATIRADOR_1_AGUA:
					COR = c_AGUA;
					NIVEL = 1;
					ALCANCE_px	= ALCANCE_px_PADRAO_NIVEL_1	* ALCANCE_px_BONUS_AGUA;
					ALCANCE_an	= ALCANCE_an_PADRAO_NIVEL_1	* ALCANCE_an_BONUS_AGUA;
					DANO		= DANO_PADRAO_NIVEL_1		* DANO_BONUS_AGUA;
					RECARGA		= RECARGA_PADRAO_NIVEL_1	* RECARGA_BONUS_AGUA;
					VANTAGEM_ELEMENTAR	  = VANTAGEM_ELEMENTAR_PADRAO;
					DESVANTAGEM_ELEMENTAR = DESVANTAGEM_ELEMENTAR_PADRAO;
					ELEMENTO = ELEMENTO_AGUA;
					break;
			
			
				case NAVE_ATIRADOR_1_AR:
					COR = c_AR;
					NIVEL = 1;
					ALCANCE_px	= ALCANCE_px_PADRAO_NIVEL_1	* ALCANCE_px_BONUS_AR;
					ALCANCE_an	= ALCANCE_an_PADRAO_NIVEL_1	* ALCANCE_an_BONUS_AR;
					DANO		= DANO_PADRAO_NIVEL_1		* DANO_BONUS_AR;
					RECARGA		= RECARGA_PADRAO_NIVEL_1	* RECARGA_BONUS_AR;
					VANTAGEM_ELEMENTAR	  = VANTAGEM_ELEMENTAR_PADRAO;
					DESVANTAGEM_ELEMENTAR = DESVANTAGEM_ELEMENTAR_PADRAO;
					ELEMENTO = ELEMENTO_AR;
					break;
			
			
				case NAVE_ATIRADOR_1_FOGO:
					COR = c_FOGO;
					NIVEL = 1;
					ALCANCE_px	= ALCANCE_px_PADRAO_NIVEL_1;
					ALCANCE_an	= ALCANCE_an_PADRAO_NIVEL_1;
					DANO		= DANO_PADRAO_NIVEL_1;
					RECARGA		= RECARGA_PADRAO_NIVEL_1;
					VANTAGEM_ELEMENTAR	  = VANTAGEM_ELEMENTAR_PADRAO;
					DESVANTAGEM_ELEMENTAR = DESVANTAGEM_ELEMENTAR_PADRAO;
					ELEMENTO = ELEMENTO_FOGO;
					break;
			

		//Nível 2:
				case NAVE_ATIRADOR_2_TERRA:
					COR = c_TERRA;
					NIVEL = 2;
					ALCANCE_px	= ALCANCE_px_PADRAO_NIVEL_2;
					ALCANCE_an	= ALCANCE_an_PADRAO_NIVEL_2;
					DANO		= DANO_PADRAO_NIVEL_2;
					RECARGA		= RECARGA_PADRAO_NIVEL_2;
					VANTAGEM_ELEMENTAR	  = VANTAGEM_ELEMENTAR_PADRAO;
					DESVANTAGEM_ELEMENTAR = DESVANTAGEM_ELEMENTAR_PADRAO;
					ELEMENTO = ELEMENTO_TERRA;
					break;
			
			
				case NAVE_ATIRADOR_2_AGUA:
					COR = c_AGUA;
					NIVEL = 2;
					ALCANCE_px	= ALCANCE_px_PADRAO_NIVEL_2	* ALCANCE_px_BONUS_AGUA;
					ALCANCE_an	= ALCANCE_an_PADRAO_NIVEL_2	* ALCANCE_an_BONUS_AGUA;
					DANO		= DANO_PADRAO_NIVEL_2		* DANO_BONUS_AGUA;
					RECARGA		= RECARGA_PADRAO_NIVEL_2	* RECARGA_BONUS_AGUA;
					VANTAGEM_ELEMENTAR	  = VANTAGEM_ELEMENTAR_PADRAO;
					DESVANTAGEM_ELEMENTAR = DESVANTAGEM_ELEMENTAR_PADRAO;
					ELEMENTO = ELEMENTO_AGUA;
					break;
			
			
				case NAVE_ATIRADOR_2_AR:
					COR = c_AR;
					NIVEL = 2;
					ALCANCE_px	= ALCANCE_px_PADRAO_NIVEL_2	* ALCANCE_px_BONUS_AR;
					ALCANCE_an	= ALCANCE_an_PADRAO_NIVEL_2	* ALCANCE_an_BONUS_AR;
					DANO		= DANO_PADRAO_NIVEL_2		* DANO_BONUS_AR;
					RECARGA		= RECARGA_PADRAO_NIVEL_2	* RECARGA_BONUS_AR;
					VANTAGEM_ELEMENTAR	  = VANTAGEM_ELEMENTAR_PADRAO;
					DESVANTAGEM_ELEMENTAR = DESVANTAGEM_ELEMENTAR_PADRAO;
					ELEMENTO = ELEMENTO_AR;
					break;
			
			
				case NAVE_ATIRADOR_2_FOGO:
					COR = c_FOGO;
					NIVEL = 2;
					ALCANCE_px	= ALCANCE_px_PADRAO_NIVEL_2;
					ALCANCE_an	= ALCANCE_an_PADRAO_NIVEL_2;
					DANO		= DANO_PADRAO_NIVEL_2;
					RECARGA		= RECARGA_PADRAO_NIVEL_2;
					VANTAGEM_ELEMENTAR	  = VANTAGEM_ELEMENTAR_PADRAO;
					DESVANTAGEM_ELEMENTAR = DESVANTAGEM_ELEMENTAR_PADRAO;
					ELEMENTO = ELEMENTO_FOGO;
					break;
			
			
	}
	

}


