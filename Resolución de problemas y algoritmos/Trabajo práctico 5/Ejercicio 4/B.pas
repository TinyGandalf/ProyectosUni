program B;
uses Windows;

var
  n, i, negativos : Integer;
  numA, numB : Real;
begin
  negativos := 0;
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

      if (numA < 0) and (numB < 0) then
        Inc(negativos);
      if (negativos > 3) then
        break;
    end;

  if (negativos = 3) then
    begin
      WriteLn('Hay exactamente 3 pares negativos.');
    end
  else
    WriteLn('No hay exactamente 3 pares negativos.');

  ReadLn();  { Consumir CRLF }
  ReadLn();  { Pausar programa }
end.

