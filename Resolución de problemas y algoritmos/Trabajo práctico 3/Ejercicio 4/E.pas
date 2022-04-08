{
    Algorítmo:

    DE: month, year: entero
    DS: days: entero

    Comienzo
        isLeapYear := (year mod 400 = 0) o 
                      ((year mod 4 = 0) y (year mod 100 <> 0))

        En caso de que month sea:
            1, 3, 5, 7, 8, 10, 12: days := 31
            4, 6, 9, 11: days := 30
            2:
                Si isLeapYear es verdad
                Entonces days := 29
                Sino days := 28
    Fin
}

program EjD;

var
    month, year : integer;
    days : integer;
    isLeapYear : boolean;
begin
    month := 2;
    year := 2020;

    isLeapYear := (year mod 400 = 0) or ((year mod 4 = 0) and (year mod 100 <> 0));
    
    case month of
        1, 3, 5, 7, 8, 10, 12:
            days := 31;
        4, 6, 9, 11:
            days := 30;
        2:
            if isLeapYear then
                days := 29
            else
                days := 28;
    end;

    writeln('Days in that month: ', days);

    readln();
end.

{
    TRAZA:
    | year | month | days |
    | 2000 |   2   |  29  |
    | 2000 |   3   |  31  |
    | 2000 |   4   |  30  |
    | 2020 |   2   |  29  |
    | 2020 |   3   |  31  |
    | 2020 |   4   |  30  |
    | 2022 |   2   |  28  |
    | 2022 |   3   |  31  |
    | 2022 |   4   |  30  |
    | 2100 |   2   |  28  |
    | 2100 |   3   |  31  |
    | 2100 |   4   |  30  |
}
