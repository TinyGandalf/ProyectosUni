{
    Algorítmo:

    DE: nota: entero
    DS: resultado: texto

    Comienzo
        Ingresar nota

        Si la nota no es un número del 0 al 10,
        volver a pedírsela
        
        En caso de que nota sea:
            0,1,2,3: resultado := 'Aplazado'
            4,5,6:   resultado := 'Aprobado'
            7,8:     resultado := 'Distinguido'
            9:       resultado := 'Excelente'
            10:      resultado := 'Sobresaliente'
        
        Mostrar resultado
    Fin
}

program Ej6;
uses SysUtils, Windows;

var
    nota : longint;
    resultado: string;
    textoIngresado: string;
    esValido: boolean;
begin
    SetConsoleOutputCP(CP_UTF8);    // Para mostrar acentos y simbolos especiales (Win10)
    write('Ingrese su nota: ');
    
    repeat
        readln(textoIngresado);

        esValido := TryStrToInt(textoIngresado, nota);  // Chequear que sea un número válido.
        
        if esValido then
            esValido := (nota >= 0) and (nota <= 10);   // Chequear que esté en [0;10].

        if not esValido then
            write('Entrada incorrecta. Ingrese un número válido del 0 al 10: ');
    until esValido;

    case nota of
        0..3: resultado := 'Aplazado';
        4..6: resultado := 'Aprobado';
        7..8: resultado := 'Distinguido';
        9:    resultado := 'Excelente';
        10:   resultado := 'Sobresaliente';
    end;

    writeln('Su resultado es: ', resultado);

    readln();
end.

