program Ejercicio;
uses Windows;

procedure ImprimirRenglon(digito : Integer);
var
  piso : Integer;
begin
  for piso := 1 to (digito - 1) do
    begin
      Write(piso, ' ');
    end;

  Write(digito);

  for piso := (digito - 1) downto 1 do
    begin
      Write(' ', piso);
    end;

  WriteLn();
end;

var
  pisos, piso : Integer;
begin
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese la cantidad de pisos de la pirámide: ');
  ReadLn(pisos);

  for piso := 1 to pisos do
    ImprimirRenglon(piso);

  ReadLn();
end.

