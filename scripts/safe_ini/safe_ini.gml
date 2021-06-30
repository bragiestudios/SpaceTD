
function safe_ini_close(ini_file) {


	var _ini_file_ = ini_file;
	var _ini_file_zip_ = string_replace(_ini_file_,".ini",".zbragi");


	//Cria o novo ini criptografado:
	ini_close_encrypted_zlib(_ini_file_zip_,KEY_INI)
	

}




function safe_ini_open(ini_file) {


	var _ini_file_ = ini_file;
	var _ini_file_zip_ = string_replace(_ini_file_,".ini",".zbragi");

	if file_exists(_ini_file_)//checa se existe um ini antigo
	{
		//Abre o antigo ini:
		ini_open(_ini_file_);
	
		//Cria o novo ini criptografado:
		ini_close_encrypted_zlib(_ini_file_zip_,KEY_INI)
	
		//Deleta o antigo ini:
		file_delete(_ini_file_);
	
		//Abre novo ini criptografado:
		ini_open_encrypted_zlib(_ini_file_zip_,KEY_INI)
	}
	else
	{
		//Abre ini criptografado:
		ini_open_encrypted_zlib(_ini_file_zip_,KEY_INI)
	}


}





function safe_ini_get_string(ini_file) {

	safe_ini_open(ini_file)
	
	return ini_close();
	
}

function safe_ini_set_by_string(ini_file, String_ini) {

	ini_open_from_string(String_ini)
	
	safe_ini_close(ini_file)
}


function safe_ini_save_all() {

	safe_ini_set_by_string(working_directory + "\confLVLsCompletos.ini",	SAFE_INI[? "confLVLsCompletos"]);
	safe_ini_set_by_string(working_directory + "\confItensMap.ini",			SAFE_INI[? "confItensMap"]);
	safe_ini_set_by_string(working_directory + "\confItensMapCount.ini",	SAFE_INI[? "confItensMapCount"]);
	safe_ini_set_by_string(working_directory + "\confLVLsDesbloqueio.ini",	SAFE_INI[? "confLVLsDesbloqueio"]);

}