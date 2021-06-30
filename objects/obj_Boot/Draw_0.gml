


/// ----> TRATAR _alpha:

	//Tratamento de variaveis:
		_alpha+=_add_alpha

		if _alpha>5 {_add_alpha=-0.08}
		if _alpha<-1 {/* FINAL BOOT */}

/// <---- TRATAR _alpha:


/// ----> DESENHAR BOOT:

		
	//Logo Bragi Estúdios:
			draw_set_alpha(_alpha)
		draw_sprite(spr_BOOT_Bragi,0,obj_Camera.x,obj_Camera.y)
		
		
	//Nome Bragi Estúdios:
			draw_set_text(font_40px,fa_center,fa_middle,c_QuaseBranco)
		    draw_set_alpha(_alpha-1)
		draw_text(obj_Camera.x,obj_Camera.y-yMEIO+yNOTCH+60,txt("VERSAO")+code_versao+"*")
			draw_set_alpha(1)
			
			
	//Vesão Beta:
			draw_set_text(font_50px,fa_center,fa_middle,c_QuaseBranco)
		    draw_set_alpha(_alpha-1)
		draw_text(obj_Camera.x,obj_Camera.y+yMEIO-60,"Bragi Estúdios")
			draw_set_alpha(1)
			
/// <---- DESENHAR BOOT: