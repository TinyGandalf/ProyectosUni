program Ejercicio7A;

uses Windows, SysUtils;

var
    n, i, suma : LongInt;
    respuesta : String;
    respuestaValida : Boolean;

begin
    n := 0;
    suma := 0;

    SetConsoleOutputCP(CP_UTF8);

    repeat
        write('Ingrese el número hasta donde desea sumar: ');
        readln(respuesta);

        respuestaValida := TryStrToInt(respuesta, n);

        if not respuestaValida then
            writeln('Ingrese un número natural válido.')
        else if (n < 0) then
            begin
                respuestaValida := false;
                writeln('El número debe ser positivo.');
            end
    until respuestaValida;

    for i := 1 to n do
        suma += i;

    writeln('La suma de los números naturales hasta ', n, ' es: ', suma);
end.