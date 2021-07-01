




	//Vida de uma particula baseada em sua alpha:
		image_alpha+=add_alpha;
		
		if image_alpha>=max_alpha
		 {add_alpha=-add_alpha;}
		 
	//Caso de morte, reinicia vida:
		if image_alpha<0
		 {start_particula();}


	//Efeito paralaxe
		switch(LAYER)
		{
			case 1:
				x=camera_get_view_x(view_camera[0])/2.4+X
				y=camera_get_view_y(view_camera[0])/2.4+Y
				break;
		
			case 2:
				x=camera_get_view_x(view_camera[0])/2.3+X
				y=camera_get_view_y(view_camera[0])/2.3+Y
				break;
		
			case 3:
				x=camera_get_view_x(view_camera[0])/2.2+X
				y=camera_get_view_y(view_camera[0])/2.2+Y
				break;
		}