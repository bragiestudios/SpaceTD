
function push_notification(type, timer, offset) {

		var __type   = type;
		var __timer  = date_inc_second(timer, offset);
	

		//Se já passou, não criar notificação:
		if date_compare_datetime(current_datetime_sync(),__timer)=1 {exit;}
	
		//Criar notificação:
		push_local_notification(__timer, "Orbits Conqueror", txt_notification(__type), __type);
	
	


}


function push_notification_clean(type) {

		var __type = type;
	
		var map = ds_map_create();
		var ntf = push_get_first_local_notification(map);
		while(ntf >= 0)
		 {
		    var data = ds_map_find_value(map, "data");
		
				if string_count(__type,string(data))>0
			     {push_cancel_local_notification(ntf);}
		
		    ntf = push_get_next_local_notification(map);
		 }
		ds_map_destroy(map);


}
