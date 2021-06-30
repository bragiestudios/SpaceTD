

	var type = ds_map_find_value(async_load, "type");
	var status = ds_map_find_value(async_load, "status");
	if status == 0
	{
	    // error of some kind
	    var error = ds_map_find_value(async_load, "error");
	    show_debug_message("error=" + string(error));
	}
	else
	{
	    if type == "register"
		{
	        // This is not required for Android, but is included should you
	        // be creating cross-platform games
	        //global.reg_id = ds_map_find_value(async_load, "reg_id");
		}
	    else
	    {
	        var data = ds_map_find_value(async_load, "data");
		
			if string_count("| GIFT TIMER", string(data))
	        {
				open_from_push=true;

			//Firebase:
				if current_time<5000 //Chegou a pouco tempo
				 {
					 BigData_Firebase_logEventParamString("open_from_push","tipo",string(data));
					 //-AppsFlyer_logEvent("af_opened_from_push_notification")
				 }
	        }
			
			

	    }
	}