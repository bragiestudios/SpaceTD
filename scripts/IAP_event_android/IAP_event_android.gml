function IAP_event_android() {

	if os_type=os_windows or os_type=os_macosx {exit;} //limpa testes


	var _eventId = async_load[? "id"];
	switch (_eventId)
	    {
			//Iniciando:
			    case gpb_store_connect:
					 for (var _i=0; _i<=IAP_Prod_N; _i++)
					 {
						GPBilling_AddProduct(IAP_Prod_id[_i]);
					 }
			        GPBilling_QueryProducts();
					show_debug_message("STORE LOADED");
					
					if isRestore {show_toast("In-app purchase\nrestore success!");}
			        break;
			    case gpb_store_connect_failed:
					IAP_reinit();
					show_debug_message("STORE NOT LOADED");
					
					if isRestore {show_toast("In-app purchase\nrestore failed");}
			        break;
				
			//Adicionando Produtos:
				case gpb_product_data_response:
				    // Retrieve the JSON object response string
				    var _json = async_load[? "response_json"];
				    var _map = json_decode(_json);
				    if _map[? "success"] == true
				        {
				        // Get the DS list of products and loop through them
				        var _plist = _map[? "skuDetails"];
				        for (var i = 0; i < ds_list_size(_plist); ++i;)
				            {
				            // The skuDetails key contains a DS list where
				            // each list entry corresponds to a single
				            // product in DS map form. This DS map can be parsed
				            // to extract details like title, description and
				            // price, as shown in the example, below:
				            var _pmap = _plist[| i];
								for (var _i=0; _i<=IAP_Prod_N; _i++)
								{
									if (_pmap[? "productId"] == IAP_Prod_id[_i] ) {IAP_Prod_preco[_i]	 = string(_pmap[? "price"]);}
								}
				            }
						
				        var _purchase_json = GPBilling_QueryPurchases(gpb_purchase_skutype_inapp);
				        var _purchase_map = json_decode(_purchase_json);
				        if _purchase_map[? "success"] == true
				            {
				            var _list = _purchase_map[? "purchases"];
				            var _sz = ds_list_size(_list);
				            for (var i = 0; i < _sz; ++i;)
				                {
				                var _map = _list[| i];
				                if _map[? "purchaseState"] == 0
				                    {
					                    // Purchase has been made, so now get the product ID
					                    // and unique "token" string to identify the purchase
					                    var _pid = _map[? "productId"];
					                    var _token = _map[? "purchaseToken"];
					                    var _add = false;
					                    // Check against existing purchase IDs
										
						//[NÃO TEMOS CONSUMIVEIS POR GORA]]\\
						/*
										for (var _i=0; _i<=5; _i++)
										{
						                    if _pid == IAP_Prod_id[_i]
						                    {
						                        // It's a consumable purchase that hasn't been used yet
						                        // so call the consume function on it:
						                        GPBilling_ConsumeProduct(_token);
						                        _add = true;
						                    }
										}
						*/
						//[NÃO TEMOS CONSUMIVEIS POR GORA]]\\

										for (var _i=0; _i<=IAP_Prod_N; _i++)
										{
						                    if _pid == IAP_Prod_id[_i]
						                    {
												// Em caso de limpeza das compras, libera essa linha abaixo:
												//GPBilling_ConsumeProduct(_token); show_debug_message("CONSUMI SIM");
											
						                        // It's a non-consumable purchase so check and see
						                        // if it's been acknowledged yet:
						                        if ( _map[? "acknowledged"] == 0 )
						                            {
							                            // It hasn't been acknowledged, so do that now:
							                            GPBilling_AcknowledgePurchase(_token);
							                            _add = true;
						                            }
						                    }
										}
								
										if _add
					                    {
					                        // add all purchase IDs and tokens into the relevant
					                        // DS lists so they can be confirmed later
					                        ds_list_add(CurrentTokens, _token);
					                        ds_list_add(CurrentProducts, _pid);
					                    }
				                    }
				                }
				            }
				        ds_map_destroy(_purchase_map);
				        }
				    ds_map_destroy(_map);
				    break;


			//Comprando:
				case gpb_iap_receipt:
				    // Get the JSON object response string
				    var _json = async_load[? "response_json"];
				    var _map = json_decode(_json);
				    // Check the response to see if it succeeded
				    if _map[? "success"] == true
				        {
							show_debug_message("IAPs - gpb_iap_receipt success!");
							IAP_comprando=2
						
						
				        // Check the purchases key for any outstanding product purchases
				        if ds_map_exists(_map, "purchases")
				            {
				            // Loop through the purchases list and parse each
				            // entry to get the purchase data DS map
				            var _plist = ds_map_find_value(_map, "purchases");
				            for (var i = 0; i < ds_list_size(_plist);  ++i;)
				                {
				                var _pmap = _plist[| i];
				                var _ptoken = _pmap[? "purchaseToken"];
				                var _sig = GPBilling_Purchase_GetSignature(_ptoken);
				                var _pjson = GPBilling_Purchase_GetOriginalJson(_ptoken);
				                // Verify the purchase before consuming or acknowledging it
				                if GPBilling_Purchase_VerifySignature(_pjson, _sig)
				                  {
									show_toast("In-app purchase success!");
				                    IAP_consume_android(_pmap[? "productId"],_ptoken);
				                  }
								else
								 {
								    show_toast("In-app purchase failed signature,\ntry again!");
				                    IAP_consume_android(_pmap[? "productId"],_ptoken);
								 }
				                }
				            }
				        }
						else 
						{
							show_debug_message("IAPs - gpb_iap_receipt fail!");
							show_toast("In-app purchase failed,\ntry again!");
							IAP_comprando=false;
						}
				    ds_map_destroy(_map);
				    break;
    
	
				case gpb_product_consume_response:
				    // Get the JSON object response string
				    var _json = async_load[? "response_json"];
				    var _map = json_decode(_json);
				    var _num = -1;
				    // Get the purchase token for the product that has been purchased
				    if ds_map_exists(_map, "purchaseToken") 
				    {
					    // compare the response purchase token against the list
					    // of purchase token requests
					    for (var i = 0; i < ds_list_size(CurrentTokens); ++i;)
					    {
					        // the response matches a token in the purchase check list
					        if _map[? "purchaseToken"] == CurrentTokens[| i]
					        {
						        // Find out what product the token refers to
								var __check=IAP_consumir(CurrentProducts[| i]);
								if __check {IAP_comprando=false; _num = i; break;}
					        }
					    }
					    // Remove the purchased product and its purchase token
					    // from the appropriate check lists
					    if _num > -1
					    {
					        ds_list_delete(CurrentProducts, _num);
					        ds_list_delete(CurrentTokens, _num);
					    }
				    }
				    ds_map_destroy(_map);
				    break;
	
	
				case gpb_acknowledge_purchase_response:
				    var _map = json_decode(async_load[? "response_json"]);
				    var _num = -1;
				    // Check the response code to see if it has been successfully acknowledged
				    if _map[? "responseCode"] == 0
				        {
				        var _sz = ds_list_size(CurrentProducts);
				        // Loop through the products on the consumed/purchase list
				        // to find which one triggered this event
				        for (var i = 0; i < _sz; ++i;)
				            {
								var __check=IAP_consumir(CurrentProducts[| i]);
								if __check {IAP_comprando=false; _num = i; break;}
				            // Add further checks for other products here if required…
				            }
				        // Remove the purchased product and its purchase token
				        // from the appropriate check lists
				        if _num > -1
				            {
				            ds_list_delete(CurrentProducts, _num);
				            ds_list_delete(CurrentTokens, _num);
				            }
				        }
				    else
				        {
				        // Parse the other response codes here
				        // and react appropriately
				        }
				    ds_map_destroy(_map);
				    break;
		}




/* end IAP_event_android */
}
