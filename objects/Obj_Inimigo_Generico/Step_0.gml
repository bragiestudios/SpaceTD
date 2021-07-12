


	//DETECTA COMBATE:
		with(Obj_Tropa_Filhos)
		{
			if	abs(y-other.y)<other.DISTANCIA_DETECTA_COMBATE_V
			and abs(x-other.x)<other.DISTANCIA_DETECTA_COMBATE_H
			{
				//Essa tropa não está em translado:
				if ALOCAMENTO_status=noone
				{
					other.inCOMBATE = id;
	
					if inCOMBATE=noone
					or !instance_exists(inCOMBATE)
					{
						inCOMBATE=other;
					}
					else
					{
						if other.y>inCOMBATE.y
						inCOMBATE=other;
					}
				}
			}
		}



	//MOVIMENTO:
		if inCOMBATE!=false
		{
			
			var COMBATENTE = inCOMBATE;//instance_nearest(x,y,Obj_Tropa_Filhos);
			var ANGULO_COMBATENTE = point_direction(x,y,COMBATENTE.x,COMBATENTE.y);
			
			
			if point_distance(x,y,COMBATENTE.x,COMBATENTE.y)>DISTANCIA_COMBATE
			{
				direction=ANGULO_COMBATENTE;
				speed=VELOCIDADE;
			}
			else
			{
				speed=0;
			}
			
				
				//if (ANGULO_COMBATENTE=>270) {ANGULO_COMBATENTE-=360;}
				image_angle+=(ANGULO_COMBATENTE-image_angle)/10;
				
				inCOMBATE = false;
		}
		else
		{
			y+=VELOCIDADE;
		}
	

	//Destroi:
		if VIDA<=0
		{
			instance_destroy()
		}
	
	
	
	//DESCARTAR RESTART:
		if y>obj_Camera.y+yMEIO+100
		{
			y=obj_Camera.y-yMEIO-random_range(100,200);;
			x=obj_Camera.x+random_range(-100,100);
		}