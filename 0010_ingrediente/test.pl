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


test(jarabe_de_frutilla_es_ingrediente_de_frappuccinoFrutilla, nondet) :-
	ingrediente(frappuccinoFrutilla, jarabe(frutilla)).

test(ingrediente_es_inversible_respecto_a_los_ingredientes, 
	set(Ingredientes == [base(vodka,100),base(ron,90),jarabe(frutilla)])) :-
        ingrediente(explosiva, Ingredientes).

test(ingrediente_es_inversible_respecto_a_la_bebida,
	true(Bebida == explosiva), nondet) :-
        ingrediente(Bebida, base(vodka,100)).