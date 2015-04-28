test(jarabe_de_frutilla_es_ingrediente_de_frappuccinoFrutilla, nondet) :-
	ingrediente(frappuccinoFrutilla, jarabe(frutilla)).

test(ingrediente_es_inversible_respecto_a_los_ingredientes, 
	set(Ingredientes == [base(vodka,100),base(ron,90),jarabe(frutilla)])) :-
        ingrediente(explosiva, Ingredientes).

test(ingrediente_es_inversible_respecto_a_la_bebida,
	[true(Bebida == explosiva), nondet]) :-
        ingrediente(Bebida, base(vodka,100)).