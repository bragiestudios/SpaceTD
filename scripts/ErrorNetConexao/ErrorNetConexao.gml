function ErrorNetConexao() {
	//  Checa se ha falha na conexao com a rede
		 
		 
		 
			 if ds_map_find_value(async_load,"result")="IOException" 
			 or ds_map_find_value(async_load,"result")="IO exception" 
			 or ds_map_find_value(async_load,"result")="unknown error" 
			 or ds_map_find_value(async_load,"result")="A connection failure occurred"
			   {return true;}
			 else
			   {return false;}


}
