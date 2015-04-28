test(bebida_no_es_light_cuando_sus_calorias_totales_son_mayores_que_80,	fail) :-
        bebidaLight(extrema).

test(bebida_no_es_light_cuando_algun_ingrediente_posee_calorias_mayores_a_15, fail) :-
        bebidaLight(cafeConLeche).
		
test(bebidaLight_es_inversible, 
	[true(Bebida == light), nondet]) :-
        bebidaLight(Bebida).