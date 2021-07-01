/// @description Preparar a sala para a gameplay



	//Criar slots:
		var SLOT_ID_ = 1;
		//Slots da esquerda:
		repeat(13)
		{
			var obj_ = instance_create_layer(0,0,"Gameplay",Obj_Slot);
			obj_.SLOT_ID = SLOT_ID_;
			SLOT_ID_++;
		}

		var SLOT_ID_ = 101;
		//Slots da direita:
		repeat(13)
		{
			var obj_ = instance_create_layer(0,0,"Gameplay",Obj_Slot);
			obj_.SLOT_ID = SLOT_ID_;
			SLOT_ID_++;
		}