/// @description Construção inicial do player

/*
/// ----> Create Login Geral

	globalvar id_bragi;
	 id_bragi = "NULL";
	 
	http_id_NewUser=-1;
	

/// ----> Gerar um usuário temporário?

	ini_open("ID.txt")
		var id_bragi__ = ini_read_string("Bragi","ID","NOVO");
	ini_close()
	
		if id_bragi__="NOVO"
		{Login_temp(1)}