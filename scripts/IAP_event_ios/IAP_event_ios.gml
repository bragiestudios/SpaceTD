function IAP_event_ios() {

	if os_type=os_windows or os_type=os_macosx {exit;} //limpa testes



	var _eventId = async_load[? "id"];
	switch (_eventId)
	    {
		    case ios_product_update:
		        // Decode the returned JSON
		        var _json = async_load[? "response_json"];
		        var _map = json_decode(_json);
		        var _plist = _map[? "valid"];
		        var _sz = ds_list_size(_plist);
		        // Loop through all valid products and store any data that you require
					for (var i = 0; i < _sz; ++i;)
					 {
						var _pmap = _plist[| i];
						for (var _i=0; _i<=IAP_Prod_N; _i++)
						{
							if (_pmap[? "productId"] == IAP_Prod_id[_i] ) {IAP_Prod_preco[_i]	 = string(_pmap[? "price"]);}
						}
					 }
		        ds_map_destroy(_map);
			
				// Produtos comprados offline:
				IAP_query_purchases_ios();
				
		        break;

			case ios_payment_queue_update:
			case ios_receipt_refresh:
				if isRestore
				{
					show_debug_message("IAPs Restauradas");
					isRestore=false;
					var _json = async_load[? "response_json"];
					if _json != ""
						{show_toast("In-app purchase\nrestore success!");}
					else
						{show_toast("In-app purchase\nrestore failed");}
				}
			    // Decode the returned JSON
			    var _json = async_load[? "response_json"];
			    if _json != ""
			        {
			        var _map = json_decode(_json);
			        var _plist = _map[? "purchases"];
			        var _sz = ds_list_size(_plist);
			        // loop through purchases
			        for (var i = 0; i < _sz; ++i;)
			            {
				            var _pmap = _plist[| i];
				            var _ptoken = _pmap[? "purchaseToken"];
				            // Check purchases
				            if _pmap[? "purchaseState"] != ios_purchase_failed
				            {
								ios_iap_GetReceipt();
								if ios_iap_ValidateReceipt()
				                {
									IAP_consumir(_pmap[? "productId"]);
				                }
								else
								{
									// -> Isso precisa ser revisado.
									IAP_consumir(_pmap[? "productId"]);
									// <- Isso precisa ser revisado.
									IAP_comprando=false;
									show_debug_message("IAP - Compra não validada!")
									show_toast("In-app purchase failed,\ntry again!");
								}
				            }
							else
							{
								IAP_comprando=false;
								show_debug_message("IAP - Compra não realizada! ERRO: "+string(_pmap[? "purchaseState"]))
								show_toast("In-app purchase failed,\ntry again!");
							}
						
					        ios_iap_FinishTransaction(_ptoken);
					        ds_map_destroy(_pmap);
			            }
			        ds_map_destroy(_map);
			        }
			    break;
	     }


/* end IAP_event_ios */
}
