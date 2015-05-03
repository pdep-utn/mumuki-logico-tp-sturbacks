test(calorias_del_cafe_es_el_doble_que_su_cantidad) :-
        caloriasTotales(cafecito, 20).

test(calorias_de_base_que_no_sea_cafe_es_su_cantidad_por_10) :-
        caloriasTotales(milkshake, 850).

test(calorias_del_jarabe_es_10) :-
        caloriasTotales(light, 20).

test(calorias_de_leche_es_cant_leche_por_cant_grasa) :-
        caloriasTotales(dulceDeLecheLatte, 700).

test(caloriasTotales_es_la_suma_de_las_calorias_de_los_ingredientes) :-
        caloriasTotales(extrema, 2010).

test(caloriaTotales_es_inversible_respecto_a_las_calorias,
	true(Calorias == 2010)) :-
        caloriasTotales(extrema, Calorias).

test(caloriasTotales_es_inversible_respecto_a_la_bebida,
	[true(Bebida == extrema), nondet]) :-
        caloriasTotales(Bebida, 2010).