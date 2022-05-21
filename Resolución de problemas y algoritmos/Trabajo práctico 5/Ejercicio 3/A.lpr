program A;
uses Windows;

var
  n, i, negativos : Integer;
  num : Real;
begin
  negativos := 0;
  SetConsoleOutputCP(CP_UTF8);

  repeat
    Write('Ingrese la cantidad de números en la secuencia: ');
    ReadLn(n);

    if (n < 1) then
      begin
        WriteLn('La cantidad debe ser mayor que cero.');
      end;
  until (n >= 1);

  for i := 1 to n do
    begin
      Write('Ingrese el número #', i, ': ');
      ReadLn(num);

      if (num < 0) then
         Inc(negativos);
      if (negativos > 3) then
        break;
    end;

  if (negativos <> 3) then
    WriteLn('No habían exactamente 3 números negativos.')
  else
    WriteLn('Habían exactamente 3 números negativos.');

  ReadLn();
end.

