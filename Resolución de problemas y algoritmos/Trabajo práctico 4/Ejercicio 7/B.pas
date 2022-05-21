program Ejercicio7B;

uses Windows, SysUtils;

var
    i, n, producto : LongInt;
    respuesta : String;
    respuestaValida : Boolean;

begin
    n := 0;         // 8
    producto := 1;  // 1
                    // 2
    SetConsoleOutputCP(CP_UTF8);

    // Pedir n al usuario y checkear que 0 > n >= 18 (para evitar overflow)
    repeat
        write('Ingrese un número natural menor o igual a 18: ');
        readln(respuesta);

        respuestaValida := TryStrToInt(respuesta, n);

        if not respuestaValida then
            writeln('La entrada no es válida.')
        else if (n < 1) or (n > 18) then
            begin
                respuestaValida := false;
                writeln('La entrada debe ser un número entero mayor a 0 y menor o igual a 18.')
            end;
    until respuestaValida;

    for i := 2 to n do
        if (i mod 2 = 0) then
            producto *= i;
    
    writeln('El producto de los números naturales pares hasta ', n, ' es: ', producto);
end.