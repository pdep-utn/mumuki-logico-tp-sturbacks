test(cliente_que_pidio_una_bebida_con_mas_de_10_ingredientes_tiene_problemitas, nondet) :-
	tieneProblemitas(alf).

test(cliente_que_pidio_todas_las_bebidas_alcoholicas_del_bar_tiene_problemitas,	nondet) :-
	tieneProblemitas(gus).
		
test(cliente_que_pidio_algo_light_no_tiene_problemitas,	fail) :-
	tieneProblemitas(franco).

test(tieneProblemitas_es_inversible,
	[set(Cliente == [alf, gus])]) :-
		tieneProblemitas(Cliente).