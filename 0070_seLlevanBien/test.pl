test(no_se_llevan_bien_porque_buscan_aprobacion_de_la_misma_persona, fail):-
	seLlevanBien(gus, vero).
	
test(se_llevan_bien_porque_no_buscan_aprobacion_de_la_misma_persona, nondet):-
	seLlevanBien(franco, vero).
	
test(seLlevanBien_es_inversible_para_su_primer_aridad,
	[set(Cliente == [gus, vero, franco, nico])]):-
		seLlevanBien(Cliente,alf).
	
test(seLlevanBien_es_inversible_para_su_segunda_aridad,
	[set(Cliente == [gus, vero, franco, nico])]):-
		seLlevanBien(alf,Cliente).
	
test(seLlevanBien_no_es_reflexiva, fail):-
	seLlevanBien(X,X).
	
test(seLlevanBien_es_simetrica, nondet):-
	seLlevanBien(X,Y),
	seLlevanBien(Y,X).
	