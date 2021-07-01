

	//Criptografia:
		#macro KEY_INI		"K6zRkXbTl8i3yjx1aCKv2IkIQvKPh9"
		
	//Url comunicação com o servidor:
		#macro URL_SERVER	"https://bragiestudios.com/PHPsAPPs/Orbits/"


	//CORES:
		#macro c_QuaseBranco	make_color_rgb(238,238,238)
		#macro c_FOGO			make_color_rgb(247,67 ,67 )
	
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
		#macro SELECAO_NAVE_UP_TROPA_0				3
		#macro SELECAO_NAVE_UP_CANHAO_0				4
		#macro SELECAO_NAVE_UP_SUPORTE_0			5
		

	//GET Safes INI:
		globalvar SAFE_INI;
		
			SAFE_INI = ds_map_create();
			SAFE_INI[? "conf"] = safe_ini_get_string(working_directory + "\conf.ini");
		
		
	//GAMEPLAY:
		globalvar inGAME, inSELECAO_NAVE;
		
			inGAME=true;
			inSELECAO_NAVE=SELECAO_NAVE_NOT;
			
				

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