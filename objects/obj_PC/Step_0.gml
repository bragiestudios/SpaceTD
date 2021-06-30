
//Check NEXT LEVEL

	if inGAME
	and room!=room_boot
	and inGAMEOVER="NO"
	{
		var NEXT_LEVEL = true
	
		with(obj_PlanetaPai)
		{
			if !TOCADO 
			//ignorar malvados
			and AREA_MALVADA!="ALL"
			{NEXT_LEVEL=false;}
		}
	
		if NEXT_LEVEL game_NEXT_LEVEL();
	}