function IAP_event() {

	if os_type=os_windows or os_type=os_macosx or os_browser!=browser_not_a_browser{exit;} //limpa testes



	if os_type=os_android {IAP_event_android();}
	if os_type=os_ios {IAP_event_ios();}


}
