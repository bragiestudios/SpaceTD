function timer_sync_ini_all() {


		//Sync timers:
			
					safe_ini_open(working_directory + "\datetime.ini");
				
						//Ler:
						timer_PRESENTE_30m = ini_read_real("TIMERS","PRESENTE_30m",date_inc_minute(  current_datetime_sync(), 30));
						timer_PRESENTE_06h = ini_read_real("TIMERS","PRESENTE_06h",date_inc_hour(    current_datetime_sync(),  6));
						timer_PRESENTE_20h = ini_read_real("TIMERS","PRESENTE_20h",date_inc_hour(    current_datetime_sync(), 20));
					
						//Salvar:
						ini_write_real("TIMERS","PRESENTE_30m",timer_PRESENTE_30m);
						ini_write_real("TIMERS","PRESENTE_06h",timer_PRESENTE_06h);
						ini_write_real("TIMERS","PRESENTE_20h",timer_PRESENTE_20h);
					
					safe_ini_close(working_directory + "\datetime.ini");
				
				
		//Notificações:
		
			show_debug_message("push_notification | GIFT TIMER");
		
			//Limpa para evitar duplicata:
			push_notification_clean("| GIFT TIMER");

			//Cria alertas:
			//push_notification(  "30m | GIFT TIMER",timer_PRESENTE_30m,date_seconds_sync+120);
			push_notification(  "06h | GIFT TIMER",timer_PRESENTE_06h,date_seconds_sync+120);
			push_notification(  "20h | GIFT TIMER",timer_PRESENTE_20h,date_seconds_sync+120);
	

}
