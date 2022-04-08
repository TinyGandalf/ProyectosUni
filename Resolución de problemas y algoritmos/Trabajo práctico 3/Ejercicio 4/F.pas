{
    Algorítmo:

    DE: clase: caractér, subtotal: real
    DS: total: real

    Comienzo
        En caso de que clase sea:
            'A': descuento := 50%
            'B': descuento := 35%
            'C': descuento :=  0%
        
        total := subtotal * (1 - descuento)
    Fin
}

program EjC;

var
    clase : char;
    subtotal : real;
    descuento, total: real;
begin
    clase := 'C';
    subtotal := 100.0;

    case clase of
        'A': descuento := 0.50;
        'B': descuento := 0.35;
        'C': descuento := 0.00;
    end;
    
    total := subtotal * (1 - descuento);

    writeln('Total a pagar: ', total:0:2);

    readln();
end.

{
    TRAZA:
    | clase | subtotal | descuento |  total  |
    |   A   |    100   |    0.50   |  50.00  |
    |   B   |    100   |    0.35   |  65.00  |
    |   C   |    100   |    0.00   | 100.00  |
}

