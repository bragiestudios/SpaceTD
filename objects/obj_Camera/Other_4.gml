/// @description RESPANSIVIDADE DE TELA



	//Dimenções da tela:
		globalvar wDISPLAY, hDISPLAY;
		wDISPLAY = 0;
		hDISPLAY = 0;
	
	//Responsivo:
		set_responsividade_de_tela();

	//Definir posições do Background:
		layer_y("Background",camera_get_view_y(view_camera[0])/2.5+500)
		layer_x("Background",camera_get_view_x(view_camera[0])/2.5+500)
		
	//Definir escala do Background:
		var lay_id = layer_get_id("Background");
		var back_id = layer_background_get_id(lay_id);
		layer_background_stretch(back_id, false);
		layer_background_xscale(back_id,1.8)
		layer_background_yscale(back_id,1.8)

	//Definir posição de view:
		camera_set_view_pos(view_camera[0],
					x-(camera_get_view_width(view_camera[0])/2),
					y-(camera_get_view_height(view_camera[0])/2))
