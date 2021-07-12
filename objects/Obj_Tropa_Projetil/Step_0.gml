/// @description Persegue inimigo



	if instance_exists(INIMIGO)
	{
		direction=point_direction(x,y,INIMIGO.x,INIMIGO.y)
		image_angle=direction
		
		if point_distance(x,y,INIMIGO.x,INIMIGO.y)<speed
		{
			instance_destroy()
			INIMIGO.VIDA-=DANO
		}
	}
	
	
