test(bebida_es_alcoholica_cuando_posee_alguna_base_alcoholica, nondet) :-
	esAlcoholica(explosiva).

test(bebida_es_alcoholica_cuando_posee_algun_jarabe_alcoholico, nondet) :-
	esAlcoholica(irishCream).

test(esAlcoholica_es_inversible, 
	[set(Bebida == [irishCream, explosiva, extrema])]) :-
		esAlcoholica(Bebida).