program E;
uses Windows;

function EsBisiesto(a : Integer) : Boolean;
begin
  EsBisiesto := ((a mod 4 = 0) and (a mod 100 <> 0)) or (a mod 400 = 0);
end;

var
  a : Integer;
begin
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese un año: ');
  ReadLn(a);

  if EsBisiesto(a) then
    WriteLn('El año ', a, ' SI ES BISIESTO.')
  else
    WriteLn('El año ', a, ' NO ES BISIESTO.');

  ReadLn();
end.

