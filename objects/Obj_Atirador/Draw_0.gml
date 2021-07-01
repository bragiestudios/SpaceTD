





	//Persegição 
		if instance_exists(Obj_Inimigo_Generico)
		{
			var INIMIGO_MAIS_PROXIMO_DE_MIM = instance_nearest(x,y,Obj_Inimigo_Generico);
			
			var NO_RAIO_DE_ATAQUE = (point_distance(x,y,INIMIGO_MAIS_PROXIMO_DE_MIM.x,INIMIGO_MAIS_PROXIMO_DE_MIM.y)<ALCANCE) ? true : false;
			
			if NO_RAIO_DE_ATAQUE
			{
				var INIMIGO_MAIS_PROXIMO=INIMIGO_MAIS_PROXIMO_DE_MIM;
				with(Obj_Inimigo_Generico)
				{
					if (point_distance(x,y,other.x,other.y)<other)
					and y>INIMIGO_MAIS_PROXIMO.y
					{
						INIMIGO_MAIS_PROXIMO=self;
					}
				}
			}
			


			if NO_RAIO_DE_ATAQUE
			{
				var ANGULO_INIMIGO = point_direction(x,y,INIMIGO_MAIS_PROXIMO.x,INIMIGO_MAIS_PROXIMO.y);
				if (ANGULO_INIMIGO>270) {ANGULO_INIMIGO-=360;}
				image_angle+=(ANGULO_INIMIGO-image_angle)/10;
			}
			else
			{
				image_angle+=(ANGULO_PARADO-image_angle)/10;
			}
		}

/*
		draw_set_alpha(.1)
		draw_set_color(COR)
	draw_circle(x,y,ALCANCE,false)
		draw_set_alpha(1)
*/

	draw_self()