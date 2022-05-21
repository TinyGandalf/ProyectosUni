program Ejercicio2A;

var
    digitos, ordenDeMagnitud : LongInt;
    n : LongInt;

begin
    n := 0;
    digitos := 1;
    ordenDeMagnitud := 10;

    write('Ingrese un numero: ');
    readln(n);

    if n < 0 then
        n := -n;

    while (n >= ordenDeMagnitud) do
        begin
            digitos += 1;
            ordenDeMagnitud *= 10;
        end;

    writeln('Su número tiene ', digitos, ' digitos.');
end.