program Ejercicio8;

uses Windows, SysUtils;

var
    n, i, cuenta : LongInt;
    respuesta, divisores : String;
    respuestaValida : Boolean;
begin
    n := 0;
    cuenta := 1;
    divisores := '1';

    SetConsoleOutputCP(CP_UTF8);

    // Pedir n al usuario
    repeat
        write('Ingrese un número natural: ');
        readln(respuesta);

        respuestaValida := TryStrToInt(respuesta, n);

        if not respuestaValida then
            writeln('La entrada no es válida.')
        else if (n < 1) then
            begin
                respuestaValida := false;
                writeln('Ingrese un número entero mayor a 1.');
            end;
    until respuestaValida;

    for i := 2 to (n div 2) do
        if (n mod i = 0) then
            begin
                divisores += Format(' %d', [i]);
                Inc(cuenta);
            end;
    
    if (n > 1) then
        begin
            divisores += Format(' %d', [n]);
            Inc(cuenta);
        end;
    
    writeln('Se encontraron ', cuenta, ' divisores para ', n);
    writeln('Estos son: ', divisores);
end.