/// @description RESPANSIVIDADE DE TELA
function set_responsividade_de_tela() {


	/// @description RESPANSIVIDADE DE TELA


#region Tratamento de variaveis:
			
	//HTML5:
		if os_browser!=browser_not_a_browser 
		{
			var _wDISPLAY = browser_width;
			var _hDISPLAY = browser_height;
			var _hNOTCH   = 0;
				
			window_set_size(_wDISPLAY, _hDISPLAY);
			window_center();
		}
	//Mobile/pc/console:
		else
		{
			var _wDISPLAY = display_get_width();		//iPad 2048   //iPhoneX 1125  //FullHD 1080  //HD 720  //MOTO-ONE 720
			var _hDISPLAY = display_get_height();		//iPad 2732   //iPhoneX 2436  //FullHD 1920  //HD 1280 //MOTO-ONE 1520
			var _hNOTCH   = NOTCH_getSafeInsetTop();
			
			if os_type = os_windows or os_type=os_macosx {_wDISPLAY=2048; _hDISPLAY=2732; _hNOTCH=0;}
		}
			
			if DEBUG = 100 {_wDISPLAY=1920; _hDISPLAY=1080; _hNOTCH=0;}
			
			
		
			if ((hDISPLAY==_hDISPLAY) and (wDISPLAY==_wDISPLAY)) {exit;} //Nada de novo sobre o sol, sair
		
		
			//BigData_event("INFO DISPLAY");
			//obj_PC.alarm[0]=5;
		
			 hDISPLAY=_hDISPLAY;
			 wDISPLAY=_wDISPLAY;
		 
			 show_debug_message("-> Changed screen")
		
			surface_resize(application_surface, _wDISPLAY, _hDISPLAY)
		
		var _asp   = _wDISPLAY/_hDISPLAY;
		var _cam   = view_get_camera(0);
		var _notch = 0;
	
		if (_asp<(9/16)) var _TIPO_DE_PROPORCAO_ = "ULTRA_WIDE";
		if (_asp=(9/16)) var _TIPO_DE_PROPORCAO_ = "WIDE";
		if (_asp>(9/16)) var _TIPO_DE_PROPORCAO_ = "NON_WIDE";
	
#endregion

#region Redefinindo Camera:

		switch(_TIPO_DE_PROPORCAO_)
		{
			case "NON_WIDE":
				var _notch = _hNOTCH*1920/hDISPLAY;	
					camera_set_view_size(_cam, (1920*_asp/*+(_notch*_asp)*/ ),(       1920/*+_notch*/));
			break;

			case "WIDE":
				var _notch = _hNOTCH*1920/hDISPLAY;	
					camera_set_view_size(_cam, (     1080/*+(_notch*_asp)*/ ),(       1920/*+_notch*/));
			
				break;
			
			case "ULTRA_WIDE":
				var _notch = _hNOTCH*(1080/_asp)/hDISPLAY;	
					camera_set_view_size(_cam, (     1080/*+(_notch*_asp)*/ ),1080/_asp/*((1080/_asp)+_notch)*/);
				break;
		}
		
		if os_browser!=browser_not_a_browser
		{
			surface_resize(application_surface, _wDISPLAY, _hDISPLAY)
		}
		
		if DEBUG = 100 {camera_set_view_size(_cam, (1920*2.75),(       1080*2.75));}
	
#endregion	


#region Retorno:

	
		globalvar yNOTCH, xMAX, yMAX, xMEIO, yMEIO;
		
			yNOTCH = _notch;
	
			xMAX  = camera_get_view_width(_cam);
			yMAX  = camera_get_view_height(_cam);
		
			xMEIO =	xMAX/2;
			yMEIO =	yMAX/2;
	
#endregion	




}

			
			