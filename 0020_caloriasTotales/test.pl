pedido(vero,frappuccinoFrutilla).
pedido(gus,irishCream).
pedido(gus,explosiva).
pedido(gus,extrema).
pedido(alf,conTodo).
pedido(franco,light).
pedido(franco,irishCream).
pedido(franco,explosiva).
pedido(franco,extrema).
pedido(franco,conTodo).

bebida(dulceDeLecheLatte,[base(cafe,100),leche(10,50)]).
bebida(frappuccinoFrutilla,[base(helado,80),jarabe(frutilla),jarabe(dulceDeLeche),leche(2,60)]).
bebida(irishCream,[base(cafe,90),jarabe(baileys),leche(3,50)]).
bebida(explosiva,[base(ron,90),base(vodka,100),jarabe(frutilla)]).
bebida(extrema,[base(cafe,100),base(helado,80),base(ron,90),leche(10,10),jarabe(chocolate)]).
bebida(light,[base(cafe,5),jarabe(frutilla)]).
bebida(cafesito,[base(cafe,10)]).
bebida(conTodo,[base(cafe,5),jarabe(frutilla),base(helado,80),base(mouse,90),leche(10,10),jarabe(chocolate),base(helado,80),base(mouse,90),leche(10,10),jarabe(chocolate),base(helado,80),base(mouse,90),leche(10,10),jarabe(chocolate)]).

tieneAlcohol(baileys).
tieneAlcohol(tiaMaria).
tieneAlcohol(vodka).
tieneAlcohol(ron).

% 1)
ingrediente(Bebida, Ingrediente) :- 
	bebida(Bebida, Ingredientes),
	member(Ingrediente, Ingredientes).


test(calorias_de_base_de_cafe_de_10_son_20) :-
        calorias(base(cafe, 10), 20).

test(calorias_de_base_de_ron_de_10_son_100, nondet) :-
        calorias(base(ron, 10), 100).

test(calorias_del_jarabe_son_10) :-
        calorias(jarabe(_), 10).

test(calorias_de_leche_de_5_con_grasa_10_son_50) :-
        calorias(leche(5, 10), 50).

test(caloriasTotale_de_extrema_son_2010) :-
        caloriasTotales(extrema, 2010).
		
test(caloriasTotales_es_inversible_respecto_a_las_calorias, 
	true(Calorias == 2010)) :-
        caloriasTotales(extrema, Calorias).
		
test(caloriasTotales_es_inversible_respecto_a_la_bebida, nondet,
	true(Bebida == extrema)) :-
        caloriasTotales(Bebida, 2010).