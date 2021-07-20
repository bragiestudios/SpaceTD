

	speed=0;
	direction=0;
	gravity=0;
	x=xstart;
	y=ystart;
	
	image_index=COUNT;

	speed=random_range(60,70);
	
	switch(COUNT)
	{
		case 1: direction=45 ; break;
		case 3: direction=135; break;
		case 2: direction=225; break;
		case 4: direction=315; break;
	}
		
	
	x+=hspeed;
	y+=vspeed;
	
	speed=random_range(1,2);
	direction=point_direction(x,y,xstart,ystart)+((x<obj_Camera.x) ? -90 : 90);
	
	gravity=random_range(.05,.15);
	gravity_direction=point_direction(x,y,xstart,ystart);
