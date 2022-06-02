program A;
uses Windows;

function Factorial(numero : Integer) : Integer;
begin
  if numero = 0 then
    Factorial := 1
  else
    Factorial := numero * Factorial(numero-1);
end;

var
  num, fact : Integer;
begin
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese un número: ');
  ReadLn(num);

  fact := Factorial(num);

  WriteLn(num, '!: ', fact);

  ReadLn();
end.

