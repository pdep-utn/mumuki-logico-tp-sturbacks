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


% Mockeo el 1
ingrediente(dulceDeLecheLatte,base(cafe, 100)).
ingrediente(dulceDeLecheLatte,leche(10, 50)).
ingrediente(frappuccinoFrutilla,base(helado, 80)).
ingrediente(frappuccinoFrutilla,jarabe(frutilla)).
ingrediente(frappuccinoFrutilla,jarabe(dulceDeLeche)).
ingrediente(frappuccinoFrutilla,leche(2, 60)).
ingrediente(irishCream,base(cafe, 90)).
ingrediente(irishCream,jarabe(baileys)).
ingrediente(irishCream,leche(3, 50)).
ingrediente(explosiva,base(ron, 90)).
ingrediente(explosiva,base(vodka, 100)).
ingrediente(explosiva,jarabe(frutilla)).
ingrediente(extrema,base(cafe, 100)).
ingrediente(extrema,base(helado, 80)).
ingrediente(extrema,base(ron, 90)).
ingrediente(extrema,leche(10, 10)).
ingrediente(extrema,jarabe(chocolate)).
ingrediente(light,base(cafe, 5)).
ingrediente(light,jarabe(frutilla)).
ingrediente(chocoLight,leche(10, 1)).
ingrediente(chocoLight,jarabe(chocolate)).
ingrediente(cafecito,base(cafe, 10)).
ingrediente(conTodo,base(cafe, 5)).
ingrediente(conTodo,jarabe(frutilla)).
ingrediente(conTodo,base(helado, 80)).
ingrediente(conTodo,base(mouse, 90)).
ingrediente(conTodo,leche(10, 10)).
ingrediente(conTodo,jarabe(chocolate)).
ingrediente(conTodo,base(helado, 80)).
ingrediente(conTodo,base(mouse, 90)).
ingrediente(conTodo,leche(10, 10)).
ingrediente(conTodo,jarabe(chocolate)).
ingrediente(conTodo,base(helado, 80)).
ingrediente(conTodo,base(mouse, 90)).
ingrediente(conTodo,leche(10, 10)).
ingrediente(conTodo,jarabe(chocolate)).
ingrediente(milkshake,base(helado, 80)).
ingrediente(milkshake,leche(5, 10)).
ingrediente(cafeConLeche,base(cafe, 5)).
ingrediente(cafeConLeche,leche(5, 10)).

% Mockeo el 2
caloriasTotales(dulceDeLecheLatte,700).
caloriasTotales(frappuccinoFrutilla,940).
caloriasTotales(irishCream,340).
caloriasTotales(explosiva,1910).
caloriasTotales(extrema,2010).
caloriasTotales(light,20).
caloriasTotales(chocoLight,20).
caloriasTotales(cafecito,20).
caloriasTotales(conTodo,5450).
caloriasTotales(milkshake,850).
caloriasTotales(cafeConLeche,60).

% Mockeo el 3
bebidaLight(light).
bebidaLight(chocoLight).

% Mockeo el 4
esAlcoholica(irishCream).
esAlcoholica(explosiva).
esAlcoholica(extrema).

% Mockeo el 5
tieneProblemitas(gus).
tieneProblemitas(alf).
tieneProblemitas(franco).