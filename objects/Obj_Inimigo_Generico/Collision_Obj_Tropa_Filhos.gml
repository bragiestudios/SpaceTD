/// @description inCOMBATE = true


	//Esse inimigo está em translado:
	if other.ALOCAMENTO_status!=noone {exit;}


	inCOMBATE = true;
	
	if other.inCOMBATE=noone
	or !instance_exists(other.inCOMBATE)
	{
		other.inCOMBATE=id;
	}
	else
	{
		if y>other.inCOMBATE.y
		other.inCOMBATE=id;
	}
