test(es_ingrediente_si_pertenece_a_la_lista_de_ingredientes_de_la_bebida, nondet) :-
	ingrediente(frappuccinoFrutilla, jarabe(frutilla)).

test(ingrediente_es_inversible_respecto_a_los_ingredientes,
	set(Ingredientes == [base(vodka,100),base(ron,90),jarabe(frutilla)])) :-
        ingrediente(explosiva, Ingredientes).

test(ingrediente_es_inversible_respecto_a_la_bebida,
	[true(Bebida == explosiva), nondet]) :-
        ingrediente(Bebida, base(vodka,100)).