

/// ----> Set HTTP_status
	var HTTP_status = ds_map_find_value(async_load,"status");
/// <---- Set HTTP_status
	
	
/// ----> Get informações de datetime e versão:

if  http_boot=ds_map_find_value(async_load,"id")
 {
	 //-show_message_async("check|"+string(HTTP_status)+"|"+string(ds_map_find_value(async_load,"http_status"))+"|")
	 
	 if HTTP_status=0
	 and !ErrorNetConexao()
	  {
         // ---> TEXTO BRUTO
         var texto=ds_map_find_value(async_load,"result");
		 
		 
		 // ---> LENDO INI:
		 ini_open_from_string(texto)
			//check:
			var __check   = ini_read_string("CHECK" , "CHECK","ERRO"       )
			//versão:
			var __versao  = ini_read_string("VERSAO", "code" ,code_versao_n)
			//datetime:
			var _year   = ini_read_real("DATETIME","year"  ,current_year  )
			var _month  = ini_read_real("DATETIME","month" ,current_month )
			var _day    = ini_read_real("DATETIME","day"   ,current_day   )
			var _hour   = ini_read_real("DATETIME","hour"  ,current_hour  )
			var _minute = ini_read_real("DATETIME","minute",current_minute)
			var _second = ini_read_real("DATETIME","second",current_second)
		 ini_close()
		 
		 
		 // ---> CHECK:
		 if (__check="OK")
		 {
			 //Ultrapassado:
			 if real(string_replace_all(__versao,"-",""))>real(string_replace_all(code_versao_n,"-",""))
			 {
				 //show_popup("versao_ultrapassada")
			 }
			 
			 //Lida com datetime para obj_Timer:
				//Set timezone:
				date_set_timezone(timezone_utc);
				//Referencial do horário no servidor:
				var datetime_online = date_create_datetime(_year,_month,_day,_hour,_minute,_second);
				//Define o delay referente ao horário local:
				date_seconds_sync=date_second_span(datetime_online, date_current_datetime())
				//Checa se o delay é acréscimo ou decréscimo:
				if (date_compare_datetime(datetime_online, date_current_datetime())=-1) date_seconds_sync*=-1;
				
				//Salva o horário que foi sincronizado:
				time_sync=current_datetime_sync();
				//Inicia checagem do sync:
				alarm[3]=5;
				
				//Sync timers:
				timer_sync_ini_all();
			 
		 }
		 else
		 {
			 //Chama novamente:
			 alarm[0]=room_speed*2;
		 }
		 
	  }
	  else
	  {
		  //Chama novamente:
	  	  alarm[0]=room_speed*2;
	  }
 }
	
/// <---- Get informações de datetime e versão