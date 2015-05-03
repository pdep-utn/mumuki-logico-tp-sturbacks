Una nueva cadena de cafés sofisticados nos pidió hacer un sistema para manejar pedidos y bebidas en el paradigma lógico.

En nuestra base de conocimiento hay pedidos de clientes y se conoce la composición de las bebidas. También se sabe cuáles componentes son alcohólicos. Por ejemplo:

```
pedido(franco,explosiva).
pedido(lucas,dulceDeLecheLatte).
%% etc ...

bebida(dulceDeLecheLatte, [base(cafe,100),leche(10,50)]).
bebida(explosiva,[base(ron,90),base(vodka,100),jarabe(frutilla)]).
%% etc ...

tieneAlcohol(baileys).
tieneAlcohol(tiaMaria).
%% etc
```
