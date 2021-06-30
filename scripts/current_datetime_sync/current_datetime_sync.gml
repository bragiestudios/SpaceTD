function current_datetime_sync() {


	

		if (date_seconds_sync=100000)
			{var new_current_datetime = -1;}
		else
			{var new_current_datetime = date_inc_second(date_current_datetime(), date_seconds_sync);}


	
		return new_current_datetime;


}
