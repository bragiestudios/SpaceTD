

	//Criptografia:
		#macro KEY_INI		"K6zRkXbTl8i3yjx1aCKv2IkIQvKPh9"
		
	//Url comunicação com o servidor:
		#macro URL_SERVER	"https://bragiestudios.com/PHPsAPPs/Orbits/"


	//CORES:
		#macro c_QuaseBranco	make_color_rgb( 238 , 238 , 238 )
		#macro c_TERRA			make_color_rgb( 137 , 244 , 74  )
		#macro c_AGUA			make_color_rgb( 45  , 252 , 246 )
		#macro c_AR				make_color_rgb( 255 , 210 , 87  )
		#macro c_FOGO			make_color_rgb( 247 , 67  , 67  )
	
	//Idiomas:
		#macro IDIOMA_PT	0
		#macro IDIOMA_EN	1
		#macro IDIOMA_ES	2
		
	//SELECOES:
		#macro SELECAO_NAVE_NOT						0
		
		#macro SELECAO_NAVE_SLOT_VAZIO				1
		#macro SELECAO_NAVE_SLOT_VAZIO_TROPA		1.1
		#macro SELECAO_NAVE_SLOT_VAZIO_ATIRADOR		1.2
		#macro SELECAO_NAVE_SLOT_VAZIO_CANHAO		1.3
		#macro SELECAO_NAVE_SLOT_VAZIO_SUPORTE		1.4
		
		#macro SELECAO_NAVE_UP_ATIRADOR_0			2
		#macro SELECAO_NAVE_UP_ATIRADOR_0_TERRA 	2.1
		#macro SELECAO_NAVE_UP_ATIRADOR_0_AGUA 		2.2
		#macro SELECAO_NAVE_UP_ATIRADOR_0_AR		2.3
		#macro SELECAO_NAVE_UP_ATIRADOR_0_FOGO		2.4
		#macro SELECAO_NAVE_UP_ATIRADOR_0_VENDA		2.5
		
		
		#macro SELECAO_NAVE_UP_TROPA_0				3
		#macro SELECAO_NAVE_UP_CANHAO_0				4
		#macro SELECAO_NAVE_UP_SUPORTE_0			5

	//NAVES:
		#macro NAVE_VENDA					0
		
		#macro NAVE_TROPA_0					0.1
		#macro NAVE_ATIRADOR_0				0.2
		#macro NAVE_CANHAO_0				0.3
		#macro NAVE_SUPORTE_0				0.4
		
		
		#macro NAVE_ATIRADOR_1_TERRA		1.11
		#macro NAVE_ATIRADOR_1_AGUA			1.12
		#macro NAVE_ATIRADOR_1_AR			1.13
		#macro NAVE_ATIRADOR_1_FOGO			1.14
		
		
		#macro NAVE_ATIRADOR_2_TERRA		2.11
		#macro NAVE_ATIRADOR_2_AGUA			2.12
		#macro NAVE_ATIRADOR_2_AR			2.13
		#macro NAVE_ATIRADOR_2_FOGO			2.14
		
	//ELEMENTOS:
		#macro ELEMENTO_NEUTRO	0
		#macro ELEMENTO_TERRA	1
		#macro ELEMENTO_AGUA	2
		#macro ELEMENTO_AR		3
		#macro ELEMENTO_FOGO	4
	
		

	//GET Safes INI:
		globalvar SAFE_INI;
		
			SAFE_INI = ds_map_create();
			SAFE_INI[? "conf"] = safe_ini_get_string(working_directory + "\conf.ini");
		
		
	//GAMEPLAY:
		globalvar inGAME, inSELECAO_NAVE, GRANA;
		
			inGAME=true;
			inSELECAO_NAVE=SELECAO_NAVE_NOT;
			GRANA=50;
			
				

	//Start Menu:
		//instance_create_depth(0,0,depth,obj_Menu);
		
		
	//Confi IDIOMA:
		globalvar IDIOMA, STRINGS_INI;		 
			switch (os_get_language())
			 {
			   case "es": IDIOMA=IDIOMA_ES; break;
			   case "pt": IDIOMA=IDIOMA_PT; break;
			   default:   IDIOMA=IDIOMA_EN; break;
			 }
		
				ini_open("strings.txt");
				STRINGS_INI=ini_close();
				
				
			//Firebase:
			BigData_Firebase_logEventParamString("language_player","language",os_get_language())
	
	
			
	
	
	
	//Criar Particulas (estrelas):
		randomize();
		var _N_ = (os_browser=browser_not_a_browser) ? 50 : 25;
		repeat(_N_)
		{
			var obj = instance_create_layer(0,0,"Particulas",obj_particula);
			obj.LAYER=1;
		}

		repeat(_N_)
		{
			var obj = instance_create_layer(0,0,"Particulas",obj_particula);
			obj.LAYER=2;
		}

		repeat(_N_)
		{
			var obj = instance_create_layer(0,0,"Particulas",obj_particula);
			obj.LAYER=3;
		}