
/// @function                 ds_stack_start(item [, item_1, ... item_15]);
/// @description              Cria um ds_stack_create com os itens listados

function ds_stack_start()
{
	
	var novo_ds_stack = ds_stack_create();
	
	
	for (var ii = 0; ii<argument_count; ii++)
	{
		if (argument[ii]!=undefined) {ds_stack_push(novo_ds_stack, argument[ii]);}
	}
	
	
	
	return novo_ds_stack;

}

function ds_stack_get(id)
{
	var RETORNO = ds_stack_top(id)
	ds_stack_pop(id)
	
	return RETORNO;
}
