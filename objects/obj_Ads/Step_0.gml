


/// ----> Rewarded timer

	if ads_timer>0 {ads_timer--;}

/// <---- Rewarded timer



	//----> SE TESTE NO PC
			if os_type == os_windows or os_type == os_macosx
			 {exit;}
	//<---- SE TESTE NO PC


/// ----> TRATAR POSIÇÃO DO BANNER

	#region iOS
	
		if os_type == os_ios
		{
			//inGAME:
			if !NO_ADS
			and room!=room_FIM
			and room!=room_boot
			and inGAME
			 {
				 if ads_StatusBanner = "Show"
				  {
					  //GoogleMobileAds_MoveBanner(ads_ww-(ads_bw/2), ads_hh-ads_bh);
				  }
				 else 
				  {
					  ads_StatusBanner = "Show";
					  GoogleMobileAds_ShowBanner();
					  GoogleMobileAds_MoveBanner(ads_ww-(ads_bw/2), ads_hh-ads_bh);
				  }
		 
			 }
			//Não mostrar
			else if ads_StatusBanner = "Show"
			 {
				 GoogleMobileAds_MoveBanner(-1000,-1000);
				 GoogleMobileAds_HideBanner();
				 ads_StatusBanner = "Hide"
			 }
		}
		
	#endregion iOS


	#region android

		if os_type == os_android
		{
			//Define ads_bh_real
			if BannerIsShow()
			 {ads_bh_real = ads_bh;}
			else
			 {ads_bh_real = 0;}
			
			
			//MOSTRAR:
			if !NO_ADS
			and room!=room_FIM
			and room!=room_boot
			and inGAME
			and (current_time > 500 or ads_StatusBanner!="NADA")
			{
				if ads_StatusBanner = "NADA"
				or ads_StatusBanner = "HIDE"
				{
					Yodo1MAS_ShowBanner(); 

					alarm[0] = room_speed; 

					ads_StatusBanner = "SHOW"
				}
			}
			//Não mostrar
			else
			{
				global.isBannerReady=false; 
				Yodo1MAS_HideBanner();
				ads_StatusBanner = "HIDE";
			}
		}
	#endregion android
	
/// <---- TRATAR POSIÇÃO DO BANNER