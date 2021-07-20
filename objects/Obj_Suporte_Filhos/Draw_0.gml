/// @description Insert description here
// You can write your code in this editor


		if ATIVO
		{
			if image_index!=COUNT
			{draw_sprite(spr_Suporte_Sombra,COUNT-1,x,y);}
			draw_self();
		}
		
		
		


			if !instance_exists(SLOT_AJUDADO)
			or !instance_exists(SLOT_AJUDADO.NAVE_CONECTADA)
			{
				image_index=COUNT;
				SLOT_AJUDADO=noone;
			}


			
		