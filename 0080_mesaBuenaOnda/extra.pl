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
bebida(cafecito,[base(cafe,10)]).
bebida(conTodo,[base(cafe,5),jarabe(frutilla),base(helado,80),base(mouse,90),leche(10,10),jarabe(chocolate),base(helado,80),base(mouse,90),leche(10,10),jarabe(chocolate),base(helado,80),base(mouse,90),leche(10,10),jarabe(chocolate)]).
bebida(milkshake, [base(helado, 80), leche(5, 10)]).
bebida(cafeConLeche, [base(cafe, 5), leche(5, 10)]).

tieneAlcohol(baileys).
tieneAlcohol(tiaMaria).
tieneAlcohol(vodka).
tieneAlcohol(ron).



% 1)
ingrediente(Bebida, Ingrediente) :- 
	bebida(Bebida, Ingredientes),
	member(Ingrediente, Ingredientes).

% 2)
caloriasTotales(Bebida, CaloriasTotales) :-
	bebida(Bebida, _),
	findall(Calorias, 
		(ingrediente(Bebida, Ingrediente), calorias(Ingrediente, Calorias)),
		ListaCalorias),
	sumlist(ListaCalorias, CaloriasTotales).
	
calorias(base(Base, Cantidad), Calorias) :- 
	Base \= cafe,
	Calorias is Cantidad * 10.
calorias(base(cafe, Cantidad), Calorias) :- Calorias is Cantidad * 2.
calorias(jarabe(_), 10).
calorias(leche(CantGrasa, CantLeche), Calorias) :- Calorias is CantGrasa * CantLeche.

% 3)
bebidaLight(Bebida) :-
	esLiviana(Bebida),
	tieneIngredientesLivianos(Bebida).
	
esLiviana(Bebida) :-
	caloriasTotales(Bebida, Calorias),
	Calorias < 80.

tieneIngredientesLivianos(Bebida) :- 
	forall(ingrediente(Bebida, Ingrediente), esLiviano(Ingrediente)).
	
esLiviano(Ingrediente) :- 
	calorias(Ingrediente, Calorias),
	Calorias =< 15.

% 4)
esAlcoholica(Bebida) :- 
	ingrediente(Bebida, Ingrediente),
	esAlcoholico(Ingrediente).

esAlcoholico(base(Base,_)) :- tieneAlcohol(Base).
esAlcoholico(jarabe(Jarabe)) :- tieneAlcohol(Jarabe).

% 5)
tieneProblemitas(Cliente) :-
	esCliente(Cliente),
	bebidaLight(BebidaLight),
	not(pedido(Cliente, BebidaLight)),
	esProblematico(Cliente).
	
esProblematico(Cliente) :- 
	pedido(Cliente, Bebida),
	poseeMuchosIngredientes(Bebida).

esProblematico(Cliente) :- 
	forall(esAlcoholica(Bebida), pedido(Cliente, Bebida)).

poseeMuchosIngredientes(Bebida) :-
	bebida(Bebida, Ingredientes),
	length(Ingredientes, Cantidad),
	Cantidad > 10.
	
esCliente(Cliente) :-
	pedido(Cliente, _).
	
% 6)
buscaAprobacionDe(Interesado, Persona) :-
	pidieronAlgunaBebidaLightOAlcoholica(Interesado, Persona),
	Interesado \= Persona,
	forall(pedido(Interesado, Bebida), pedido(Persona, Bebida)).
	
pidieronAlgunaBebidaLightOAlcoholica(Interesado, Persona) :-
	pedido(Interesado, Bebida), 
	pedido(Persona, Bebida),
	esLightOAlcoholica(Bebida).
	
esLightOAlcoholica(Bebida) :-
	bebidaLight(Bebida).
	
esLightOAlcoholica(Bebida) :-
	esAlcoholica(Bebida).
	
% 7)
seLlevanBien(UnaPersona, OtraPersona) :-
	esCliente(UnaPersona),
	esCliente(OtraPersona),
	UnaPersona \= OtraPersona,
	not(buscanAprobacionDeMismaPersona(UnaPersona, OtraPersona)).

buscanAprobacionDeMismaPersona(UnaPersona, OtraPersona) :-
	buscaAprobacionDe(UnaPersona, Alguien),
	buscaAprobacionDe(OtraPersona, Alguien).
	