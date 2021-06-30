

function ads_recompensar() {

		//Para efeito visual da grana sendo adicionada:
		//var GRANA_ADD  = "NO";

	//Qual recompensa deve ser dada:
	switch(ads_tipo_recompensa)
	 {
		 //+50 moedas:
		 case "+50 COINS":
			GRANA+=50;
			//Atualizar ini:
			GRANA_update_ini();
			//Firebase:
			BigData_Firebase_logEarnVirtualCurrency("coins",50);
		 break;
	 
		//ads_CONTINUE:
		case "ads_CONTINUE":
			//Continuar jogo:
			with(obj_Continue_Ad)
			{
				var obj = instance_create_depth(obj_player.x,obj_player.y,-50,obj_HeartBreak);
				obj.timer_sleep=-25;
				ADS_ATIVADO=true;
				ATIVOU_CONTINUE=true;
				inGAMEOVER="CONTINUE";
			}
			//Firebase:
			BigData_Firebase_logEventParamString("continue","level",string(LEVEL_ATUAL));
		break;
		
		 //Desbloqueio de chapter:
		 case "CHAPTER_UNLOCK_AD":
			if instance_exists(obj_Levels)
			{
				with(obj_Levels)
				{
					//if os_browser=browser_not_a_browser //[safe_ini_open HTML5] - OK
					//{
					//	safe_ini_open(working_directory + "\confLVLsDesbloqueio.ini");
					//		TIMER_CHAPTER_UNLOCK[CHAPTER_UNLOCK_AD]=date_current_datetime();
					//		ini_write_real("TIMER",string(CHAPTER_UNLOCK_AD),TIMER_CHAPTER_UNLOCK[CHAPTER_UNLOCK_AD]);
					//	safe_ini_close(working_directory + "\confLVLsDesbloqueio.ini");
					//}
					
			
					ini_open_from_string(SAFE_INI[? "confLVLsDesbloqueio"])
					 TIMER_CHAPTER_UNLOCK[CHAPTER_UNLOCK_AD]=date_current_datetime();
					 ini_write_real("TIMER",string(CHAPTER_UNLOCK_AD),TIMER_CHAPTER_UNLOCK[CHAPTER_UNLOCK_AD]);
					SAFE_INI[? "confLVLsDesbloqueio"]=ini_close();
					
					safe_ini_save_all();
					
					//Firebase:
					BigData_Firebase_logEventParamString("chapter_unlock_ad","chapter",string(CHAPTER_UNLOCK_AD));
				}
			}
		 break;
	 }


		BigData_Firebase_logEventParamString("ads_recompensa","tipo",ads_tipo_recompensa);
		AppsFlyer_logEvent("af_ad_view")
		
		//BigData_event("      -> ADS_RECOMPENSOU: "+ads_tipo_recompensa);

		//Libera ads_tipo_recompensa:
		ads_tipo_recompensa = "";



}






function ads_recompensa_pronta() {

		//return Se possui alguma anúncio carregado;
		
		var _return = false;
		 
			switch(os_type)
			{
				case os_macosx:
				case os_windows:
					if !keyboard_check(ord("A"))
					{_return = true;}
				break;
					
				case os_ios:
					 if ads_StatusRewarded = "Carregado" 
					 {_return = true;}
				break;
		  
				case os_android:
					 if (string(Yodo1MAS_RewardedIsReady()) == INTERSTITIAL_READY)
					 {_return = true;}
				break;
			}
			
			if os_browser!=browser_not_a_browser {_return = true;}
				
		return _return;



}




function ads_show_Interstitial() {
	
	if os_type=os_ios
	{
		if ads_StatusInterstitial = "Carregado"
		and current_time-Interstitial_time>(1000*60*5) //+5min
		and !NO_ADS
		 {
			Interstitial_time=current_time;
			ads_StatusInterstitial = "Nada";
			GoogleMobileAds_ShowInterstitial();
			exit;
		 }
	}
	if os_type=os_android
	{
		if (string(Yodo1MAS_InterstitialReady()) == INTERSTITIAL_READY)
		and current_time-Interstitial_time>(1000*60*5) //+5min
		and !NO_ADS
		 {
			Interstitial_time=current_time;
			Yodo1MAS_ShowInterstitialAd();
			exit;
		 }
	}
		 
/* end ads_show_Interstitial */
}







function ads_show_recompensa(tipo_recompensa) {
		
		var _tipo_recompensa = tipo_recompensa;
	
	
	    ads_tipo_recompensa=_tipo_recompensa;

		if (os_type=os_macosx or os_type=os_windows)
		{
			ads_timer=0;
			ads_recompensar();
			exit;
		}
		
		if os_type=os_ios
		{
			if ads_StatusRewarded = "Carregado"
			 {
				Interstitial_time=current_time; //Quem assiste um Rewarded fica livre de Interstitial por 3min
		
				ads_StatusRewarded = "Nada";
				ads_timer=0;
				GoogleMobileAds_ShowRewardedVideo();
				exit;
			 }
			else
			 {
				 show_toast(txt("AdLoading"))
			 }
		}
		
		if os_type=os_android
		{
			if (string(Yodo1MAS_RewardedIsReady()) == INTERSTITIAL_READY)
			 {
				Interstitial_time=current_time; //Quem assiste um Rewarded fica livre de Interstitial por 3min
				ads_timer=0;
				Yodo1MAS_ShowRewardAd();
				exit;
			 }
			else
			 {
				 show_toast(txt("AdLoading"))
			 }
		}
		 
		 
		
	ads_tipo_recompensa="";
		 
		 
		
/* end ads_show_recompensa */
}







function ads_timer_int() {


		var __return = min(ceil(ads_timer/2/room_speed),5);
	
	
		return __return;

}



/*
/// @description desenha o timer
/// @param x
/// @param y
/// @param color
/// @param color_background*
function draw_ads_timer(argument0, argument1, argument2, argument3) {


		var __x = argument0;
		var __y = argument1;
		var __color = argument2;
		var __color_background = argument3;
	
		//Não desenha se acabou o tempo
		if ads_timer<=0 {exit;}
	
		//Var para retornar ao que estava:
			var _co = draw_get_color();
			var _fo = draw_get_font();
			var _ha = draw_get_halign();
			var _va = draw_get_valign();
	
				//Background:
					if __color_background!=-1
					{
							draw_set_color(__color_background)
						draw_circle(__x,__y,32,false)
					}
		
				//Number:
						draw_set_halign(fa_center)
						draw_set_valign(fa_middle)
						draw_set_font(font_50px)
						draw_set_color(__color)
					draw_text(__x,__y,string(ads_timer_int()))
	
				//Line:
					draw_circle_ext(__x,__y,32,/*(ads_timer_int()+1)** /30, 90, -ads_timer*1.2,5,true)
		
		
		//Retornar ao que estava:
			draw_set_color (_co);
			draw_set_font  (_fo);
			draw_set_halign(_ha);
			draw_set_valign(_va);


}
