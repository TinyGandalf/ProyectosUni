program D;
uses Windows;

function EsPrimo(numero : Integer) : Boolean;
var
  i, raiz : Integer;
begin
  EsPrimo := true;
  numero := Abs(numero);
  raiz := Round(Sqrt(numero));

  for i := 2 to raiz do
    if (numero mod i) = 0 then
      begin
        EsPrimo := false;
        break;
      end;
end;

var
  max, i, primos : Integer;
begin
  primos := 0;
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese el número hasta que desea buscar: ');
  ReadLn(max);

  for i := 2 to max do
    if EsPrimo(i) then
      begin
        Inc(primos);
        WriteLn(i);
      end;

  WriteLn('Se encontraron ', primos, ' primos.');
  ReadLn();
end.

