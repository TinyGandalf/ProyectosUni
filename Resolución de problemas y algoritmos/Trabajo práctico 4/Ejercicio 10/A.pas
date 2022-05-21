program MayorDigito;

uses Windows, SysUtils;

var
    n, digito, maxDigito : LongInt;
    respuesta : String;
    respuestaValida : Boolean;
begin
    // Inicializar n, digito y maxDigito
    n := 0;
    digito := 0;
    maxDigito := 0;

    SetConsoleOutputCP(CP_UTF8);

    // Pedir n al usuario
    repeat
        write('Ingrese un número entero: ');
        readln(respuesta);

        respuestaValida := TryStrToInt(respuesta, n);

        if not respuestaValida then
            writeln('La entrada no es válida. Asegúrese de ingresar un número entero.');
    until respuestaValida;

    n := Abs(n);

    while (n > 0) do
        begin
            digito := (n mod 10);

            if (digito > maxDigito) then
                maxDigito := digito;

            n := n div 10;  // Avanzar al siguiente dígito
        end;

    writeln('El dígito máximo es ', maxDigito);
    readln;
end.
