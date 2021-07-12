/// @description TRANSLADOS


	//ir para local de alocamento:
	if ALOCAMENTO_status>0
	{
		image_angle=PAI.image_angle;
	}
	else
	{
		var DISTANCIA_DESITINO = point_distance(x,y,ALOCAMENTO_x,ALOCAMENTO_y)
		if DISTANCIA_DESITINO>5
		{
			direction=point_direction(x,y,ALOCAMENTO_x,ALOCAMENTO_y)
			image_angle=direction
			speed=DISTANCIA_DESITINO/ALOCAMENTO_speed
		}
		else
		{
			//inCOMBATE
			if inCOMBATE!=noone
			{
				//Inimigo destruído:
				if !instance_exists(inCOMBATE)
				{inCOMBATE=noone;}
				else
				{
					var ANGULO_INIMIGO = point_direction(x,y,inCOMBATE.x,inCOMBATE.y);
					if (ANGULO_INIMIGO>270) {ANGULO_INIMIGO-=360;}
					image_angle+=(ANGULO_INIMIGO-image_angle)/10;
				}
			}
			else
			{
				if (image_angle>270) {image_angle-=360;}
				image_angle+=(90-image_angle)/20
				speed=0;
				ALOCAMENTO_status=noone;
			}
		}
	}
