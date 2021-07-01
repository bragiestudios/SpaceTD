/// @description CREATE



	//Inicia posição aleatória das particulas:
		start_particula()
	
	//Limpa particulas da logo no boot:
		while(     point_in_circle(x,y,room_width/2,room_height/2,300)
				or point_in_rectangle(x,y,room_width/2-250,room_height/2-yMEIO    ,room_width/2+250,room_height/2-yMEIO+150) 
				or point_in_rectangle(x,y,room_width/2-300,room_height/2+yMEIO-150,room_width/2+300,room_height/2+yMEIO    ) )
		{
			start_particula()
		}


	//Inicia com um alpha aleatório:
		image_alpha=random(max_alpha)