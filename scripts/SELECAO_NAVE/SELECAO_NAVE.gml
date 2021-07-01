
function draw_and_check_opcoes_SELECAO_NAVE(){
	
	
	var sair_da_selecao = (mouse_check_button_pressed(mb_left)) ? true : false;
	
	
	switch(inSELECAO_NAVE)
	{
		
		#region SLOT_VAZIO:
	
			case SELECAO_NAVE_SLOT_VAZIO:
			case SELECAO_NAVE_SLOT_VAZIO_TROPA:
			case SELECAO_NAVE_SLOT_VAZIO_ATIRADOR:
			case SELECAO_NAVE_SLOT_VAZIO_CANHAO:
			case SELECAO_NAVE_SLOT_VAZIO_SUPORTE:
		
				/*
					Selecione uma nave inicial nível 0:
					- Tropa;
					- Atirador;
					- Canhão;
					- Suporte;
				*/
				
				//Tropa:
					var check_click = draw_bt_SELECAO_NAVE( 45,SELECAO_NAVE_SLOT_VAZIO_TROPA	,1,Obj_Atirador);
					if check_click {sair_da_selecao=false;}
				//Atirador:
					var check_click = draw_bt_SELECAO_NAVE(135,SELECAO_NAVE_SLOT_VAZIO_ATIRADOR	,2,Obj_Atirador);
					if check_click {sair_da_selecao=false;}
				//Canhão:
					var check_click = draw_bt_SELECAO_NAVE(225,SELECAO_NAVE_SLOT_VAZIO_CANHAO	,3,noone);
					if check_click {sair_da_selecao=false;}
				//Suporte:
					var check_click = draw_bt_SELECAO_NAVE(315,SELECAO_NAVE_SLOT_VAZIO_SUPORTE	,4,noone);
					if check_click {sair_da_selecao=false;}
				
				
				
					speed=0;
				



		
			break;

		#endregion SLOT_VAZIO


		#region Naves Nível 0:
	
			case SELECAO_NAVE_UP_ATIRADOR_0:
		
				/*
					Selecione o upgrade para nível 2:
					- Terra;
					- Água;
					- Ar;
					- Fogo;
				*/
			
		
			break;
	
			case SELECAO_NAVE_UP_CANHAO_0:
		
				/*
					Selecione o upgrade para nível 2:
					- Terra;
					- Água;
					- Ar;
					- Fogo;
				*/
			
		
			break;
	
			case SELECAO_NAVE_UP_SUPORTE_0:
		
				/*
					Selecione o upgrade para nível 2:
					- Terra;
					- Água;
					- Ar;
					- Fogo;
				*/
			
		
			break;
	
			case SELECAO_NAVE_UP_TROPA_0:
		
				/*
					Selecione o upgrade para nível 2:
					- Terra;
					- Água;
					- Ar;
					- Fogo;
				*/
			
		
			break;

		#endregion Naves Nível 0
	}





				//Clicou, mas não foi em nenhum botão, sair da seleção!
					if sair_da_selecao
					{
						inSELECAO_NAVE=SELECAO_NAVE_NOT;
						mySELECAO_NAVE=false;
						exit;
					}



}



function draw_bt_SELECAO_NAVE(angulo,sub_SELECAO_NAVE,image,obj_nave_criada)
{
		//Manha pra pegar a posição de desenho no circulo de seleção:
			direction=angulo;
			speed=145;
					
		//Desenha o botão em si:
			var estou_selecionado = (inSELECAO_NAVE=sub_SELECAO_NAVE) ? true : false;
			draw_sprite(spr_bt_SELECAO_NAVE,(estou_selecionado) ? 0 : image,x+hspeed,y+vspeed)
					
		//Checa se o botão foi clicado:
			if	mouse_check_button_pressed(mb_left)
			and point_in_circle(mouse_x,mouse_y,x+hspeed,y+vspeed,45)
			{
				//Ações do botão:
					if !estou_selecionado
					{
						//Me seleciona:
						//Muda para o sub-menu onde temos mais informações sobre o que é a tropa
						inSELECAO_NAVE=sub_SELECAO_NAVE;
									
					}
					else
					{
						//CRIA A NAVE:
							var obj_ = instance_create_layer(x,y,"Gameplay",obj_nave_criada);
							obj_.SLOT_PAI=self;
							NAVE_ID=obj_;
						
						//Sai da seleção de naves:
							inSELECAO_NAVE=SELECAO_NAVE_NOT;
							mySELECAO_NAVE=false;
					
					}
								
				//Dispensa a saída da seleção:
					return true;
			}
			
			return false;
}