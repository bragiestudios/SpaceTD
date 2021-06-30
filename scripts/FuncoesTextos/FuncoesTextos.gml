
function txt(KEY){
	
	var STRING;
	var IDIOMA_KEY;
	
	switch(IDIOMA)
	{
		case IDIOMA_PT: IDIOMA_KEY="PT"; break;
		case IDIOMA_EN: IDIOMA_KEY="EN"; break;
		case IDIOMA_ES: IDIOMA_KEY="ES"; break;
		
	}

	ini_open_from_string(STRINGS_INI)
		var _string = ini_read_string(KEY,IDIOMA_KEY,"");
	ini_close()
	
	STRING=string_replace_all(_string," + ","\n");
	
	return STRING;
}



function txt_level() {

		return txt("LEVEL")+string(LEVEL_ATUAL);
		
}

function txt_chapter(CHAPTER) {

		return txt("CHAPTER")+" "+string(CHAPTER);
		
}



function txt_timer(argument0) {

		//Var:
		var _timer = argument0;
	
		//Ainda não tem o sync:
		if date_seconds_sync=100000 {return txt_load();}
	
	
		//Já liberou:
		if date_compare_datetime(current_datetime_sync(),_timer)=1
		{
			//Porém ainda não tem ad disponível:
			if !ads_recompensa_pronta() {return txt_load();}
		
			//Já liberou mesmo:
			else {return txt("free");}
		}
	
		//Desenha o timer:
		var _seconds_span_ = date_second_span(current_datetime_sync(),_timer);
	
		var _hour   = string_replace_all( string_format((_seconds_span_ div 3600)      ,2,0), " ", "0");
		var _minute = string_replace_all( string_format((_seconds_span_ div 60) mod 60 ,2,0), " ", "0");
		var _second = string_replace_all( string_format((_seconds_span_ mod 60)        ,2,0), " ", "0");
	
		var _txt = (real(_hour)>0) ? _hour+":"+_minute+":"+_second : _minute+":"+_second;
	
		return _txt;


}


function txt_notification(__type) {


		switch(__type)
		{
			default:
				var _txt = txt("notification_default");
			break;
		}
	
	
		return _txt;
}




function txt_load() {


		var _txt = "";
	
		if (current_second%6=0) _txt = "   ";
		if (current_second%6=1) _txt = ".  ";
		if (current_second%6=2) _txt = ".. ";
		if (current_second%6=3) _txt = "...";
		if (current_second%6=4) _txt = " ..";
		if (current_second%6=5) _txt = "  .";
	
		return _txt;


}


function draw_set_text(FONT,HALIGN,VALIGN,COR){

	draw_set_font(FONT)
	draw_set_halign(HALIGN)
	draw_set_valign(VALIGN)
	draw_set_color(COR)
}