/// @description TRANSLADOS e ATIRAR



	//Destroi:
		if VIDA<=0
		{
			PAI.FILHO[FILHO_ID]=noone;
			instance_destroy();
			exit;
		}


	//COUNTDOWN ATIRAR:
		if COUNTDOWN_ATAQUE>0 COUNTDOWN_ATAQUE--;

	//ir para local de alocamento:
	if ALOCAMENTO_status>0
	{
		image_angle=PAI.image_angle;
	}
	else
	{
		var DISTANCIA_DESITINO = point_distance(x,y,ALOCAMENTO_x,ALOCAMENTO_y)
		if DISTANCIA_DESITINO>2
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
					
					
					//ATIRAR:
						
						if angle_difference(image_angle,ANGULO_INIMIGO) < 5
						and point_distance(x,y,inCOMBATE.x,inCOMBATE.y)<=inCOMBATE.DISTANCIA_COMBATE
						 var perceguindo = true;
						else 
						 var perceguindo = false;
	
						if	perceguindo
						and COUNTDOWN_ATAQUE<=0
						{
							COUNTDOWN_ATAQUE=RECARGA_ATAQUE;
		
							var projetil = instance_create_depth(x,y,depth,Obj_Atirador_Projetil);
							projetil.speed=PROJETIL_TROPA_SPEED;
							projetil.direction=image_angle;
							projetil.DANO=DANO;
							projetil.INIMIGO=inCOMBATE;
							projetil.image_speed=0;
		
		
							switch(TIPO_NAVE)
							{
								case NAVE_ATIRADOR_0:
									projetil.sprite_index=spr_Atirador_Projetil;
									projetil.image_index =0;
									break;
				
								case NAVE_ATIRADOR_1_AGUA:
									projetil.sprite_index=spr_Atirador_Projetil;
									projetil.image_index =2;
									break;
				
								case NAVE_ATIRADOR_1_AR:
									projetil.sprite_index=spr_Atirador_Projetil;
									projetil.image_index =3;
									break;
				
								case NAVE_ATIRADOR_1_FOGO:
									projetil.sprite_index=spr_Atirador_Projetil;
									projetil.image_index =4;
									break;
				
								case NAVE_ATIRADOR_1_TERRA:
									projetil.sprite_index=spr_Atirador_Projetil;
									projetil.image_index =1;
									break;
							}
						}
					
					
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
