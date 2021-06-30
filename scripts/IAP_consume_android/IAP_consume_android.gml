/// @description IAP_consume_android(ID Produto, _ptoken, ID_ARRAY_IAP)
/// @param ID_Produto
/// @param _ptoken
function IAP_consume_android(ID_Produto,ptoken) {
	

	var _productId = ID_Produto;
	var _ptoken = ptoken;
	var __ID_IAP;

	for (var _i=0; _i<=IAP_Prod_N; _i++)
	{
		if (IAP_Prod_id[_i]=_productId) {__ID_IAP = _i;}
	}
	
	//POR HORA, SO TEM NÃO CONSUMIVEL\\
	
			//if __ID_IAP>5 //Não consumiveis
			//{
				GPBilling_AcknowledgePurchase(_ptoken);
				ds_list_add(CurrentTokens, _ptoken);
				ds_list_add(CurrentProducts,_productId);
			//}
			//else // Consumiveis
			//{
			//	GPBilling_ConsumeProduct(_ptoken);
			//	ds_list_add(CurrentTokens, _ptoken);
			//	ds_list_add(CurrentProducts, _productId);
			//}
	

/* end IAP_consume_android */
}
