/// @description IAP_consumir(ID Produto)
/// @param ID_Produto
function IAP_consumir(argument0) {


		var _id = argument0;
		var NadaDeNovo = false;
		var GRANA_ADD  = "NO";
		var _return    = false;
	
		IAP_comprando=false
	

		switch(_id)
		{
			//no_ads:
			case IAP_Prod_id[1]:
				_return=true;
				if !NO_ADS
				{
					NO_ADS=true;
				}
				break;
				
			//unlock_all_themes
			case IAP_Prod_id[2]:
				_return=true;
				if !UNLOCK_ALL_THEMES or !NO_ADS
				{
					NO_ADS=true;
					UNLOCK_ALL_THEMES=true;
				}
				break;
			
			//unlock_all_chapters
			case IAP_Prod_id[3]:
				_return=true;
				if !UNLOCK_ALL_CHAPTERS or !NO_ADS
				{
					NO_ADS=true;
					UNLOCK_ALL_CHAPTERS=true;
				}
				break;
		}
		
		
			//Atualiza ini:
			   safe_ini_open(working_directory + "\confOrbits.ini");
			    ini_write_real("IAP","NO_ADS",             NO_ADS);
				ini_write_real("IAP","UNLOCK_ALL_THEMES",  UNLOCK_ALL_THEMES);
				ini_write_real("IAP","UNLOCK_ALL_CHAPTERS",UNLOCK_ALL_CHAPTERS);
			   safe_ini_close(working_directory + "\confOrbits.ini");
			   
			//Firebase:
			if _return
			BigData_Firebase_logEventParamString("iap","item",_id);
		
				   
		return  _return;


}
