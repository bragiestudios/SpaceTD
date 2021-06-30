
	//Cria o mapeador:
	if room!=room_boot
	 {
		 instance_create_depth(0,0,depth,obj_BigData_partida_mapping)
		 
		 if DEBUG = 100
		 instance_create_depth(obj_player.xstart,obj_player.ystart,depth,obj_BigData_LogPartida);
	 }