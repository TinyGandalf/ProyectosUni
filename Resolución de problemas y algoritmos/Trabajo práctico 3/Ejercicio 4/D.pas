{
    Algorítmo:

    DE: year: entero
    DS: isLeapYear: lógico

    Comienzo
        isLeapYear := (year mod 400 = 0) o 
                      ((year mod 4 = 0) y (year mod 100 <> 0))
    Fin
}

program EjD;

var
    year : integer;
    isLeapYear: boolean;
begin
    year := 2020;

    isLeapYear := (year mod 400 = 0) or ((year mod 4 = 0) and (year mod 100 <> 0));
    
    writeln('Is it leap year?: ', isLeapYear);

    readln();
end.

{
    TRAZA:
    | year | isLeapYear |
    | 2000 |    true    |
    | 2020 |    true    |
    | 2022 |   false    |
    | 2100 |   false    |
}
