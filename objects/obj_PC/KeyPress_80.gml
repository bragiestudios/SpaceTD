/// @description Print



if (os_type=os_macosx or os_type=os_windows)
and(os_browser=browser_not_a_browser or DEBUG>=.1)
{surface_save(application_surface,"Prints/Print.png")}