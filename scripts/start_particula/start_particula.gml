function start_particula() {


		
			//REFERENCIAL:
				X    = 0;
				Y    = 0;
				xREF = 0;
				yREF = 0;
			
				switch(LAYER)
				{
					case 1:
						xREF=camera_get_view_x(view_camera[0])/2.4
						yREF=camera_get_view_y(view_camera[0])/2.4
						break;
		
					case 2:
						xREF=camera_get_view_x(view_camera[0])/2.3
						yREF=camera_get_view_y(view_camera[0])/2.3
						break;
		
					case 3:
						xREF=camera_get_view_x(view_camera[0])/2.2
						yREF=camera_get_view_y(view_camera[0])/2.2
						break;
				}
		
		
			X=obj_Camera.x-xREF+irandom_range(-2000,2000);
			Y=obj_Camera.y-yREF+irandom_range(-2000,2000);


			image_alpha=0;
			speed=0;

			image_xscale=random_range(.5,1);
			image_yscale=image_xscale;

			add_alpha =random_range(.001,.005);

			max_alpha=random_range(.5,.9);


		//POSICAO INICIAL:
			x=xREF+X
			y=yREF+Y


}
