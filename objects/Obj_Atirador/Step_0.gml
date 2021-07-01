/// @description Persegição



	//Genérico:
		if id=inst_Atirador_Generico {exit;}


	//Persegição:
		var perceguindo = false;
		if instance_exists(Obj_Inimigo_Generico) // Se existe inimigos no jogo
		{
			//Descobrimos o inimigo mais próximo, e se ele está no raio de ataque:
			var INIMIGO_MAIS_PROXIMO_DE_MIM = instance_nearest(x,y,Obj_Inimigo_Generico);
			var NO_RAIO_DE_ATAQUE   = (point_distance(x,y,INIMIGO_MAIS_PROXIMO_DE_MIM.x,INIMIGO_MAIS_PROXIMO_DE_MIM.y)<ALCANCE_px) ? true : false;
			
			var DIRECAO_DO_INIMIGO_MAIS_PROXIMO_DE_MIM = point_direction(x,y,INIMIGO_MAIS_PROXIMO_DE_MIM.x,INIMIGO_MAIS_PROXIMO_DE_MIM.y);
			var NO_ANGULO_DE_ATAQUE = angle_in_range(DIRECAO_DO_INIMIGO_MAIS_PROXIMO_DE_MIM,ANGULO_PARADO-(ALCANCE_an/2),ALCANCE_an);
			
			
			if NO_RAIO_DE_ATAQUE
			{
				//Caso tenhamos um inimigo no raio, descobrimos qual o mais avançado y>:
					//Primeiro dizemos que o mais avançado é o mesmo que o mais próximo
					var INIMIGO_MAIS_AVANCADO = (NO_ANGULO_DE_ATAQUE) ? INIMIGO_MAIS_PROXIMO_DE_MIM : noone;
				
					//Então executamos o roteiro abaixo em todas as instancias do Obj_Inimigo_Generico
					with(Obj_Inimigo_Generico)
					{
						//Checa se estou dentro do raio de ataque do other, e se está no angulo de alcance:
						if (point_distance(x,y,other.x,other.y)<other.ALCANCE_px)
						and angle_in_range(point_direction(x,y,other.x,other.y),other.ANGULO_PARADO-(other.ALCANCE_an/2),other.ALCANCE_an)
						{
							//Checa se existe um atual:
							if INIMIGO_MAIS_AVANCADO=noone
							{
								//Primeirinho:
								INIMIGO_MAIS_AVANCADO=self;
							}
							else
							{
								//Checa se sou mais avançado que o atual:
								if y>INIMIGO_MAIS_AVANCADO.y
								{
									//Se sim, eu passo a ser a instancia referencia para mais avançado:
									INIMIGO_MAIS_AVANCADO=self;
								}
							}
						}
					}

				//Direciona para o INIMIGO_MAIS_AVANCADO (se existir):
				if INIMIGO_MAIS_AVANCADO!=noone
				{
					var ANGULO_INIMIGO = point_direction(x,y,INIMIGO_MAIS_AVANCADO.x,INIMIGO_MAIS_AVANCADO.y);
					if (ANGULO_INIMIGO>270) {ANGULO_INIMIGO-=360;}
					image_angle+=(ANGULO_INIMIGO-image_angle)/10;
					
					if angle_difference(image_angle,ANGULO_INIMIGO) < 5
					{
						perceguindo = true;
					}
				}
				else
				{
					//Caso não tenha nenhum inimigo próximo e no raio de ataque, voltamos para posição parado
						image_angle+=(ANGULO_PARADO-image_angle)/20;
				}
			}
			else
			{
				//Caso não tenha nenhum inimigo próximo, voltamos para posição parado
					image_angle+=(ANGULO_PARADO-image_angle)/20;
			}
		}



	//ATIRAR:
	if COUNTDOWN>0 COUNTDOWN--;
	
	if	perceguindo
	and COUNTDOWN<=0
	{
		COUNTDOWN=RECARGA;
		
		var projetil = instance_create_depth(x,y,depth,Obj_Atirador_Projetil);
		projetil.speed=10;
		projetil.direction=image_angle;
		projetil.DANO=DANO;
		projetil.INIMIGO=INIMIGO_MAIS_AVANCADO;
		projetil.image_speed=0;
		
		
		switch(TIPO_NAVE)
		{
			case NAVE_ATIRADOR_0:
				projetil.sprite_index=spr_Atirador_Projetil;
				projetil.image_index =0;
				break;
				
			case NAVE_ATIRADOR_1_AGUA:
				projetil.sprite_index=spr_Atirador_Projetil;
				projetil.image_index =3;
				break;
				
			case NAVE_ATIRADOR_1_AR:
				projetil.sprite_index=spr_Atirador_Projetil;
				projetil.image_index =2;
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