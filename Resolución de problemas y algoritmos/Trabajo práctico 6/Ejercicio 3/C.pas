program C;
uses SysUtils, Windows;

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
  cantidad, num, i, primos : Integer;
begin
  primos := 0;
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese la cantidad de números que va a ingresar: ');
  ReadLn(cantidad);

  Write('Ingrese la secuencia de números: ');
  for i := 1 to cantidad do
    begin
      Read(num);

      if EsPrimo(num) then
        Inc(primos);
    end;

  WriteLn('Se ingresaron ', primos, ' números primos.');

  ReadLn();
  ReadLn();
end.

