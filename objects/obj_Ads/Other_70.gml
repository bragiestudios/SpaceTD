
/// ----> ADS RETURN



if (os_type!=os_ios) {exit;}


	//Checa se evento Ads:
	var _id = async_load[? "id"];
	if _id != GoogleMobileAds_ASyncEvent 
	{exit;}

	//Identificar tipo:
	var ident = async_load[? "type"];
    switch (ident)
    {
		
	 //---> CASOS BANNER
		case "banner_load":
			if async_load[? "loaded"] == 1
             {
				//Atualizar variaveis:
				ads_bw = GoogleMobileAds_BannerGetWidth();
				ads_bh = GoogleMobileAds_BannerGetHeight()+5;
				ads_ww = display_get_width() / 2;
				ads_hh = display_get_height();
				ads_bh_real = (yMAX/ads_hh)*ads_bh;
				GoogleMobileAds_MoveBanner(-1000, -1000)
				GoogleMobileAds_HideBanner();
				ads_StatusBanner = "Hide"
				show_debug_message("ADS: ----> Se liga nesse banner")
			 }
			else
			 {
			    alarm[0]=20;
				ads_StatusBanner = "Nada";
				show_debug_message("ADS: ----> Falha ao carregar banner, tentar novamente.")
			 }
        break;
	//<--- CASOS BANNER
		
		
		
	 //---> CASOS INTERSTITIAL
	        case "interstitial_load":
	            if async_load[? "loaded"] == 1
	             {
					show_debug_message("ADS: ----> Interstitial Carregado")
					ads_StatusInterstitial = "Carregado";
					if ads_StatusRewarded = "Nada" {alarm[2]=2}
	             }
				else 
				 {
					 alarm[1]=5
					 ads_StatusInterstitial = "Nada";
					 show_debug_message("ADS: ----> Falha ao carregar Interstitial, tentar novamente.")
				 }
	        break;

			case "interstitial_closed":
				alarm[1]=1
				ads_StatusInterstitial = "Nada";
				show_debug_message("ADS: ----> Interstitial aberto, carregar outro.")
			break;
	 //<--- CASOS INTERSTITIAL
	
	

	
	//---> CASOS REWARDED
		case "rewardedvideo_adloaded":
            ads_StatusRewarded = "Carregado";
			show_debug_message("ADS: ----> Rewarded Carregado")
        break;
	
		case "rewardedvideo_loadfailed":
			ads_StatusRewarded = "Nada";
			alarm[2]=20
			show_debug_message("ADS: ----> Falha ao carregar Rewarded, tentar novamente.")
        break;
	
		case "rewardedvideo_adopened":
            show_debug_message("ADS: ----> Começou a assistir o Anúncio Rewarded");
        break;
		
        case "rewardedvideo_videostarted":
            show_debug_message("ADS: ----> Inicio do Anúncio Rewarded");
        break;
			
        case "rewardedvideo_watched":
			ads_rewarded_viewed = true;
			ads_recompensar();
			show_debug_message("ADS: ----> Assistiu o Rewarded, recompensar");
        break;
			
        case "rewardedvideo_adclosed":
            if ads_rewarded_viewed == false
                {
	                //Não assistiu ao vídeo.
                }
            alarm[2]=1;
			show_debug_message("ADS: ----> Fechou o Rewards, carregar outro.");
        break;
	
	//<--- CASOS REWARDED
   }
