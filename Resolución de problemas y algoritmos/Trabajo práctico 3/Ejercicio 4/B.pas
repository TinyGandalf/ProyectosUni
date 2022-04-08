{
    Algorítmo:

    DE: a, b, c: reales
    DS: resultado: lógico

    Comienzo
        Si (a - b) > c
        Entonces
            resultado := a * b
        Sino
            resultado := a / b
    Fin
}

program EjB;

var
    a, b, c : real;
    resultado: real;
begin
    a := 6;
    b := 2;
    c := 3;

    if (a - b) > c then
        resultado := a * b
    else
        resultado := a / b;
    
    writeln('Resultado: ', resultado:0:2);

    readln();
end.

{
    TRAZA:
    | a  | b | c | respuesta |
    | 2  | 4 | 5 |    0.50   |
    | 6  | 2 | 5 |    3.00   |
    | 10 | 4 | 5 |   40.00   |
    | 2  | 4 | 3 |    0.50   |
    | 6  | 2 | 3 |   12.00   |
    | 10 | 4 | 3 |   40.00   |
}
