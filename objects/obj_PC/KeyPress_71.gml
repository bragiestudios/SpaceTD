/// @description +100 GRANA

if (os_type=os_macosx or os_type=os_windows)
and(os_browser=browser_not_a_browser or DEBUG>=.1)
{
	if keyboard_check(vk_shift)
	GRANA-=100
	else
	GRANA+=100
}

