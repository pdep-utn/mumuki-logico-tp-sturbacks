Una nueva cadena de cafés sofisticados nos pidió hacer un sistema para manejar pedidos y bebidas en el paradigma lógico.


En nuestra base de conocimiento hay pedidos de clientes y se conoce la composición de las bebidas. También se sabe cuáles componentes son alcohólicos.

```
pedido(franco,explosiva).
pedido(lucas,dulceDeLecheLatte).
pedido(lucas,irishCream).
pedido(vero,frappuccinoFrutilla).
pedido(gus,mochaBlanco).
pedido(gus,irishCream).
pedido(gus,explosiva).

bebida(dulceDeLecheLatte,[base(cafe,100),leche(10,50)]).
bebida(frappuccinoFrutilla, [base(helado,80),jarabe(frutilla),jarabe(dulceDeLeche),leche(2,60)]).
bebida(irishCream,[base(cafe,90),jarabe(baileys),leche(3,50)]).
bebida(explosiva,[base(ron,90),base(vodka,100),jarabe(frutilla)]).

tieneAlcohol(baileys).
tieneAlcohol(tiaMaria).
tieneAlcohol(vodka).
tieneAlcohol(ron).
```
