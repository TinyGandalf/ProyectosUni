program B;
uses Windows;

function Potencia(base, exponente : Integer) : Integer;
begin
  if exponente = 0 then
    Potencia := 1
  else
    Potencia := base * Potencia(base, exponente-1);
end;

var
  num, exp, pot : Integer;
begin
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese un número: ');
  ReadLn(num);
  Write('Ingrese un exponente: ');
  ReadLn(exp);

  pot := Potencia(num, exp);

  WriteLn(num, '^', exp, ' = ', pot);

  ReadLn();
end.

