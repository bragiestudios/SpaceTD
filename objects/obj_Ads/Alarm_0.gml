
/// @description Recarregar Banner


 if os_type=os_android
 {
		if!(global.isBannerReady) and ads_StatusBanner = "SHOW"
		 { 
				Yodo1MAS_ShowBanner(); 
				alarm[0] = room_speed 
		 }
		else if (global.isBannerReady) and ads_StatusBanner = "HIDE"
		 {
				Yodo1MAS_HideBanner();
				alarm[0] = room_speed 
		 }
		else
		 {
				alarm[0] = -1; 
		 } 
 }

if os_type=os_ios
{
	ads_StatusBanner = "Carregando"
	GoogleMobileAds_AddBannerAt(ads_banner_id , GoogleMobileAds_Banner, ads_ww*5, ads_hh*5);
}