program C;
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
  num : Integer;
begin
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese un número: ');
  ReadLn(num);

  if EsPrimo(num) then
    WriteLn('El número ', num, ' ES PRIMO')
  else
   WriteLn('El número ', num, ' NO ES PRIMO');

  ReadLn();
end.

