/// @description get PHP boot
// Get informações de datetime e versão:


http_boot = http_get(URL_SERVER+"boot.php");


show_debug_message("GET http_boot")