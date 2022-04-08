{
    CalculadoraTotal

    Aplicación que ayuda al usuario a determinar el total a facturar
    dependiendo del subtotal y aplicando descuentos dependiendo del
    método de pago.

    Datos de entrada:
        subtotal: Real = Monto previo a los descuentos.
        metodoDePago: Texto = 'E' para Efectivo o 'T' para Tarjeta.
    
    Datos de salida:
        descuento: Real = El descuento que se usará para calcular el total.
        total: Real = El monto total a pagar.
}

program CalculadoraTotal;
uses SysUtils, Windows;

var
    subtotal: real;
    metodoDePago: string;

    response: string;
    validResponse: boolean;

    descuento, total : real;
begin
    SetConsoleOutputCP(CP_UTF8);    // Para mostrar acentos y símbolos (Win10)

    writeln('Este programa le ayudará a determinar el total a facturar ',
            'dependiendo del subtotal y aplicando descuentos dependiendo del ',
            'método de pago.');

    // Pedir subtotal
    write('Ingrese el monto subtotal: ');
    
    repeat
        readln(response);

        validResponse := TryStrToFloat(response, subtotal);

        if validResponse then
            validResponse := subtotal > 0;

        if not validResponse then
            write('Entrada incorrecta. Ingrese un monto válido (ej.: 37,5): ');
    until validResponse;

    // Pedir método de pago
    write('Ingrese el método de pago: ');
    
    repeat
        readln(response);

        validResponse := (response = 'E') or (response = 'T') or (response = 'O');

        if not validResponse then
            write('Entrada incorrecta. ',
                  'Ingrese E para Efectivo, T para Tarjeta u O para Otro: ');
    until validResponse;

    metodoDePago := response;

    case metodoDePago of
        'E': 
            begin
                descuento := subtotal * 0.15;
                writeln('Recibió un 15% de descuento por pagar con efectivo.');
            end;
        'T': 
            if (subtotal > 1000) then
                begin
                    descuento := subtotal * 0.10;
                    writeln('Recibió un 10% de descuento por pagar con tarjeta.');
                end
            else
                begin
                    descuento := 0.00;
                    writeln('No recibió un descuento por no superar $1000.');
                end;
        else    // Debería ser 'O', pero lo dejamos como else por las dudas.
            begin
                descuento := 0.00;
                writeln('No recibió un descuento por pagar con otro método.');
            end;
    end;

    total := subtotal - descuento;

    writeln('Descuento:'#9#9'$', descuento:7:2);
    writeln('El total a facturar es:'#9'$', total:7:2);

    write(#7); readln();
end.
