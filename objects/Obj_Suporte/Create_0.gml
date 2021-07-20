



	//Genérico:
		if id=inst_Suporte_Generico {exit;}
		
		
	//Variáveis locais:
	
	//Filhos
		FILHO[1]=instance_create_depth(x,y,depth+1,Obj_Suporte_Filhos); FILHO[1].PAI=id; FILHO[1].COUNT=1;  FILHO[1].alarm[0]=1;
		FILHO[2]=instance_create_depth(x,y,depth+1,Obj_Suporte_Filhos); FILHO[2].PAI=id; FILHO[2].COUNT=2;  FILHO[2].alarm[0]=1;
		FILHO[3]=instance_create_depth(x,y,depth+1,Obj_Suporte_Filhos); FILHO[3].PAI=id; FILHO[3].COUNT=3;  FILHO[3].alarm[0]=1;
		FILHO[4]=instance_create_depth(x,y,depth+1,Obj_Suporte_Filhos); FILHO[4].PAI=id; FILHO[4].COUNT=4;  FILHO[4].alarm[0]=1;
		
		//Contigura caracteristicas pelo tipo:
		SETUP_SUPORTE(NAVE_SUPORTE_0)
		
		