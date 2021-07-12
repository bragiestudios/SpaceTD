


	//Genérico:
		if id=inst_Tropa_Generica {exit;}
		

		//DESENHAR NAVE:
		switch(TIPO_NAVE)
		{
			//Nível 1:
				case NAVE_TROPA_0:
					draw_sprite_ext(spr_Tropas_0_2,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					break;
				
			//Nível 2:
				case NAVE_TROPA_1_AGUA:
					draw_sprite_ext(spr_Tropas_0_2,1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					break;
				

				case NAVE_TROPA_1_AR:
					draw_sprite_ext(spr_Tropas_0_2,4,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					break;
				

				case NAVE_TROPA_1_FOGO:
					draw_sprite_ext(spr_Tropas_0_2,3,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					break;
				

				case NAVE_TROPA_1_TERRA:
					draw_sprite_ext(spr_Tropas_0_2,2,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					break;
				
			//Nível 2:
				case NAVE_TROPA_2_AGUA:
					draw_sprite_ext(spr_Tropas_0_2,5,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					break;
				

				case NAVE_TROPA_2_AR:
					draw_sprite_ext(spr_Tropas_0_2,8,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					break;
				

				case NAVE_TROPA_2_FOGO:
					draw_sprite_ext(spr_Tropas_0_2,7,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					break;
				

				case NAVE_TROPA_2_TERRA:
					draw_sprite_ext(spr_Tropas_0_2,6,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
					break;
		}