program A;
uses SysUtils, Windows;

function EsBisiesto(a : Integer) : Boolean;
begin
  EsBisiesto := ((a mod 4 = 0) and (a mod 100 <> 0)) or (a mod 400 = 0);
end;

function FechaValida(dia, mes, ano : Integer) : Boolean; { jejeje ano }
begin
  FechaValida := true;

  case mes of
    1,3,5,7,8,10,12:
      FechaValida := dia <= 31;
    4,6,9,11:
      FechaValida := dia <= 30;
    2:
      if EsBisiesto(ano) then
        FechaValida := dia <= 29
      else
        FechaValida := dia <= 28;
    else
      FechaValida := false;
  end;
end;

var
  dia, mes, ano : Integer;
begin
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese una fecha en formato dia mes año (separados por espacios): ');
  Read(dia);
  Read(mes);
  ReadLn(ano);

  Write('La fecha ', FormatFloat('00', dia), '/', FormatFloat('00', mes), '/', ano);

  if FechaValida(dia, mes, ano) then
    WriteLn(' es válida.')
  else
    WriteLn(' NO es válida.');

  ReadLn();
end.

