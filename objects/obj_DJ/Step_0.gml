/*


	//CHEFE:
		if inGAME
		and (   instance_exists(obj_Chefe_Ordem)
			 or instance_exists(obj_Chefe_Timer) )
		{
			
			//Limpa msc_Menu:
				if id_msc_CHEFE!=-1
				{
					if audio_sound_get_gain(id_msc_CHEFE)=.1
						{audio_sound_gain(id_msc_CHEFE, 0, 300)}
				}
			
				//Iniciar música:
					if  MUSIC_playing	and id_msc_DEFAULT=-1 and msc_DEFAULT!=-1
					{
						id_msc_DEFAULT=audio_play_sound(msc_DEFAULT,90,true);
							audio_sound_set_track_position(id_msc_DEFAULT,40)
							audio_sound_gain(id_msc_DEFAULT, 0, 0);
							audio_sound_gain(id_msc_DEFAULT,.1, 10);
					}


				//Voltar música:
					if  MUSIC_playing	and id_msc_DEFAULT!=-1
					and audio_sound_get_gain(id_msc_DEFAULT)=0
					{
						audio_sound_gain(id_msc_DEFAULT,.1, 100);
					}
				
		}
	//DEFAULT:
		else
		{
			//Limpa msc_DEFAULT:
				if id_msc_DEFAULT!=-1
				{
					if audio_sound_get_gain(id_msc_DEFAULT)=.15
						{audio_sound_gain(id_msc_DEFAULT, 0, 200)}
					if audio_sound_get_gain(id_msc_DEFAULT)=0
						{audio_stop_sound(id_msc_DEFAULT); id_msc_DEFAULT=-1;}
				}
			
				//Iniciar música:
					if  MUSIC_playing	and id_msc_CHEFE=-1
					{
						id_msc_CHEFE=audio_play_sound(msc_CHEFE,90,true);
							audio_sound_gain(id_msc_CHEFE, 0, 0);
							audio_sound_gain(id_msc_CHEFE,.15, 1500);
					}

				//Voltar música:
					if  MUSIC_playing	and id_msc_CHEFE!=-1
					and audio_sound_get_gain(id_msc_CHEFE)=0
					{
						audio_sound_gain(id_msc_CHEFE,.15, 1500);
					}
		}







				//Para músicas:
					if !MUSIC_playing	and id_msc_CHEFE!=-1
					and audio_sound_get_gain(id_msc_CHEFE)=.15
					{
						audio_sound_gain(id_msc_CHEFE, 0, 200);
					}
					
					if !MUSIC_playing	and id_msc_DEFAULT!=-1
					and audio_sound_get_gain(id_msc_DEFAULT)=.1
					{
						audio_sound_gain(id_msc_DEFAULT, 0, 200);
					}

   