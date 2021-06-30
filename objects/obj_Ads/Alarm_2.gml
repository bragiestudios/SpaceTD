/// @description Recarregar Rewarded



if os_type=os_ios
{
	/// ----> RECARREGAR REWARDED
		if ads_StatusInterstitial != "Carregando"
		{
			GoogleMobileAds_LoadRewardedVideo(ads_rewarded_id);
			ads_StatusRewarded = "Carregando"
			ads_rewarded_viewed = false;
		}
		else
		{
			alarm[2]=10; 
			/*
				Não sobrecarregar a internet,
				carregar apenas se n estiver
				carregando interstitial
			*/
		}
}