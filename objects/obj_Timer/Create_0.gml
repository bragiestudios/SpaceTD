




	//Open from popup:
	globalvar open_from_push;
	
		open_from_push=false;

	//Sync:
	globalvar date_seconds_sync,
			  time_sync;
			  
		date_seconds_sync=100000;
		time_sync=0;
	
	//Timers:
	globalvar timer_PRESENTE_30m,
			  timer_PRESENTE_06h,
			  timer_PRESENTE_20h;
		
		timer_PRESENTE_30m=0;
		timer_PRESENTE_06h=0;
		timer_PRESENTE_20h=0;
		
	//Timezone:
	date_set_timezone(timezone_utc);