test(cliente_que_pidio_todo_lo_que_pidio_otro_y_algo_era_light, nondet):-
	buscaAprobacionDe(vero, nico).
	
test(cliente_que_pidio_todo_lo_que_pidio_otro_y_algo_era_alcoholico, nondet):-
	buscaAprobacionDe(gus, franco).

test(cliente_que_pidio_todo_lo_que_pidio_otro_y_ninguno_era_light_o_alcoholico, fail):-
	buscaAprobacionDe(alf, franco).
	
test(cliente_que_pidio_algo_pero_no_todo_lo_que_pidio_otro_y_ese_algo_era_light, fail):-
	buscaAprobacionDe(nico, franco).
	
test(buscaAprobacionDe_es_inversible_para_su_primer_aridad,
	[set(Cliente == [gus, vero])]):-
		buscaAprobacionDe(Cliente,franco).
	
test(buscaAprobacionDe_es_inversible_para_su_segunda_aridad,
	[set(Cliente == [franco, nico])]):-
		buscaAprobacionDe(vero,Cliente).
		
test(buscaAprobacionDe_no_es_reflexiva, fail):-
	buscaAprobacionDe(X,X).