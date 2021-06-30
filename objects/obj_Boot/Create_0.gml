

//Debug:
	#macro DEBUG 0
	
	/*	Nível:
	 *		0   - Desabilitado
	 *		.1  - Atalhos G/V/N/M
	 *		1   - 
	 *
	 *		100 - View log partida
	 */

	if DEBUG>0
	{instance_create_depth(0,0,-800,obj_debug);}


//Code Versão:
	#macro code_versao "0.0.1"
	#macro code_versao_n "000-000-100"
	
	/*	Atual Publicado:
	 *		Android:	0.0.0	| 000-000-000
	 *		HTML5:		0.0.0	| 000.000.000
	 */
	
	
	
//Get informações de datetime e versão:
	//*  NOTA
	//*	 -> No alarm[0] e HTTP do obj_Timer tem funções relativas ao boot
	
	globalvar http_boot;
 	obj_Timer.alarm[0]=1;
	
//Animação boot:
	_alpha=-0.9
	_add_alpha=0.05