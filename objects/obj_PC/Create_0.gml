

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
		setup_macros_selecoes()

	//NAVES:
		setup_macros_naves()
		
	//ELEMENTOS:
		#macro ELEMENTO_NEUTRO	0
		#macro ELEMENTO_AGUA	1
		#macro ELEMENTO_AR		2
		#macro ELEMENTO_FOGO	3
		#macro ELEMENTO_TERRA	4
		#macro ELEMENTO_TESLA	5
		#macro ELEMENTO_GELO	6
		
		
	
		

	//GET Safes INI:
		globalvar SAFE_INI;
		
			SAFE_INI = ds_map_create();
			SAFE_INI[? "conf"] = safe_ini_get_string(working_directory + "\conf.ini");
		
		
	//GAMEPLAY:
		globalvar inGAME, inSELECAO_NAVE, inFUNDICAO, GRANA;
		
			inGAME=true;
			inSELECAO_NAVE=SELECAO_NAVE_NOT;
			inFUNDICAO=false;
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