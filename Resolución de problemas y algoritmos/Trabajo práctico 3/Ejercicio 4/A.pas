{
    Algorítmo:

    DE: a, b: reales
    DS: esMayorOIgual: lógico

    Comienzo
        esMayorOIgual := a >= b
    Fin
}

program EjA;

var
    a, b : real;
    esMayorOIgual: boolean;
begin
    a := 2;
    b := 4;

    esMayorOIgual := a >= b;

    if esMayorOIgual then
        writeln('A es mayor o igual a B.')
    else
        writeln('A NO es mayor o igual a B.');

    readln();
end.

{
    TRAZA:
    | a | b | esMayorOIgual |
    | 4 | 4 |     true      |
    | 2 | 4 |    false      |
    | 5 | 4 |     true      |
}