test(la_mesa_tiene_gente_que_no_se_lleva_bien_en_el_medio_no_es_buena_onda, fail):-
	mesaBuenaOnda([franco, alf, gus, vero, nico]).
	
test(la_mesa_tiene_gente_que_no_se_lleva_bien_en_los_extremos_no_es_buena_onda, fail):-
	mesaBuenaOnda([gus, franco, alf, nico, vero]).	
	
test(la_mesa_no_tiene_gente_no_es_buena_onda, fail):-
	mesaBuenaOnda([]).	
	
test(la_mesa_tiene_poca_gente_no_es_buena_onda, fail):-
	mesaBuenaOnda([alf]).	
	
test(es_mesa_buena_onda_si_los_que_no_se_llevan_bien_no_estan_juntos, nondet):-
	mesaBuenaOnda([nico, vero, alf, gus, franco]).	