program B;
uses Windows;

var
  n, i : Integer;
  numActual, numPrevio : Real;
  creciente : Boolean;
begin
  numPrevio := 0;
  creciente := true;
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
      ReadLn(numActual);

      if (numActual <= numPrevio) and (i <> 1) then
        begin
          creciente := false;
          break;
        end;

      numPrevio := numActual;
    end;

  if not creciente then
    WriteLn('La secuencia NO fue creciente.')
  else
    WriteLn('La secuencia SI fue creciente.');

  ReadLn();
end.

