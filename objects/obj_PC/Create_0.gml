

	//Criptografia:
		#macro KEY_INI		"K6zRkXbTl8i3yjx1aCKv2IkIQvKPh9"
		
	//Url comunicação com o servidor:
		#macro URL_SERVER	"https://bragiestudios.com/PHPsAPPs/Orbits/"


	//CORES:
		#macro c_QuaseBranco	make_color_rgb(238,238,238)
	
	//Idiomas:
		#macro IDIOMA_PT	0
		#macro IDIOMA_EN	1
		#macro IDIOMA_ES	2
		
		
		

	//GET Safes INI:
		globalvar SAFE_INI;
		
			SAFE_INI = ds_map_create();
			SAFE_INI[? "conf"] = safe_ini_get_string(working_directory + "\conf.ini");
		
		
	//GAMEPLAY:
		globalvar inGAME;
		
			inGAME=true;
			
				

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
	
	
			
	
	
	/*/Criar Particulas (estrelas):
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