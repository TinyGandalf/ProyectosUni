{
    CalculadoraFrigorias

    Aplicación que ayuda al usuario a determinar la cantidad
    mínima y máxima de frigorías para enfriar una habitación.

    Datos de entrada:
        alto, ancho, profundidad: Real = Dimensiones de la habitación.
        maxTemp: Real = Temperatura máxima dentro de la habitación.
    
    Datos de salida:
        minFrigorias, maxFrigorias: Real = Cantidad mín. y máx. de frigorías necesarias.
}

program CalculadoraFrigorias;
uses SysUtils, Windows;

// Le pide al usuario que ingrese un valor real.
// Si la entrada es inválida, se lo vuelve a pedir hasta que coopere.
function AskForReal(question: string): real;
var
    response : string;
    validResponse: boolean;
begin
    write(#9 + question + ' : ');
    
    repeat
        readln(response);

        validResponse := TryStrToFloat(response, AskForReal);

        if not validResponse then
            write(#9'Entrada incorrecta. Ingrese un número válido (ej.: 37,5): ');
    until validResponse;
end;

// Programa
var
    alto, ancho, profundidad, maxTemp : real;
    volumen: real;
    minFrigorias, maxFrigorias: real;
begin
    SetConsoleOutputCP(CP_UTF8);    // Para mostrar acentos y simbolos especiales (Win10)

    writeln('Este programa le ayudará a determinar la cantidad mínima y máxima de frigorías para enfriar una habitación.');
    writeln('Ingrese los siguientes datos:');

    alto        := AskForReal('Ingrese el alto de la habitación');
    ancho       := AskForReal('Ingrese el ancho de la habitación');
    profundidad := AskForReal('Ingrese la profundidad de la habitación');
    maxTemp     := AskForReal('Ingrese la temperatura máxima de la habitación');

    if (maxTemp < 30) then
        begin
            minFrigorias := 36.15;
            maxFrigorias := 47.00;
        end
    else if (maxTemp > 40) then
        begin
            minFrigorias := 50.60;
            maxFrigorias := 65.80;
        end
    else
        begin
            minFrigorias := 43.40;
            maxFrigorias := 56.40;
        end;

    volumen := alto * ancho * profundidad;
    minFrigorias := minFrigorias * volumen;
    maxFrigorias := maxFrigorias * volumen;

    writeln('La cantidad mínima de frigorías necesarias es: ', minFrigorias:0:2);
    writeln('La cantidad máxima de frigorías necesarias es: ', maxFrigorias:0:2);

    readln();
end.
