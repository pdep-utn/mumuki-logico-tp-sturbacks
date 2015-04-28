%%%%%% Base de conocimiento %%%%
pedido(vero,frappuccinoFrutilla).
pedido(vero, light).
pedido(gus,irishCream).
pedido(gus,explosiva).
pedido(gus,extrema).
pedido(gus,frappuccinoFrutilla).
pedido(alf,conTodo).
pedido(franco,light).
pedido(franco,frappuccinoFrutilla).
pedido(franco,irishCream).
pedido(franco,explosiva).
pedido(franco,extrema).
pedido(franco,conTodo).
pedido(nico, frappuccinoFrutilla).
pedido(nico, dulceDeLecheLatte).
pedido(nico, light).

bebida(dulceDeLecheLatte,[base(cafe,100),leche(10,50)]).
bebida(frappuccinoFrutilla,[base(helado,80),jarabe(frutilla),jarabe(dulceDeLeche),leche(2,60)]).
bebida(irishCream,[base(cafe,90),jarabe(baileys),leche(3,50)]).
bebida(explosiva,[base(ron,90),base(vodka,100),jarabe(frutilla)]).
bebida(extrema,[base(cafe,100),base(helado,80),base(ron,90),leche(10,10),jarabe(chocolate)]).
bebida(light,[base(cafe,5),jarabe(frutilla)]).
bebida(chocoLight,[leche(10,1),jarabe(chocolate)]).
bebida(cafecito,[base(cafe,10)]).
bebida(conTodo,[base(cafe,5),jarabe(frutilla),base(helado,80),base(mouse,90),leche(10,10),jarabe(chocolate),base(helado,80),base(mouse,90),leche(10,10),jarabe(chocolate),base(helado,80),base(mouse,90),leche(10,10),jarabe(chocolate)]).
bebida(milkshake, [base(helado, 80), leche(5, 10)]).
bebida(cafeConLeche, [base(cafe, 5), leche(5, 10)]).

tieneAlcohol(baileys).
tieneAlcohol(tiaMaria).
tieneAlcohol(vodka).
tieneAlcohol(ron).