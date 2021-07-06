


	if y>obj_Camera.y+yMEIO+100
	{
		y=obj_Camera.y-yMEIO-random_range(100,200);;
		x=obj_Camera.x+random_range(-100,100);
	}
	
	if VIDA<=0
	{
		instance_destroy()
	}