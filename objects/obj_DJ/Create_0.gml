

//test commit 2

/// ----> Carregar Audios:
	//audio_group_load(AG_TOC);
	//audio_group_load(AG_Geral);
/// <---- Carregar Audios:
	
	

/// ----> Variáveis de playing
		globalvar MUSIC_playing, SOUND_playing;
		 safe_ini_open(working_directory + "\confOrbits.ini");
			MUSIC_playing = ini_read_real  ("GERAL","MUSIC_playing",true);
			SOUND_playing = ini_read_real  ("GERAL","SOUND_playing",true);
		 ini_close()
/// <---- Variáveis de playing



/// ----> Variáveis das músicas
	globalvar msc_DEFAULT, msc_CHEFE;

		msc_DEFAULT	  = msc_bg_DEFAULT;
		msc_CHEFE	  = msc_bg_CHEFE;

/// <---- Variáveis das músicas


	alarm[0]=10


/// ----> Variáveis ids
	globalvar id_msc_DEFAULT,
			  id_msc_CHEFE,
			  id_snd_magnet,
			  id_snd_reverse,
			  id_snd_speed,
			  id_snd_slow;

		id_msc_DEFAULT	= -1;
		id_msc_CHEFE    = -1;
		
		id_snd_magnet	= -1;
		id_snd_reverse	= -1;
		id_snd_speed	= -1;
		id_snd_slow		= -1;

/// <---- Variáveis ids
