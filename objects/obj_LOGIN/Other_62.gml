/*
/// ----> Set HTTP_status
	var HTTP_status = ds_map_find_value(async_load,"status");
/// <---- Set HTTP_status


/// ----> Validar e salvar o usuário temporário

if  http_id_NewUser=ds_map_find_value(async_load,"id")
 {
	 if HTTP_status=0
	 and !ErrorNetConexao()
	  {
         // ---> TEXTO BRUTO
         var texto=ds_map_find_value(async_load,"result");
		 
		 // ---> Lidar com ini:
         ini_open_from_string(texto);
			var id_bragi__ = ini_read_string("Bragi_ID","ID",      "ERRO");
		 ini_close();
				
		 // ---> Salvar:
		 if  id_bragi__!="ERRO"
		 and string_length(id_bragi__)>3
		 {
			ini_open("ID.txt")
			  ini_write_string("Bragi","ID",id_bragi__);
			ini_close()
		 }
		 // ---> Erro:
		 else
		  {Login_temp(room_speed);}
				
		
	  }
	 // ---> Erros NET:
     else
	  {Login_temp(room_speed);}
 }
	
/// <----  Validar e salvar o usuário temporário
