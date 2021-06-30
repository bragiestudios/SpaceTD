/// @description distancia entre 2 pontos subdividida, para efeito suave
/// @param xATUAL
/// @param xDESTINO
/// @param Speed
function dis_anima(argument0, argument1, argument2) {

		var _x1  =  argument0;
		var _x2  =  argument1;
		var _Div =  argument2;
		var _return = _x2;
	
	
		if abs(_x1-_x2)>=1
		{
			_return = _x1-((_x1-_x2)*(_Div/4));
		}
	

	return _return;


}
