





	

	gravity_direction=point_direction(x,y,xstart,ystart);

	
	if point_distance(x,y,xstart,ystart)>110
	{alarm[0]=1}
	
	//gravity+=random_range(-.001,+.001);
	
	gravity=max(gravity,.05);
	gravity=min(gravity,.15)