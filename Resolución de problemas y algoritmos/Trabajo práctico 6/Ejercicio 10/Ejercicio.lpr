program Ejercicio;
uses Windows;

procedure MaxMinDigito(numero : Integer; var max, min : Integer);
var
  digito : Integer;
begin
  numero := Abs(numero);
  max := 0;
  min := 9;

  repeat
    digito := numero mod 10;

    if (digito > max) then
      max := digito;
    if (digito < min) then
      min := digito;

    numero := numero div 10;
  until (numero = 0);
end;

var
  numero, max, min : Integer;
begin
  SetConsoleOutputCP(CP_UTF8);

  Write('Ingrese un número: ');
  ReadLn(numero);

  MaxMinDigito(numero, max, min);

  WriteLn('El dígito máximo fue: ', max);
  WriteLn('El dígito mínimo fue: ', min);

  ReadLn();
end.

