program Ejercicio2B;

uses Windows;

var
    n, impares : LongInt;

begin
    // Inicializar n e impares = 0
    n := 0;
    impares := 0;

    SetConsoleOutputCP(CP_UTF8);

    // Pedir n al usuario
    write('Ingrese un número: ');
    readln(n);

    // Convertir n a positivo
    if n < 0 then
      n := -n;

    // Mientras n sea mayor a 0:
    while n > 0 do
        begin
            // dígito := n mod 10
            // Si el dígito es impar:
            if ((n mod 10) mod 2 <> 0) then
                // Sumar 1 a impares.
                impares += 1;

            n := n div 10;
        end;

    // Mostrar impares al usuario
    writeln('El número tiene ', impares, ' dígitos impares.');
end.