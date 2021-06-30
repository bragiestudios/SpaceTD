

/// ----> DEFININDO VARIAVEIS GERAIS
	
	//Para desbloqueio de capítulo: 
	#macro CHAPTER_MINUTES_UNLOCKED_AD 10
	
	
	//Para posição do banner:
	globalvar ads_bw, ads_bh, ads_hh, ads_ww,ads_bh_real;
		ads_bw = 100
		ads_bh = 50
		ads_hh = display_get_height();
		ads_ww = display_get_width() / 2;	
		ads_bh_real = 0;

	//Status:
	globalvar ads_StatusBanner, ads_StatusInterstitial, ads_StatusRewarded;
		ads_StatusBanner = "Nada";
		ads_StatusInterstitial = "Nada";
		ads_StatusRewarded = "Nada";
		ads_rewarded_viewed = false;

	//Timer Interstitial:
	globalvar Interstitial_time;
		Interstitial_time=0;
		
	//Controle Rewarded:
	globalvar ads_tipo_recompensa, ads_timer, ads_timer_max;
		ads_tipo_recompensa = "";
		ads_timer_max = 320;
		ads_timer = ads_timer_max;

	//IDs:
	if os_type == os_ios
	 {
	    ads_app_id			= "ca-app-pub-1917183060920288~9821515166";
	    ads_banner_id       = "ca-app-pub-1917183060920288/2149256317";
	    ads_interstitial_id = "ca-app-pub-1917183060920288/2340828000";
	    ads_rewarded_id     = "ca-app-pub-1917183060920288/2681391744";
	 }
	if os_type == os_android
	 {
		//YODO1:
			instance_create_depth(x,y,depth,obj_yodo1core2);
			exit;
		
		// DESLIGANDO ADMOB \\
	    //ads_app_id			= "ca-app-pub-1917183060920288~9449161838";
	    //ads_banner_id       = "ca-app-pub-1917183060920288/3047405016";
	    //ads_interstitial_id = "ca-app-pub-1917183060920288/3992821027";
	    //ads_rewarded_id     = "ca-app-pub-1917183060920288/8627034755";
		// DESLIGANDO ADMOB \\
	 }


/// <---- DEFININDO VARIAVEIS GERAIS


	//----> SE TESTE NO PC
			if os_type == os_windows
			or os_type == os_macosx
			or os_browser!=browser_not_a_browser
			 {exit;}
	//<---- SE TESTE NO PC


/// ----> START

	//Init
	GoogleMobileAds_Init(ads_interstitial_id, ads_app_id);


	//Init Interstitial
	GoogleMobileAds_LoadInterstitial();
	ads_StatusInterstitial = "Carregando";

	//Init Rewarded
	ads_StatusRewarded = "Nada";
	ads_rewarded_viewed = false;
		/*
		   Começa a carregar apenas depois do Interstitial
		   ser carregado, para poupar consumo de dados.
		*/

	//Init Banner
	GoogleMobileAds_AddBannerAt(ads_banner_id , GoogleMobileAds_Banner, -1000, -1000);
	GoogleMobileAds_HideBanner();
	ads_StatusBanner = "Carregando";

/// <---- START




	//----> SE TESTE
			var _TESTES_ = (DEBUG>0) ? true : false;
			GoogleMobileAds_UseTestAds(_TESTES_, "40E3E94EDEB16CACB73B87382D6A4179");
	//<---- SE TESTE