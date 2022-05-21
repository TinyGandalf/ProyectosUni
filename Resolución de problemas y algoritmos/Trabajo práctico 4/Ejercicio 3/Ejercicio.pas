program Ejercicio3;

uses Windows;

var
    i, n, m, suma : LongInt;

begin
    // Inicializar n, m y suma == 0
    n := 0;
    m := 0;
    suma := 0;

    SetConsoleOutputCP(CP_UTF8);

    // Mientras n >= m:
    while n >= m do
        begin
            // Pedir al usuario que ingrese n y m
            write('Ingrese el número de inicio: ');
            readln(n);

            write('Ingrese el número final: ');
            readln(m);

            if (n >= m) then writeln('El número de inicio debe ser mayor que el final.');
        end;

    // Para i como un número desde n hasta m
    for i := n to m do
        // suma += i
        suma += i;

    // Mostrar suma al usuario
    writeln('La suma de los números desde ', n, ' hasta ', m, ' es: ', suma);
end.