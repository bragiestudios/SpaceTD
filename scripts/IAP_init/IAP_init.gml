function IAP_init() {




 
		//Cria variaveis necessárias para tratamento:
				globalvar IAP_Prod_N,
						  IAP_comprando,
						  IAP_Prod_id,
						  IAP_Prod_nome,
						  IAP_Prod_preco;
				IAP_Prod_N=3
				IAP_comprando=false
				
		//Cria variáveis necessárias para mercadoria:
				globalvar NO_ADS, 
						  UNLOCK_ALL_THEMES,
						  UNLOCK_ALL_CHAPTERS;
						  
			   safe_ini_open(working_directory + "\confOrbits.ini");
			    NO_ADS				= ini_read_real("IAP","NO_ADS",             false);
				UNLOCK_ALL_THEMES	= ini_read_real("IAP","UNLOCK_ALL_THEMES",  false);
				UNLOCK_ALL_CHAPTERS	= ini_read_real("IAP","UNLOCK_ALL_CHAPTERS",false);
			   ini_close()
						  
					

		//no_ads
				IAP_Prod_id[1]     = "no_ads";
				IAP_Prod_nome[1]   = "No Ads";
				IAP_Prod_preco[1]  = "...";
		
		//unlock_all_themes
				IAP_Prod_id[2]	   = "unlock_all_themes";
				IAP_Prod_nome[2]   = "Unlock All Themes";
				IAP_Prod_preco[2]  = "...";
		

		
		//unlock_all_chapters
				IAP_Prod_id[3]     = "unlock_all_chapters";
				IAP_Prod_nome[3]   = "Unlock All Chapters";
				IAP_Prod_preco[3]  = "...";
		
			
			
			if os_browser!=browser_not_a_browser
				{
					NO_ADS=true;
				}
			
			if os_type=os_android
			{
				// Attempt to connect to the store
				globalvar CurrentTokens, CurrentProducts;
					CurrentTokens = ds_list_create();
					CurrentProducts = ds_list_create();
					var _init = GPBilling_ConnectToStore();
					if _init == gpb_error_unknown
					 {
					    show_debug_message("ERROR - Billing API Has Not Connected!");
					 }
					else
					 {
					    alarm[0] = room_speed * 2;
					 }
				
			}
		
			if os_type=os_ios
			{
				var IAP_Enabled = ios_iap_IsAuthorisedForPayment();
				if IAP_Enabled
				{
				    for (var _i=0; _i<=IAP_Prod_N; _i++)
					 {
						ios_iap_AddProduct(IAP_Prod_id[_i]);
					 }
				    ios_iap_QueryProducts();
				}
			}
		

		
		
		
		
		

/* end IAP_init */
}
