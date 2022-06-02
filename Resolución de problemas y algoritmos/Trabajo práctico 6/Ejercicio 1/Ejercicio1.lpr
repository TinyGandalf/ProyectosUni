program Ejercicio1;
uses Windows;

function Invertir(num : Integer) : Integer;
var
  inv : Integer;
begin
  inv := 0;
  while num > 0 do
    begin
      inv := inv * 10 + (num mod 10);
      num := num div 10;
    end;

  Invertir := inv;
end;

var
  num, inv : Integer;
begin
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese un número: ');
  ReadLn(num);

  inv := Invertir(num);

  if num = inv then
    WriteLn('El número ', num, ' ES CAPICÚA')
  else
    WriteLn('El número ', num, ' NO ES CAPICÚA');

  ReadLn();
end.

