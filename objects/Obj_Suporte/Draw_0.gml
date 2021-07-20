


	draw_self()
	
	
	var x_medio = ( FILHO[1].x
				   +FILHO[2].x
				   +FILHO[3].x
				   +FILHO[4].x )/4;
				   
	var y_medio = ( FILHO[1].y
				   +FILHO[2].y
				   +FILHO[3].y
				   +FILHO[4].y )/4;
	
	direction=point_direction(x,y,x_medio,y_medio);
	speed=point_distance(x,y,x_medio,y_medio)/30;
	
	//draw_set_color(c_red)
	//draw_circle(x_medio,y_medio,10,false)