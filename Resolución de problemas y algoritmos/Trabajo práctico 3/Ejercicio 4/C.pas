{
    Algorítmo:

    DE: nota: caractér
    DS: resultado: texto

    Comienzo
        En caso de que nota sea:
            'A' o 'B': resultado := 'Aprobado'
            'C': resultado := 'Recupera'
            'D': resultado := 'Perdido'
    Fin
}

program EjC;

var
    nota : char;
    resultado: string;
begin
    nota := 'D';

    case nota of
        'A', 'B': resultado := 'Aprobado';
        'C': resultado := 'Recupera';
        'D': resultado := 'Perdido';
    end;
    
    writeln('Resultado: ', resultado);

    readln();
end.

{
    TRAZA:
    | nota | respuesta |
    |   A  |  Aprobado |
    |   B  |  Aprobado |
    |   C  |  Recupera |
    |   D  |   Perdido |
}

