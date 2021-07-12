/// @description Destroi filhos tbm



		//Filhos
			for(var i=0; i<N_FILHOS; i++)
			{
				if instance_exists(FILHO[i])
				  instance_destroy(FILHO[i]);
			}