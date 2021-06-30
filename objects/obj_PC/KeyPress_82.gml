/// @description Restart

if (os_type=os_macosx or os_type=os_windows)
and(os_browser=browser_not_a_browser or DEBUG>=.1)
{game_restart()}