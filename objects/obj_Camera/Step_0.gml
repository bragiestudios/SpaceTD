


	//Posiciona a view:
		camera_set_view_pos(view_camera[0],
							floor(x)-(camera_get_view_width( view_camera[0])/2), 
							floor(y)-(camera_get_view_height(view_camera[0])/2));
							
		
		
	//Posição da Câmera:
		//View Log Partida:
			if DEBUG = 100
			{
				if instance_exists(obj_BigData_LogPartida)
				{
					x=obj_BigData_LogPartida.x;
					y=obj_BigData_LogPartida.y;
				}

				//Definir posições do Background:
					layer_y("Background",camera_get_view_y(view_camera[0]))
					layer_x("Background",camera_get_view_x(view_camera[0]))
		
				exit;
			}
			
		//Geral:
			x=room_width/2;
			y=room_height/2;



	//Definir posições do Background:
		layer_y("Background",camera_get_view_y(view_camera[0])/2.5+500)
		layer_x("Background",camera_get_view_x(view_camera[0])/2.5+500)