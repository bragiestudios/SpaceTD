/// @description checa sync

//Caso se passe mais que 10min desde o último sync, synca de novo:
if date_minute_span(time_sync,current_datetime_sync())>10
{
	date_seconds_sync=100000;
	time_sync=0;
	alarm[0]=1;
}
else
{alarm[3]=10;}