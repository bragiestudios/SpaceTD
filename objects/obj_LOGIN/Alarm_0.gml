/// @description get_ID_temp
/*
if DEBUG=0
{
	http_id_NewUser = http_get(URL_SERVER+"LoginCreateUserTemp.php");
}
else
{
	ini_open("ID.txt")
		ini_write_string("Bragi","ID","1");
	ini_close()
}