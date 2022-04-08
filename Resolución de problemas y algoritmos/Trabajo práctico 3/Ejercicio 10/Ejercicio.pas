{
    CalculadoraEstacionamiento

    Aplicación que ayuda al usuario de un estacionamiento a determinar el total
    a pagar dependiendo de la cantidad de horas y del piso.

    Datos de entrada:
        horas: Real = Cantidad de horas permanecidas.
        piso: Texto = '1', '2' o '3'.
    
    Datos de salida:
        total: Real = El monto total a pagar.
}

program CalculadoraEstacionamiento;
uses SysUtils, Windows;

var
    horas: real;
    piso: string;

    response: string;
    costoPorHora: real;
    validResponse: boolean;

    total : real;
begin
    SetConsoleOutputCP(CP_UTF8);    // Para mostrar acentos y símbolos (Win10)

    writeln('Este programa le ayudará a determinar el total ',
            'a pagar dependiendo de la cantidad de horas y del piso.');

    // Pedir horas
    write('Ingrese la cantidad de horas: ');
    
    repeat
        readln(response);

        validResponse := TryStrToFloat(response, horas);

        if validResponse then
            validResponse := horas > 0;

        if not validResponse then
            write('Entrada incorrecta. Ingrese una cantidad válida (ej.: 37,5): ');
    until validResponse;

    // Pedir piso
    write('Ingrese el número de piso (1, 2 o 3): ');
    
    repeat
        readln(response);

        validResponse := (response = '1') or (response = '2') or (response = '3');

        if not validResponse then
            write('Entrada incorrecta. Ingrese un número de piso válido (1, 2 o 3): ');
    until validResponse;

    piso := response;

    case piso of
        '1': costoPorHora := 100;
        '2': costoPorHora := 80;
        '3': costoPorHora := 60;
    end;

    if (horas > 5) then
        total := costoPorHora * 5
    else
        total := costoPorHora * horas;

    writeln('El total a pagar es: $', total:6:2);

    write(#7); readln();
end.
