


	//Genérico:
		if id=inst_Atirador_Generico {exit;}
		

		//DESENHAR NAVE:
		switch(TIPO_NAVE)
		{
			//Nível 1:
				case NAVE_ATIRADOR_0:
					draw_sprite_ext(spr_Atirador_0,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					break;
				
			//Nível 2:
				case NAVE_ATIRADOR_1_AGUA:
					draw_sprite_ext(spr_Atirador_1,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					break;
				

				case NAVE_ATIRADOR_1_AR:
					draw_sprite_ext(spr_Atirador_1,1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					break;
				

				case NAVE_ATIRADOR_1_FOGO:
					draw_sprite_ext(spr_Atirador_1,2,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					break;
				

				case NAVE_ATIRADOR_1_TERRA:
					draw_sprite_ext(spr_Atirador_1,3,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					break;
		}