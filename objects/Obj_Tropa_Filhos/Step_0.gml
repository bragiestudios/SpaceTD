/// @description TRANSLADOS


	//ir para local de alocamento:
	if ALOCAMENTO_delay>0
	{
		ALOCAMENTO_delay--;
		
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
			if (image_angle>270) {image_angle-=360;}
			image_angle+=(90-image_angle)/20
			speed=0;
		}
	}
