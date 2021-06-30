function IAP_query_purchases_ios() {

	

	var _json = ios_iap_QueryPurchases();
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
	            }
	        ios_iap_FinishTransaction(_ptoken);
	        ds_map_destroy(_pmap);
	        }
	    ds_map_destroy(_map);
	    }

/* end IAP_query_purchases_ios */
}
