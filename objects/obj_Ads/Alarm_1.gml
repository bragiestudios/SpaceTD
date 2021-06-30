/// @description Recarregar Interstitial


if os_type=os_ios
{

	/// ----> RECARREGAR INTERSTITIAL
		if ads_StatusRewarded != "Carregando"
		{
			GoogleMobileAds_LoadInterstitial();
			ads_StatusInterstitial = "Carregando";
		}
		else
		{
			alarm[1]=10; 
			/*
				Não sobrecarregar a internet,
				carregar apenas se n estiver
				carregando Rewarded
			*/
		}
}
