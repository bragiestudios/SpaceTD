/// @description PrevLevel

if (os_type=os_macosx or os_type=os_windows)
and(os_browser=browser_not_a_browser or DEBUG>=.1)
{
	if (MENU_TELA="LEVELS") { MENU_TELA="START_ON_LEVELS"; }
	
	LEVEL_ATUAL--;
	level_open(LEVEL_ATUAL)
}