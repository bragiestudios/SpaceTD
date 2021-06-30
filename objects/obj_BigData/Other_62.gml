
/// ----> Set HTTP_status
	var HTTP_status = ds_map_find_value(async_load,"status");
/// <---- Set HTTP_status




/// ----> 

if  http_id_BigData_Partida=ds_map_find_value(async_load,"id")
 {
	 if HTTP_status=0
	 and !ErrorNetConexao()
	  {
         // ---> TEXTO BRUTO
         var texto=ds_map_find_value(async_load,"result");
				
				show_debug_message("Comfirma partida salva:")
				show_debug_message(texto)
				
				
		 // ---> Limpar de BigData_Partidas.txt:
		 if string_count("#NewPartida#", texto)>0
		 {
			 var txt_NewPartida=string_replace_all(texto,"#NewPartida#","")+"\n";
			 var txt_NewPartida=string_replace_all(txt_NewPartida,"#NewPartida#","");
			 
				//Varrer BigData_Partidas.txt
					var  BigData_Partidas_txt = "";
					var _BigData_Partidas_txt = "";
					var BigData_Partidas_file = file_text_open_read(working_directory + "BigData_Partidas.txt");
					while (!file_text_eof(BigData_Partidas_file))
					{
						_BigData_Partidas_txt = file_text_readln(BigData_Partidas_file);
						
						if _BigData_Partidas_txt!=txt_NewPartida
						{BigData_Partidas_txt += _BigData_Partidas_txt;}
					}
					file_text_close(BigData_Partidas_file);
					
				//Novo BigData_Partidas.txt 
					var BigData_Partidas_file = file_text_open_write(working_directory + "BigData_Partidas.txt");
					file_text_write_string(BigData_Partidas_file, BigData_Partidas_txt);
					file_text_close(BigData_Partidas_file);
		 }	
		
	  }
	  
	 //Reiniciar ciclo:
		 http_id_BigData_Partida=-1;
		 alarm[0]=room_speed;
 }
	
/// <----  