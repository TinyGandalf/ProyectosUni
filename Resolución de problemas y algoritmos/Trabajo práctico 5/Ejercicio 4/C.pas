program C;
uses Windows;

var
  n, i, matches : Integer;
  numA, numB : Real;
begin
  matches := 0;
  SetConsoleOutputCP(CP_UTF8);

  repeat
    Write('Ingrese la cantidad de pares en la secuencia: ');
    ReadLn(n);

    if (n < 1) then
      begin
        WriteLn('La cantidad debe ser mayor que cero.');
      end;
  until (n >= 1);

  Write('Ingrese la secuencia de números, separada por espacios: ');

  for i := 1 to n do
    begin
      Read(numA);
      Read(numB);

      if (numA >= 0) and (numB < 0) then
        Inc(matches);
    end;

  if (matches > 0) then
    begin
      WriteLn('Hay ', matches, ' pares que encajan.');
    end
  else
    WriteLn('No hay pares que encajen.');

  ReadLn();  { Consumir CRLF }
  ReadLn();  { Pausar programa }
end.

